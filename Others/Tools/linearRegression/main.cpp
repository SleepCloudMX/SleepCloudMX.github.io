#include <algorithm>
#include <iostream>
#include <fstream>
#include <vector>
#include <cmath>
using namespace std;

int main()
{
    int n = 0;
    cout << "若输入容量为 0, 则从 \"input.txt\" 中读取数据" << endl;
    cout << "若输入容量非数, 则退出程序" << endl;
    cout << "请输入样本大小: ";
    while (cin >> n) {
        vector<double> x(0), y(0);
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
            for (int i = 0; i < n; ++i) {
                infile >> a;
                y.push_back(a);
            }
            infile.close();
        } else if (n > 0) {
            double a;
            cout << "请输入 X:" << endl;
            for (int i = 0; i < n; ++i) {
                cin >> a;
                x.push_back(a);
            }
            cout << "请输入 Y:" << endl;
            for (int i = 0; i < n; ++i) {
                cin >> a;
                y.push_back(a);
            }
        }
        cout << endl;

        double x_bar = 0, y_bar = 0;
        for (int i = 0; i < n; ++i) {
            x_bar += x[i];
            y_bar += y[i];
        }
        x_bar /= n;
        y_bar /= n;
        cout << "x_bar = " << x_bar << endl;
        cout << "y_bar = " << y_bar << endl;

        double S_yy = 0, S_xy = 0, S_xx = 0;
        for (int i = 0; i < n; ++i) {
            S_yy += (y[i] - y_bar) * (y[i] - y_bar);
            S_xy += (x[i] - x_bar) * (y[i] - y_bar);
            S_xx += (x[i] - x_bar) * (x[i] - x_bar);
        }
        cout << "S_yy = " << S_yy << endl;
        cout << "S_xy = " << S_xy << endl;
        cout << "S_xx = " << S_xx << endl;

        double b1_hat = S_xy / S_xx;
        double b0_hat = y_bar - b1_hat * x_bar;
        cout << "b1_hat = " << b1_hat << endl;
        cout << "b0_hat = " << b0_hat << endl;

        vector<double> y_hat(n);
        cout << "\n\tx\t" << "y\t" << "y_hat" << endl;
        for (int i = 0; i < n; ++i) {
            y_hat[i] = b0_hat + b1_hat * x[i];
            cout << "\t" << x[i] << "\t" << y[i] << "\t" << y_hat[i] << endl;
        }
        cout << endl;

        double Q_e = S_yy - b1_hat * S_xy;
        double sigma2_hat = Q_e / (n - 2);
        cout << "Q_e = " << Q_e << endl;
        cout << "sigma^2_hat = " << sigma2_hat << endl;

        cout << "SS_总 = " << S_yy << endl;
        cout << "SS_回 = " << b1_hat * S_xy << endl;
        cout << "SS_误 = " << Q_e << endl;

        double U_t = b1_hat * sqrt(S_xx) / sqrt(sigma2_hat);
        double U_F = U_t * U_t;
        double U_R = S_xy / sqrt(S_xx * S_yy); // 无绝对值
        cout << "b1 = 0 时的检验:" << endl;
        cout << "t 统计量: " << U_t << endl;
        cout << "F 统计量: " << U_F << endl;
        cout << "R 统计量: " << U_R << endl;
    }
    return 0;
}
