<h1 align="center">信号与系统 MATLAB 代码</h1>

$$

$$

[TOC]

## 第一章

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

