<h1 align="center">信号与系统 MATLAB 代码</h1>

$$

$$

[TOC]

## 第 1 章  信号变换与运算

### 1.1	常用信号

```matlab
% 几种典型信号
% matlab 相比于 "傻瓜绘图软件",
% 优点: 代码可以复用, 函数种类众多.
% 缺点: 软件启动较慢, 操作相对繁琐.

% 1 指数
% 1.1 指数信号
t = -2 : 0.1 : 10;
ft = 2 * exp(-0.4*t);
plot(t, ft)
title('1.1 指数信号')

% 1.2 单边指数信号
t = -2 : 0.1 : 10;
ft = 2 * exp(-0.4*t) .* heaviside(t);
% 注意是点乘; heaviside(t) 是单位阶跃函数 (也可以当成示性函数使用)
% heaviside(t) 即 (t>0)
plot(t, ft)
title('1.2 单边指数信号')

% 1.3 复指数信号
t = 0 : 0.01 : 3;
z = exp((-1+10j)*t);
% 无定义时, i 和 j 都表示虚数单位, 并且与实数相乘无需写乘号
subplot 221, plot(t, real(z)), title('实部')
subplot 223, plot(t, imag(z)), title('虚部')
subplot 222, plot(t, abs(z)), title('模')
subplot 224, plot(t, angle(z)), title('相角')
% 第一次知道 subplot、plot 和 title 可以写在一行



% 2 正弦
% 2.1 正弦信号
t = 0 : 0.01 : 8;
ft = 1 * sin(2*pi*t + pi/6);
plot(t, ft)
title('2.1 正弦信号')

% 2.2 衰减正弦信号
t = 0 : 0.01 : 8;
ft = exp(-0.5*t) .* sin(2*pi*t + pi/6);
plot(t, ft)
title('2.2 衰减正弦信号')

% 2.3 抽样信号
t = -32 : 0.1 : 32;
ft = sin(t) ./ t;
plot(t, ft)
title('2.3 抽样信号')

% 2.4 辛格函数
t = -10 : 0.1 : 10;
ft = sin(pi*t) ./ (pi*t);
plot(t, ft)
title('2.4 辛格函数')



% 3 钟形信号
t = -5 : 0.1 : 5;
sigma = 1;
ft = exp(-t.^2 / (2*sigma^2)) / (sqrt(2*pi) * sigma);
plot(t, ft)
title('3 钟形信号')



% 4 奇异信号
% 4.1 单位斜边信号
t = -1 : 0.1 : 5;
ft = t .* heaviside(t);
plot(t, ft)
title('4.1 单位斜变信号')

% 4.2 单位阶跃信号
t = -1 : 0.001 : 3;  % 间隔小了, 精度会低
ft = heaviside(t);
plot(t, ft)
axis([-1, 3, -0.1, 1.2])
title('4.2 单位阶跃信号')

% 4.3 单位冲激信号
t1 = -1; t2 = 5;    % 信号起止时刻
t0 = 0;             % 信号平移量
dt = 0.01;          % 信号间隔时间
t = -1 : dt : 5;
x = zeros(1, length(t));
x(1, (-t0 - t1)/dt + 1) = 1 / dt;
stairs(t, x);
axis([t1, t2, 0, 1.2/dt])
title('4.3 单位冲激信号')

% 4.4 矩形脉冲信号
t = 0 : 0.001 : 4;
T = 1;
ft = rectpuls(t-2*T, 2*T);
% 其中 t-2*T 表示中心位置在 2*T
% 第二个参数表示矩形的宽度
plot(t, ft);
grid on
axis([0, 4, -0.5, 1.5])

% 4.5 周期性三角波脉冲信号
t = -5*pi : pi/10 : 5*pi;
ft = sawtooth(t, 0.3);
% 直译锯齿; 周期为 2*pi.
% 第二个参数 r 属于 [0, 1], 表示在 r * 2pi 处取得最大值.
plot(t, ft)
axis([-16, 16, -1.5, 1.5])
grid on
```



### 1.2	信号变换

