#include <iostream>
#include <cmath>
using namespace std;

int main() {
    // 模型的所有参数
    int Nstate = 2;     // 状态 0 和 1 分别对应 Rainy 和 Sunny;
    int Nsignal = 3;    // 信号 0, 1, 2 分别对应 Walk, Shop 和 Clean;
    float Pstate0[Nstate] = {0.6, 0.4};  // 初始分布向量
    float Pstate[Nstate][Nstate] = {{0.7, 0.3}, {0.4, 0.6}};  // 状态转移概率
    float Psignal[Nstate][Nsignal] = {{0.1, 0.4, 0.5}, {0.6, 0.3, 0.1}};   // 信号发送概率

    // 问题 1 的所有数据
    int Nseq = 3;       // 信号序列的长度
    int S[Nseq] = {0, 1, 2};    // 信号序列: Walk、Shop、Clean

    // 算法 1.1: 遍历算法
    float Pwsc = 0;     // Walk、Shop、Clean 的概率
    int po2[Nseq];   // 预先存储 2 的幂次 (powers of 2), 以备后用
    for (int i = 0; i < Nseq; ++i) {
        po2[i] = pow(2, i);
    }
    int Ncases = pow(2, Nseq);  // 可能的状态序列个数
    // i 用于枚举天气, 如二进制 000 表示三天均为 Rainy (从右向左)
    for (int i = 0; i < Ncases; ++i) {
        // 一个状态序列的概率记为 temp, 先算第一日的概率
        float temp = Pstate0[i%2] * Psignal[i%2][S[0]];
        // 接下来遍历每一天 j
        for (int j = 1; j < Nseq; ++j) {
            temp *= Pstate[i/po2[j-1]%2][i/po2[j]%2];
            temp *= Psignal[i/po2[j]%2][S[j]];
        }
        Pwsc += temp;
    }
    cout << "1.1 遍历算法, 概率为 Pwsc = " << Pwsc << endl;

    // 算法 1.2: 向前递推
    Pwsc = 0;   // 重置算法 1.1 的结果
    float F[Nseq][Nstate];
    // 先算 F[0], 即第一天的所有 F_1(j)
    for (int j = 0; j < Nstate; ++j) {
        F[0][j] = Pstate0[j] * Psignal[j][S[0]];
    }
    // 之后计算 F[n][j]
    for (int n = 1; n < Nseq; ++n) {
        for (int j = 0; j < Nstate; ++j) {
            F[n][j] = 0;
            for (int i = 0; i < Nstate; ++i) {
                F[n][j] += F[n-1][i] * Pstate[i][j];
            }
            F[n][j] *= Psignal[j][S[n]];
        }
    }
    // 最后计算信号序列的概率
    for (int i = 0; i < Nstate; ++i) {
        Pwsc += F[Nseq-1][i];
    }
    cout << "1.2 向前递推, 概率为 Pwsc = " << Pwsc << endl;

    // 算法 1.3: 向后递推
    Pwsc = 0;
    float B[Nseq-1][Nstate];    // B_k(i) 不包括 S_k, 故只有 Nseq-1;
    for (int i = 0; i < Nstate; ++i) {
        B[Nseq-2][i] = 0;
        for (int j = 0; j < Nstate; ++j) {
            B[Nseq-2][i] += Pstate[i][j] * Psignal[j][S[Nseq-1]];
        } // 注意代码中均从 0 开始;
    }
    // 递推计算所有的天数 (注意从 Nseq - 3 开始)
    for (int k = Nseq - 3; k >= 0; --k) {
        for (int i = 0; i < Nstate; ++i) {
            B[k][i] = 0;
            for (int j = 0; j < Nstate; ++j) {
                B[k][i] += Pstate[i][j] * Psignal[j][S[k+1]] * B[k+1][j];
            }
        }
    }
    // 最后计算信号序列的概率
    for (int i = 0; i < Nstate; ++i) {
        Pwsc += Pstate0[i] * Psignal[i][S[0]] * B[0][i];
    }
    cout << "1.3 向后递推, 概率为 Pwsc = " << Pwsc << endl;

    // 算法 1.4: 前后递推
    // 向前递推相当于 k = 2;
    // 向后递推相当于 k = 0;
    // 这里以 k = 1 为例;
    Pwsc = 0;
    for (int i = 0; i < Nstate; ++i) {
        Pwsc += F[1][i] * B[1][i];
    }
    cout << "1.4 前后递推, 概率为 Pwsc = " << Pwsc << endl;



    // 问题 2
    // 信号序列不变, 仍然为 S[Nseq];

    // 算法 2.2.1: 遍历算法
    // 由算法 1.1, 已得到 po2 和 Ncases;
    int Xlikely = 0;    // 最可能的状态, 用二进制表示
    float Plikely = 0;  // 最可能状态的概率
    for (int i = 0; i < Ncases; ++i) {
        float temp = Pstate0[i%2] * Psignal[i%2][S[0]];
        // 接下来遍历每一天 j
        for (int j = 1; j < Nseq; ++j) {
            temp *= Pstate[i/po2[j-1]%2][i/po2[j]%2];
            temp *= Psignal[i/po2[j]%2][S[j]];
        }
        if (temp > Plikely) {
            Xlikely = i;
            Plikely = temp;
        }
    }
    cout << "2.2.1 遍历算法, 状态为: ";
    for (int i = 0; i < Nseq; ++i) {
        cout << Xlikely/po2[i]%2 << ' ';
    }
    cout << endl;

    // 算法 2.2.2: Viterbi 算法
    float V[Nseq][Nstate];
    // 先算 k = 0 的情况
    for (int j = 0; j < Nstate; ++j) {
        V[0][j] = Pstate0[j] * Psignal[j][S[0]];
    }
    // 再递推得到 0 < k < Nseq 的情况
    for (int k = 1; k < Nseq; ++k) {
        for (int j = 0; j < Nstate; ++j) {
            V[k][j] = 0;
            for (int i = 0; i < Nstate; ++i) {
                if (V[k][j] < Pstate[i][j] * V[k-1][i]) {
                    V[k][j] = Pstate[i][j] * V[k-1][i];
                }
            }
            V[k][j] *= Psignal[j][S[k]];
        }
    }
    // 最后求得最可能状态序列;
    int SV[Nseq];   // 由于是 Viterbi 算法求得的, 这里记为 SV;
    // 先求 SV[Nseq-1];
    SV[Nseq-1] = 0;
    float Vmax = V[Nseq-1][0];
    for (int j = 1; j < Nstate; ++j) {
        if (Vmax < V[Nseq-1][j]) {
            SV[Nseq-1] = j;
            Vmax = V[Nseq-1][j];
        }
    }
    // 再求剩余的 SV
    for (int k = Nseq - 2; k >= 0; --k) {
        SV[k] = 0;
        Vmax = Pstate[0][SV[k+1]] * V[k][0];
        for (int i = 0; i < Nstate; ++i) {
            if (Vmax < Pstate[i][SV[k+1]] * V[k][i]) {
                SV[k] = i;
                Vmax = Pstate[i][SV[k+1]] * V[k][i];
            }
        }
    }
    cout << "2.2.2 Viterbi 算法, 状态为: ";
    for (int i = 0; i  < Nseq; ++i) {
        cout << SV[i] << ' ';
    }
    cout << endl;
    return 0;
}
