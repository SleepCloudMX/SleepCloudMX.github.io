#include <algorithm>
#include <iostream>
#include <fstream>
#include <vector>
#include <cmath>
using namespace std;

int main() {
    int n = 0;
    cout << "若输入容量为 0, 则从 \"input.txt\" 中读取数据" << endl;
    cout << "若输入容量非数, 则退出程序" << endl;
    cout << "请输入样本大小: ";
    while (cin >> n) {
        // 获取样本数据
        vector<double> x(0);
        if (n < 0) {
            cout << "请重新输入样本大小: ";
            continue;
        } else if (n == 0) {
            ifstream infile("input.txt");
            infile >> n;
            if (infile.eof() || n <= 0) {
                cout << "请重新输入样本大小: ";
                continue;
            }
            double a;
            for (int i = 0; i < n; ++i) {
                infile >> a;
                x.push_back(a);
            }
            infile.close();
        } else if (n > 0) {
            double a;
            cout << "请输入 X:" << endl;
            for (int i = 0; i < n; ++i) {
                cin >> a;
                x.push_back(a);
            }
        }

        // 排序
        sort(x.begin(), x.end());
        cout << "排序后: ";
        for(vector<double>::iterator it=x.begin(); it!=x.end(); it++){
            cout << *it << " ";
        }
        cout << endl << endl;

        // 样本均值
        double x_bar = 0;
        for (int i = 0; i < n; ++i) {
            x_bar += x[i];
        }
        x_bar /= n;
        cout << "样本均值\t" << "x_bar = " << x_bar << endl;

        // 样本的离差平方和, 方差, 标准差
        double ss = 0;
        for (int i = 0; i < n; ++i) {
            ss += pow(x[i] - x_bar, 2);
        }
        cout << "样本离差平方和\t" << "ss = " << ss << endl;
        double s2 = ss / (n - 1);
        cout << "样本方差\t" << "s2 = " << s2 << endl;
        double s = sqrt(s2);
        cout << "样本标准差\t" << "s = " << s << endl;

        // 样本偏态系数
        /* double SK = 0;
        for (int i = 0; i < n; ++i) {
            SK += pow(x[i] - x_bar, 3);
        }
        SK /= pow(s, 3) * n;
        cout << "样本偏态系数\t" << "SK = " << SK << endl;
        */

        // 众数
        int maxN = 1;
        int curN = 1;
        double M_0 = x[0];
        for (int i = 1; i < n; ++i) {
            if (x[i] == x[i-1]) {
                ++curN;
            }
            if (x[i] != x[i-1] || i == n-1) {
                maxN = curN > maxN ? curN : maxN;
                M_0 = x[i-1];
            }
        }
        cout << "某一个众数\t" << "M_0 = " << M_0 << endl;

        // 中位数
        double M_e;
        if (n % 2 == 1) {
            M_e = x[(n-1)/2];
        } else {
            M_e = (x[n/2 - 1] + x[n/2]) / 2;
        }
        cout << "中位数\t\t" << "M_e = " << M_e << "\n\n";

        cout << "输入 ak 获取 k 阶原点矩, ";
        cout << "输入 mk 获取 k 阶中心距 (将 k 替换为正整数)." << endl;
        cout << "直接按下回车则开始下一组样本数据的计算." << endl;

        while (cin.get()) {
            cout << "请输入你的选择: ";

            char choice = cin.get();
            if (choice == '\n') {
                cout << "请输入样本大小: ";
                break;
            } else if (choice == 'a') {
                int k = 0;
            cin >> k;
                double ak = 0;
                for (int i = 0; i < n; ++i) {
                    ak += pow(x[i], k);
                }
                ak /= n;
                cout << "样本 " << k << "阶原点矩\t" << "a" << k << " = " << ak << endl;
            } else if (choice == 'm') {
                int k = 0;
                cin >> k;
                double mk = 0;
                for (int i = 0; i < n; ++i) {
                    mk += pow(x[i] - x_bar, k);
                }
                mk /= n;
                cout << "样本 " << k << "阶中心距\t" << "m" << k << " = " << mk << endl;
            }
        }
    }
    return 0;
}