```matlab
% 信号的运算
% 时移、反褶、尺度变换，可通过 y = subs(f, t, a*t - t_0) 实现
% 不建议使用 ezplot, 可替换为 fplot
% 如果不能使用 sym(), 可以直接输入引号内的符号表达式
syms t;
f1 = (4-t) * (heaviside(t) - heaviside(t-4));
f2 = sin(2*pi*t);
f3 = subs(f1, t, -t) + f1;
f4 = -f3;
f5 = f2 * f3;
f6 = f1 * f2;
subplot 321, fplot(f1), title('f1(t)')
subplot 322, fplot(f2), title('f2(t)')
subplot 323, fplot(f3), title('f1(-t) + f1(t)')
subplot 324, fplot(f4), title('-f1(-t) - f1(t)')
subplot 325, fplot(f5), title('f2(t) * f3(t)')
subplot 326, fplot(f6), title('f1(t) * f2(t)')
```



### 1.3	信号分解

```matlab
% 连续信号的分解
% 1 分解为直流分量和交流分量
% 符号函数不便于求均值
t = -2*pi : 0.01 : 2*pi;
ft = 1 + sin(t);
fd = mean(ft) * ones(1, length(t));
fa = ft - fd;
subplot 221, plot(t, ft), title('f(t)')
subplot 223, plot(t, fd), title('fd(t)')
subplot 224, plot(t, fa), title('fa(t)')
sgtitle('分解为直流分量和交流分量')

% 2 分解为奇分量和偶分量
syms t
ft = real((1 - (t - 1).^2) .^ 0.5);
fodd = real((ft - subs(ft, t, -t)) / 2);
feven = real((ft + subs(ft, t, -t)) / 2);
% 上述 real() 是必要的
subplot 221, fplot(ft), title('f(t)')
axis equal
axis([-2, 2, -1, 2])
subplot 223, fplot(fodd), title('fodd(t)')
axis equal
axis([-2, 2, -1, 2])
subplot 224, fplot(feven), title('feven(t)')
axis equal
axis([-2, 2, -1, 2])
% 受不了, 每次都要重新设置, 这么写代码太笨了
sgtitle('分解为奇分量和偶分量')

% 3 分解为脉冲分量
% 3.1 冲激信号
% 3.2 阶跃信号
% 这两个其实是把信号用积分的形式写了出来, 图像上没有差异

% 4 分解为实分量与虚分量
% 见 c1_signal.m 中的复指数信号部分, 那里已经画过了

% 5 分解为正交函数分量
% 由于会分解出无穷多个正交函数, 不方便全部展示, 也不画了
```



## 第 2 章  连续时域分析

### 2.1	系统响应

```matlab
% 连续时间系统的响应
% 以 2 y''(t) + y'(t) + 8 y(t) = f(t) 为例,
% 其中 f(t) 为冲激信号或阶跃信号.
% 只有单个元素的矩阵不建议使用方括号.
subplot 131, impulse(1, [2 1 8]), title('单位冲激信号')
subplot 132, step(1, [2 1 8]), title('单位阶跃信号')

% 对于 y''(t) + 2 y'(t) + y(t) = f'(t) + 2 f(t),
% 其中 f(t) = 5 e^(-2 t) u(t), 可以使用如下函数
t = 0 : 0.01 : 5;
f = 5 * exp(-2*t);
subplot 133, lsim([1 2], [1 2 1], f, t), title('一般信号')
```



### 2.2	函数卷积

同目录下 `sconv.m` 的内容:

```matlab
function [f, k] = sconv(f1, f2, k1, k2, p, isplot)
% 计算连续信号的卷积积分 f(t) = f1(t) * f2(t)
% k1 和 k2 分别是 f1 和 f2 的取样时刻
% p 为取样时间间隔
% plot 表示是否绘图
f = conv(f1, f2);
k0 = k1(1) + k2(1);
klen = length(k1) + length(k2) - 2;
k = k0 : p : (k0 + klen*p);

if nargin == 6 && isplot ~= 0
    subplot 221, plot(k1, f1), title('f1(t)')
    subplot 222, plot(k2, f2), title('f2(t)')
    subplot 223, plot(k, f), title('f(t) = f1(t) * f2(t)')
    h = get(gca, 'position');
    h(3) = 2.32 * h(3);
    set(gca, 'position', h)
end
```

具体的实例:

```matlab
% 连续时间信号的卷积积分
% 离散的可直接使用 conv(u, v)
% 连续的可取样后使用上述函数

% 例 2.16: t * I_{0 <= t <= 2} 与自身卷积
% 这里使用自己编写的 sconv 实现
p = 0.005;
k1 = 0 : p : 2;
f1 = 0.5 * k1;
[f, k] = sconv(f1, f1, k1, k1, p, true);

% 例 2.17
% 道理是一样的, 这里就不写了; 不过用 mathematica 写了.

% 例 2.18: I_{-1 <= t <= 1} 和 I_{0 <= t <= 1} 的卷积
% 这里不用 sconv, 而只使用其中部分代码
T = 0.01;   % 采样周期
n1 = -100 : 100;
f1 = ones(1, length(n1));
n2 = 0 : 100;
f2 = ones(1, length(n2));
y = T * conv(f1, f2);
n3 = n1(1) + n2(1) : n1(end) + n2(end);
plot(n3*T, y);
grid on;
xlabel('t/s');
ylabel('y(t)');
```



## 第 3 章  连续频域分析

### 3.1  周期信号的频谱

```matlab
% 3.1 周期信号的频谱

% 例 3.13: 周期矩形脉冲信号的双边频谱
syms t n        % T, A 和 tau 不需要用 syms 声明, 因为下面直接赋值了
T = 4; A = 1; tau = 1;

f = A * exp(-1j * 2*n*pi/T * t);    % 计算傅里叶级数时乘的函数
fn = int(f, t, -tau/2, tau/2) / T;  % 指数形式的傅里叶系数
% fn = simple(fn);                  % 书中说是用于化简
% 但是这个函数用不了, 甚至在官网都搜不到这个函数...不过也不需要用

n = [-20:-1, eps, 1:20];
evalfn = subs(fn, 'n', n);  % 书中参数写反了...

subplot 211, stem(n, evalfn, 'filled'), title('周期矩形脉冲的频谱');
subplot 212, stem(n, abs(evalfn), 'filled'), title('幅度谱');



% 例 3.14: 周期三角波信号的双边频谱
N = 10;
n1 = -N : -1;   % 小于 0 时的系数记为 c1
c1 = -4j * sin(n1*pi/2) / pi^2 ./ n1.^2;
c0 = 0;         % 等于 0 时的系数为 0
n2 = 1 : N;     % 大于 0 时的系数记为 c2
c2 = -4j * sin(n2*pi/2) / pi^2 ./ n2.^2;

cn = [c1, c0, c2];  % 傅里叶余弦级数系数
n = -N : N;
subplot 211, stem(n, abs(cn));
xlabel('\omega/\omega_0'); ylabel('C_n 的幅度');
subplot 212, stem(n, angle(cn));
xlabel('\omega/\omega_0'); ylabel('C_n 的相位');

```



### 3.2  非周期信号的频谱

```matlab
% 3.2 非周期信号的频谱

% 例 3.15: 单边指数信号的频谱 (符号计算)
syms t
f = exp(-2*t) * heaviside(t);
F = fourier(f);
subplot 211, fplot(abs(F)), grid on, title('幅频特性图')
subplot 212, fplot(angle(F)), grid on, title('相频特性图')

% 例 3.16: 门信号的频谱图 (数值计算)
R = 0.02;           % 采样间隔
t = -2 : R : 2;     % 采样时间点
N = 500;            % 样本容量
w = (0 : N)/N * (10*pi);    % 非负抽样点
W = [-fliplr(w), w(2:N+1)]; % 全部抽样点

f = heaviside(t+1) - heaviside(t-1);    % 门函数
F = f * exp(-1j*t'*w) * R;  % 非负抽样点
F = [fliplr(F), F(2:N+1)];  % 全部抽样点

subplot 211, plot(t, f, 'r');
xlabel('t'), ylabel('f(t)'), title('门函数 f(t)');
subplot 212, plot(W, real(F), 'b'); % 虽然 F 是实数, 但还是建议加上 real();
xlabel('w'), ylabel('F(w)'), title('傅里叶变换 F(w)');

```



### 3.3  傅里叶变换的性质



### 3.4  信号的采样过程

```matlab
% 3.4 信号的采样过程
% 例 3.19: 三角波的采样过程
syms t w f
f = (1 - 2*abs(t)) * exp(-1j * w * t);  % 被积函数
F = int(f, t, -1/2, 1/2);   % 指数形式的傅里叶系数

% 注意 fplot 第二个参数是二维向量, 而非采样点
subplot 311, fplot(abs(F), [-26*pi, 26*pi]), title('三角波的频谱');
axis([-26*pi, 26*pi, -0.1, 0.5]);
subplot 312, fplot(abs(F), [-4*pi, 4*pi]), title('低通滤波后的频谱');
axis([-26*pi, 26*pi, -0.1, 0.5]);

subplot 313, title('采样后的频谱'), hold on;
Ts = 0.2;       % 采样信号的周期
w0 = 2*pi / Ts; % 频谱的周期延拓
for k = -2 : 2
    ft = f * exp(-1j*w0*k*t);
    FT = int(ft, t, -1/2, 1/2);
    fplot(abs(FT)/Ts, [-4*pi-k*w0, 4*pi-k*w0]);
end

```



### 3.5  系统的频率特性

```matlab
% 3.5 系统的频率特性

% 例 3.20: 低通滤波器的频率响应
b = [0, 0, 1];
a = [0.08, 0.4, 1];
[h, w] = freqs(b, a, 100);
% 第三个参数为频率向量的频率点数 (默认为 200)
h1 = abs(h);
h2 = angle(h);
subplot 211, plot(w, h1), grid on;
xlabel('角频率 \omega'), ylabel('幅度'), title('幅频特性');
subplot 212, plot(w, h2*180/pi), grid on;
xlabel('角频率 \omega'), ylabel('相位 / 度'), title('相频特性');

% 例 3.21: 某连续 LTI 系统的微分方程
w = -2*pi : 0.1 : 2*pi;
b = [10, 5];
a = [1, 10, 8, 5];
H = freqs(b, a, w);
subplot 211, plot(w, abs(H)), title('幅频特性'), grid on;
xlabel('\omega(rad/s)'), ylabel('|H(j\omega)|');
subplot 212, plot(w, angle(H)), title('相频特性'), grid on;
xlabel('\omega(rad/s)'), ylabel('\phi(\omega)');

```



## 第 4 章  连续复频域分析

### 4.0  复频域常用函数

| 函数    | 功能               | 函数     | 功能                 |
| ------- | ------------------ | -------- | -------------------- |
| laplace | 拉氏变换           | ilaplace | 拉氏逆变换           |
| residue | 部分分式展开法     | zero     | 计算系统的零点       |
| pole    | 计算系统的极点     | pzmap    | 绘制零极点图         |
| zp2tf   | 零极点 -> 系统函数 | tf2zp    | 系统函数 -> 零、极点 |
| freqs   | 计算频率响应特性   | pause    | 暂停运行             |



### 4.1  拉普拉斯变换

```matlab
% 4.1 拉普拉斯变换
% 例 4.27：两个信号的拉普拉斯变换
syms t w
% (1)
f1 = exp(-t) * cos(w*t);
F1 = laplace(f1);
% (2)
f2 = 3 * exp(-2*t);
F2 = laplace(f2);



% 例 4.28：绘制拉普拉斯变换的图形
syms t s
f = sin(t) * heaviside(t);
F = laplace(f);
% 得出 F = 1 / (s^2 + 1）

% 以下绘图代码可单独运行
% 绘制方法一：符号数学方法绘图
syms s x y
s = x + 1i*y;       % 虚数单位建议写为 1i 而非 i
Fs = 1 / (s^2+1);   % 注意这里要重新赋值为复变函数，因为要令 s = x + 1i * y
subplot 121, fmesh(abs(Fs));      % 网格曲面图；不建议使用 ezmesh()
subplot 122, fsurf(abs(Fs));      % 三维曲面图；不建议使用 ezsurf()
colormap(hsv);      % 设置图形中多条曲线的颜色顺序

% 绘制方法二：数值方法绘图
figure(2)
x1 = -5 : 0.1 : 5;
y1 = -5 : 0.1 : 5;
[x, y] = meshgrid(x1, y1);  % 产生网格矩阵 x, y
s = x + 1i*y;
Fs = 1 ./ (s.*s + 1);
subplot 121, mesh(x, y, abs(Fs));
subplot 122, surf(x, y, abs(Fs));
axis([-5, 5, -5, 5, 0, 8]);
colormap(hsv);

```



### 4.2  与傅氏变换关系

```matlab
% 4.2 傅氏变换与拉氏变换的关系
% 例 4.29 法一：符号绘图
clf;    % clear figure
syms x y s
s = x + 1i*y;
Fs = 1 ./ ((s+1)^2 + 1);

subplot 231, fmesh(abs(Fs));
view(-60, 20);  % 调整观察视角
axis([0, 5, -20, 20, 0, 0.5]);
title('拉氏变换网格图')

subplot 232, fsurf(abs(Fs));
view(-60, 20);  % 调整观察视角
axis([0, 5, -20, 20, 0, 0.5]);
title('拉氏变换曲面图')
colormap(hsv);

syms w
Fw = 1 ./ ((1i*w + 1)^2 + 1);
subplot 233, fplot(abs(Fw), [-20, 20]);
xlabel('频率 w')
title('傅氏变换幅频曲线')



% 例 4.29 法二：数值绘图
x1 = 0 : 0.1 : 5;
y1 = -20 : 0.1 : 20;
[x, y] = meshgrid(x1, y1);
s = x + 1i*y;
Fs = 1 ./ ((s+1).^2 + 1);

subplot 234, mesh(x, y, abs(Fs));
view(-60, 20);  % 调整观察视角
axis([0, 5, -20, 20, 0, 0.5]);
title('拉氏变换网格图')

subplot 235, surf(x, y, abs(Fs));
view(-60, 20);  % 调整观察视角
axis([0, 5, -20, 20, 0, 0.5]);
title('拉氏变换曲面图')
colormap(hsv);

w = -20 : 0.1 : 20;
Fw = 1 ./ ((1i*w + 1).^2 + 1);
subplot 236, plot(w, abs(Fw));
xlabel('频率 w')
title('傅氏变换幅频曲线')

```



### 4.3  拉普拉斯逆变换

```matlab
% 4.3 拉普拉斯逆变换
% 例 4.30：利用部分分式法进行拉普拉斯逆变换
a = conv([1, 0], [1, 1]);   % 分母的多项式系数
b = conv([1, 1], [1, 1]);   % 分子的多项式系数
den = conv(a, b);
[r, p] = residue([1, -2], den);

% 例 4.31：利用内置函数直接求拉普拉斯逆变换
syms s
% (1)
F1 = (2*s + 1) / (s^2 + 7*s + 10);
f1 = ilaplace(F1);
% (2)
F2 = s^2 / (s^2 + 3*s + 2);
f2 = ilaplace(F2);

```



### 4.4  系统函数零极点图

```matlab
% 4.4 系统函数的零、极点图
% 例 4.32：绘制零、极点图
b = [1, -1];
a = [1, 2, 2];
zs = roots(b);  % zeros
ps = roots(a);  % poles
plot(real(zs), imag(zs), 'o'); hold on;
plot(real(ps), imag(ps), 'rx', 'markersize', 12);
axis([-2, 2, -2, 2]); grid on;
legend('零点', '极点')

% 第五次翻转课堂练习题 2.6
z_real = [0, 1, 1];
z_imag = [0, -1, 1];
p_real = [-1, -1, 0, 0];
p_imag = [0, 0, -2, 2];
plot(z_real, z_imag, 'o'); hold on;
plot(p_real, p_imag, 'rx', 'markersize', 12);
axis([-3, 3, -3, 3]);
grid on;
legend('零点', '极点')

% 零极点的另一种画法：
H = tf([2 5 1], [1 3 5]);
pzmap(H)
grid on

pzmap(sys(:,:,1),'r',sys(:,:,2),'g',sys(:,:,3),'b')
sgrid

sys = tf([4.2,0.25,-0.004],[1,9.6,17]);
[p,z] = pzmap(sys);
plot(real(z), imag(z), 'o'); hold on;
plot(real(p), imag(p), 'rx', 'markersize', 12);

```



### 4.5  系统的复频域分析

```matlab
% 4.5 复频域分析
% 例 4.33：冲激响应的时域波形
% 备注：与微分算子、傅里叶变换那里的冲激响应使用函数相同
a = [1, 1, 16.25];
b = 1;  % 等价于 [1]
impulse(b, a, 5);
title('Impulse Response');
xlabel('Time');
ylabel('Amplitude');



% 例 4.34：零输入响应、零状态响应、全响应
% 首先对微分方程两端使用拉普拉斯变换，代入初值条件后化简，
syms t s
Yzi  = (3*s + 13) / (s^2 + 3*s + 2);    % 复频域 - 零输入响应
yzi = ilaplace(Yzi);                    % 时域 - 零输入响应

ft = 4 * exp(-2*t) * heaviside(t);      % 时域 - 激励信号
Fs = laplace(ft);                       % 复频域 - 激励信号

Yzs = Fs / (s^2 + 3*s + 2);             % 复频域 - 零状态响应
yzs = ilaplace(Yzs);                    % 时域 - 零状态响应

yt = simplify(yzi + yzs);               % 时域 - 全响应



% 例 4.35：给定电路，用拉普拉斯变换求电流响应
sys = tf(1, [0.1, 0.1]);    % 系统函数 H(s)
t = [0 : 0.01 : 10]';       % 抽样时间
e = sin(3*t);               % 激励信号
i = lsim(sys, e, t);        % 仿真电流信号
plot(t, e, '-.', t, i);     % 绘制激励和电流
xlabel('Time (sec)');
axis([0, 10, -4, 6]);
legend('e(t)', 'i(t)');

```



### 4.6  系统的频率响应图

```matlab
% 4.6 频率响应
% 例 4.36：系统函数的幅频特性和相频特性
b = 1;                  % 分子系数
a = [1, 0.4, 0.08];     % 分母系数
w = linspace(-pi, pi);  % 书中的 2*pi<512 疑似打错
h = freqs(b, a, w);         % 频率响应
subplot 211, plot(w, abs(h));    % 幅频特性曲线
subplot 212, plot(w, angle(h));  % 相频特性曲线

% 例 4.37：根据零极点分布画出幅频特性曲线
data = struct(...
    'title', {'(a)', '(b)', '(c)', '(d)'}, ...                  % 四个系统
    'zeros', {[], [0; 0], [-0.5], [1.2j; -1.2j]}, ...           % 零点坐标
    'poles', {[-2; -1], [-2, -1], [-2; -1], [-1+1j; -1-1j]}...  % 极点坐标
);  % 为绘图方便起见，使用结构体
omega = [0 : 0.01 : 6];     % 频率抽样点

for id = 1 : 4
    [b, a] = zp2tf(data(id).zeros, data(id).poles, 1);  % 零极点 -> 系统函数
    H = freqs(b, a, omega);                             % 指定频率点的响应
    subplot(2, 2, id), plot(omega, abs(H)), axis tight; % 绘制幅频特性曲线
    set(gca, 'YScale', 'log', 'FontSize', 16);          % 设置纵轴对数刻度
    title(data(id).title), xlabel('\omega'), ylabel('H(\omega)');
end

```







第 5 章  离散时域分析

5.1  离散时间信号的图像

5.2  离散时间信号的运算

5.3  系统的单位样值响应

5.4  离散时间序列的卷积

5.5  离散时间系统的响应























