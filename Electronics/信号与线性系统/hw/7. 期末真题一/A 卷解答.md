<h1 align="center">2020-A 卷解答</h1>

$$
% 设置
\newcommand{\aneg}[1]{\hspace{-0.75em}&#1&\hspace{-0.75em}}
\newcommand{\aneq}{\aneg{=}}
% 上述指令用于在使用 array 环境时调整等号左右间距
\newcommand{\noeq}{&\hspace{1.3em}}
% 上述指令用于 align 环境中, 类似与 &= 但不显示等号.
\renewcommand{\d}{\displaystyle}

% 字符
\renewcommand{\i}{\mathrm{i}}
\renewcommand{\j}{\mathrm{j}}
\renewcommand{\k}{\mathrm{k}}
\newcommand{\e}{\textup{e}}
\newcommand{\ve}{\varepsilon}
\newcommand{\Beta}{\mathrm{B}}
\newcommand{\omicron}{\mathit{o}}
\newcommand{\Omicron}{\mathrm{O}}

% 简写与重定义
\newcommand{\bm}[1]{\boldsymbol{#1}}
\renewcommand{\cal}[1]{\mathcal{#1}}
\renewcommand{\scr}[1]{\mathscr{#1}}
\renewcommand{\frak}[1]{\mathfrak{#1}}
\renewcommand{\rm}[1]{\mathrm{#1}}
\newcommand{\bb}[1]{\mathbb{#1}}

% 数集
\newcommand{\D}{\mathbb{D}}
\newcommand{\E}{\mathbb{E}}
\newcommand{\F}{\mathbb{F}}
\newcommand{\J}{\mathbb{J}}
\newcommand{\K}{\mathbb{K}}
\renewcommand{\L}{\mathbb{L}}

% 上下标
\newcommand{\trans}{^\mathrm{T}}
\newcommand{\inv}{^{-1}}
\newcommand{\madj}[1]{^{\pqty{#1^*}}}	% m 重伴随矩阵
\newcommand{\adj}{^*}
\newcommand{\vector}[1]{\overrightarrow{#1}}
\newcommand{\wavy}[1]{\overset\sim#1}	% \tilde 或 \widetilde 不明显, 容易与 \bar 或 \overline 混淆

% 序列
\newcommand{\ccdots}{\cdot\cdots\cdot}
\newcommand{\oneton}{1,2,\cdots,n}
\newcommand{\oneto}[1]{1,2,\cdots,#1}

\newcommand{\ssto}[3]{#1_1 #3 #1_2 #3 \cdots #3 #1_{#2}}
\newcommand{\ssup}[3]{#1^1 #3 #1^2 #3 \cdots #3 #1^{#2}}
\newcommand{\soneto}[2]{\ssto{#1}{#2}{,}}
\newcommand{\splus}[2]{\ssto{#1}{#2}{+}}

% 括号
\newcommand{\aqty}[1]{\expval{#1}}
\newcommand{\pbqty}[1]{\left(#1\right]}
\newcommand{\bpqty}[1]{\left[#1\right)}
\newcommand{\floor}[1]{\left\lfloor#1\right\rfloor}
\newcommand{\ceil}[1]{\left\lceil#1\right\rceil}

% 矩阵宏简写
\newcommand{\bmatrix}[1]{\begin{bmatrix}#1\end{bmatrix}}
\newcommand{\Bmatrix}[1]{\begin{Bmatrix}#1\end{Bmatrix}}
\newcommand{\vmatrix}[1]{\begin{vmatrix}#1\end{vmatrix}}
\newcommand{\Vmatrix}[1]{\begin{Vmatrix}#1\end{Vmatrix}}

% 常用微分
\newcommand{\dx}{\dd{x}}
\newcommand{\dy}{\dd{y}}
\newcommand{\dz}{\dd{z}}
\newcommand{\dt}{\dd{t}}
\newcommand{\ds}{\dd{s}}
\newcommand{\dr}{\dd{r}}

% 一般的微分
% 如果只使用 \dd{x}\dd{y} 的话, 中间会有多余的间隔.
\newcommand{\df}{\dd}
\newcommand{\ddf}[2]{\,\mathrm{d}#1\mathrm{d}#2}	% 微分形式 differential form
\newcommand{\dddf}[3]{\,\mathrm{d}#1\mathrm{d}#2\mathrm{d}#3}

% 高阶微分
\newcommand{\dxdy}{\ddf{x}{y}}
\newcommand{\dydz}{\ddf{y}{z}}
\newcommand{\dzdx}{\ddf{z}{x}}
\newcommand{\dudv}{\ddf{u}{v}}
\newcommand{\drdt}{\ddf{r}{\theta}}
\newcommand{\dxdydz}{\dddf{x}{y}{z}}

% 矩阵的宏指令
\newcommand{\pmcmn}[3]{\begin{pmatrix}
	#1_{11} & #1_{12} & \cdots & #1_{1#3} \\
	#1_{21} & #1_{22} & \cdots & #1_{n#3} \\
	\vdots & \vdots && \vdots \\
	#1_{#2 1} & #1_{#2 2} & \cdots & #2_{n#3} \\
\end{pmatrix}}

\newcommand{\pmc}[1]{\pmcmn{#1}{n}{n}}
\newcommand{\pvcn}[2]{\begin{pmatrix}
	#1_1 \\ #1_2 \\ \vdots \\ #1_{#2}
\end{pmatrix}}

\newcommand{\pvc}[1]{\pvcn{#1}{n}}
\newcommand{\pto}{\overset{P}{\to}}

% 函数名
\renewcommand{\char}{\operatorname{char}}	% 由于已存在此命令, 不可使用 DeclareMathOperator
\renewcommand{\r}{\operatorname{r}}
\DeclareMathOperator{\st}{s.t.\,}	% 虽然不是函数名, 但用了这个指令就放这儿了.
\DeclareMathOperator{\diag}{diag}	% 不需要定义太多, 一个文件里用到什么定义什么,
\DeclareMathOperator{\Ker}{Ker}		% 毕竟特殊的函数名太多太多了.
\DeclareMathOperator{\Aut}{Aut}		% 便捷与效率的权衡.
\DeclareMathOperator{\Inn}{Inn}
\DeclareMathOperator{\GL}{GL}
\DeclareMathOperator{\SL}{SL}
\DeclareMathOperator{\stab}{stab}
\DeclareMathOperator{\orb}{orb}
\DeclareMathOperator{\lcm}{lcm}
\DeclareMathOperator{\Var}{Var}
\DeclareMathOperator{\Cov}{Cov}
\DeclareMathOperator{\Corr}{Corr}
\DeclareMathOperator{\rot}{rot}
\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator{\Outer}{Outer}
\DeclareMathOperator{\Even}{Even}
\DeclareMathOperator{\Scalar}{Scalar}
\DeclareMathOperator{\Vector}{Vector}
\DeclareMathOperator{\arsh}{arsh}
\DeclareMathOperator{\arch}{arch}
\DeclareMathOperator{\arth}{arth}
\renewcommand{\Re}{\operatorname{Re}}	% 自带 \Re 的效果是 \mathrm{Re}, 前后无空格, 故重写
\renewcommand{\Im}{\operatorname{Im}}
\DeclareMathOperator{\Sa}{Sa}
\DeclareMathOperator{\Si}{Si}

% 运算符
% 可以用 \bigcap, \bigcup, \bigoplus, \bigotimes 替代
\newcommand{\capop}{\displaystyle\mathop\cap\limits}
\newcommand{\cupop}{\displaystyle\mathop\cup\limits}
\newcommand{\oplusop}{\mathop\oplus\limits}
\newcommand{\otimesop}{\mathop\otimes\limits}
\newcommand{\bigoplusop}{\mathop\bigoplus\limits}
\newcommand{\bigotimesop}{\mathop\bigotimes\limits}

% 积分
\newcommand{\dint}{\displaystyle\int}
\newcommand{\inti}{\dint_{-\infty}^{+\infty}}
\newcommand{\intoi}{\dint_0^{+\infty}}

\newcommand{\intl}{\displaystyle\int\limits}
\newcommand{\iintl}{\displaystyle\iint\limits}
\newcommand{\iiintl}{\displaystyle\iiint\limits}

% 求和
\newcommand{\dsum}{\displaystyle\sum}
\newcommand{\csum}[1]{\dsum_{#1=1}^\infty}
\newcommand{\nsum}{\csum{n}}
\newcommand{\nsuminf}{\dsum_{n=-\infty}^{+\infty}}
\newcommand{\ksum}{\csum{k}}
\newcommand{\nosum}{\dsum_{n=0}^\infty}
\newcommand{\insum}{\dsum_{i=1}^n}
\newcommand{\knsum}{\dsum_{k=1}^n}

% 求积
\newcommand{\dprod}{\displaystyle\prod}
\newcommand{\nprod}{\dprod_{n=1}^\infty}
\newcommand{\noprod}{\dprod_{n=0}^\infty}
\newcommand{\inprod}{\dprod_{i=1}^n}

% 极限
\newcommand{\liml}{\lim\limits}
\newcommand{\ulim}{\overline\lim\limits_{n\to\infty}}
\newcommand{\dlim}{\underline\lim\limits_{n\to\infty}}
% 注意这里的 d 是 down, 而不是 displaystyle

\newcommand{\xlim}{\lim\limits_{x\to x_0}}
\newcommand{\nlim}{\lim\limits_{n\to\infty}}
\newcommand{\clim}[1]{\lim\limits_{#1\to\infty}}

% 并集
\newcommand{\incup}{\bigcup_{i=1}^n}
\newcommand{\ncup}{\bigcup_{n=1}^\infty}
\newcommand{\icup}{\bigcup_{i=1}^\infty}

% 交集
\newcommand{\incap}{\bigcap_{i=1}^n}
\newcommand{\ncap}{\bigcap_{n=1}^\infty}
\newcommand{\icap}{\bigcap_{i=1}^\infty}

% 差分
\newcommand{\DD}{\Delta}
\newcommand{\DV}[2]{\dfrac{\DD#1}{\DD#2}}
\newcommand{\nDV}[3]{\dfrac{\DD^{#1}#2}{\DD#3^{#1}}}

% 求导
\newcommand{\ddv}{\displaystyle\dv}
\newcommand{\dpdv}{\displaystyle\pdv}

% 最值 (返回参数); 暂时先这么凑合着用吧
\newcommand{\argmax}[1]{\underset{#1}{\operatorname{argmax}}}
\newcommand{\argmin}[1]{\underset{#1}{\operatorname{argmin}}}

% 缩写
\newcommand{\LRA}{\Leftrightarrow}
\newcommand{\RLA}{\Leftrightarrow}
\newcommand{\LA}{\Leftarrow}
\newcommand{\RA}{\Rightarrow}

\newcommand{\lra}{\leftrightarrow}
\newcommand{\rla}{\leftrightarrow}
\newcommand{\la}{\leftarrow}
\newcommand{\ra}{\rightarrow}

\newcommand{\QRLA}{\quad\RLA\quad}
\newcommand{\QRA}{\quad\RA\quad}
\newcommand{\LLRA}{\Longleftrightarrow}

\newcommand{\QNRA}{\quad\nRightarrow\quad}
\newcommand{\qnra}{\quad\nrightarrow\quad}

\newcommand{\wt}{\widetilde}

% 图形符号
\newcommand{\qed}{\quad\square}
\renewcommand{\parallel}{\mathrel{/\mskip-2.5mu/}}
\newcommand{\paralleleq}{\hspace{0.5em}{^{^{\parallel}}}\hspace{-1.04em}=}
\newcommand{\rt}{\matrm{Rt}\triangle}

% 分块矩阵
\newenvironment{mat}[1]{
	\begin{array}{#1}
}{
	\end{array}
}

\newenvironment{pmat}[1]{
	\left( \begin{array}{#1}
}{
	\end{array} \right)
}

\newenvironment{bmat}[1]{
	\left[ \begin{array}{#1}
}{
	\end{array} \right]
}

\newenvironment{Bmat}[1]{
	\left\{ \begin{array}{#1}
}{
	\end{array} \right\}
}

\newenvironment{vmat}[1]{
	\left\lvert \begin{array}{#1}
}{
	\end{array} \right\rvert
}

\newenvironment{Vmat}[1]{
	\left\lVert \begin{array}{#1}
}{
	\end{array} \right\rVert
}

% 积分变换
\newcommand{\ft}{\overset{\cal F}{\rla}}
\newcommand{\lt}{\overset{\cal L}{\rla}}
\newcommand{\bt}{\overset{\cal B}{\rla}}
$$

[TOC]

#### 一、选择题

**1.**	C

由尺度性质 $ \delta(at) = \dfrac{\delta(t)}{\vqty{a}} $ 和筛选性质 $ \inti \delta(t) f(t) \dt = f(0) $ 即得.

---

**2.**	B
$$
\begin{align}
y(3) &= x_1(0) x_2(3) + x_1(1) x_2(2) + x_1(2) x_2(1) + x_1(3) x_2(0)
= 8.
\end{align}
$$
**备注**	利用竖式计算.

---

**3.**	C

由 $ \Sa(\omega_0 t) \lt \dfrac{\pi}{\omega_0} G_{2\omega_0}(\omega) $ 知 $ \omega_\text m = \omega_0 $，于是 $ T_\text{s} = \dfrac{2\pi}{\omega_\text s} = \dfrac{\pi}{\omega_\text m} $.

---

**4.**	A

由
$$
\begin{align}
\sin(\omega_0 t) &= \dfrac{\e^{\j\omega_0 t} - \e^{-\j\omega_0 t}}{2\j}
= \dfrac{\j}{2} \pqty{\e^{-\j\omega_0 t} - \e^{\j\omega_0 t}}
\\
&\ft \j\pi \bqty{
	\delta(\omega + \omega_0) -
	\delta(\omega - \omega_0)
}
\end{align}
$$
即得.

---

**5.**	D

**备注**	应当指明是时不变系统，时变系统的单位冲激响应 $ h_\tau(t) $ 与产生激励的时刻 $ \tau $ 有关.

---

**6.**	B

左移后得到 $ f\pqty{-2\pqty{t + \dfrac{3}{4}}} = f\pqty{-2t - \dfrac{3}{2}} $.

---

**7.**	A

由 $z$ 变换的初值定理，$ f(0) = \clim z F(z) = 3 $.

---

**8.**	C

A. 由时移性质即得.

B. 由微分性质即得.

C. 应为 $ f'_1(t) * f_2(t) $.

D. 由卷积定义即得.

---

**9.**	B

A. 信号 $ e(t - \tau) $ 的响应 $ r_\tau(t) = e(1 - t - \tau) \ne r(t - \tau) = e(1 - t + \tau) $，故为时变.

B. 信号 $ k_1 e_1(t) + k_2 e_2(t) $ 的响应 $ r_{e_1 + e_2}(t) = r_{e_1}(t) + r_{e_2}(t) $，故为线性.

C. $ r(0) = e(1) $ 与未来时刻的激励有关，故该系统非因果.

D. 有界输入信号在移位和反褶后仍有界，故该系统有稳定性.

---

**10.**	很不幸，这也是一道错题.

我猜标答是这样的：由时移性质与 $ \dfrac{1}{s^2 + 1} \lt \sin(t) u(t) $ 知，$ f(t) = \sin(t + 1) u(t + 1) $.

**<span style="color: red">警告</span>**	单边拉普拉斯变换在使用时移性质 $ f(t - t_0) u(t - t_0) \lt F(s) \e^{-s t_0} $ 时，需要注意条件 $ t_0 \ge 0 $.

- 对于题干，实际上 $ F(s) $ 的原函数不存在，因为任意信号的拉氏变换都满足 $ \clim s F(s) = 0 $.
- 对于选项，首先注意到单边拉普拉斯变换只关注 $ t \ge 0 $ 的部分，A 和 B、C 和 D 的拉氏变换是一样的.
  - $ \cos(t + 1) \lt \dfrac{s \cos (1)-\sin (1)}{s^2+1} $.
  - $ \sin(t + 1) \lt \dfrac{s \sin (1)+\cos (1)}{s^2+1} $.

---



#### 二、问答题

**1.**	答：

由尺度变换，若 $ f(t) \ft F(\omega) $，则对于 $ \forall 0 \ne a \in \R $，有
$$
f(at) \ft \dfrac{1}{\vqty{a}} F\pqty{\dfrac{\omega}{a}},
$$
以 $ a > 0 $ 为例：

一方面，为了提高通信速度，需要增加单位时间内传输的脉冲数，因此需要压缩脉冲信号的宽度，即增大上式中的 $a$.

另一方面，为了减小占有的频带宽度，需要增大 $ \dfrac{1}{a} $，即减小 $ a $.

---

**2.**	答：

（1）无失真传输系统的单位冲激响应为 $ r(t) = k e(t - t_0) $.

（2）当信号的频率均位于通频带内时为无失真传输系统，即 $ \omega_\text m < \omega_\text c $.

**备注**	注意上式一般认为不能取等.

---

**3.**	答：

（1）收敛域中的所有点使得拉普拉斯变换的积分定义式收敛，但反之不亦然.

回顾定义，如果
$$
\exist \sigma_0 \in \R, t_0 \ge 0, \forall t \ge t_0 \colon
\vqty{f(t)} \le M \e^{\sigma_0 t},
$$
则称函数 $ f(t) $ 具有指数阶 $ \sigma_0 $.

若具有指数阶 $ \sigma_0 $ 的函数 $ f(t) $ 在 $ \bpqty{0, +\infty} $ 分段连续，则对于 $ \forall \Re(s) > \sigma_0 $，其拉氏变换 $ \cal L\bqty{f} $ 存在，并且绝对收敛，并且一致收敛，并且 $ \clim{\Re(s)} F(s) = 0 $.

因此指数阶 $ \sigma_0 $ 又称为收敛（横）坐标，复平面 $ \sigma \mbox{-} O \mbox{-} \j\omega $ 上直线 $ \sigma = \sigma_0 $ 称为收敛轴，$ \sigma > \sigma_0 $ 称为收敛域.

注意拉氏变换的收敛域，在定义上与泰勒展开的收敛域不同，后者定义为所有收敛点的集合.

（2）这里不讨论信号收敛域的规律.

​	① 单边信号的收敛域为半平面 $ \sigma > \sigma_0 $.

​	② 双边信号的收敛域为平行带 $ \sigma_1 < \sigma_2 < \sigma_3 $.

---

**4.**	答：

1. 系统响应的相关概念：
   1. 完全响应 $ y(t) = T\bqty{\Bqty{f(t)}, \Bqty{x(0)}} $.
   2. 零状态响应 $ y_\text{zs}(t) = T\bqty{\Bqty{f(t)}, \Bqty{0}} $.
   3. 零输入响应 $ y_\text{zi}(t) = T\bqty{\Bqty{0}, \Bqty{x(0)}} $.
2. 线性系统满足可分解性、零输入线性和零状态线性.
   1. 可分解性 $ y(t) = y_\text{zs}(t) + y_\text{zi}(t) $.
   2. 零状态线性 $ T\bqty{\Bqty{af_1(t) + bf_2(t)}, \Bqty{0}} = aT\bqty{\Bqty{f_1(t)}, \Bqty{0}} + bT\bqty{\Bqty{f_2(t)}, \Bqty{0}} $.
   3. 零输入线性 $ T\bqty{\Bqty{0}, \Bqty{af_1(t) + bf_2(t)}} = aT\bqty{\Bqty{0}, \Bqty{f_1(t)}} + bT\bqty{\Bqty{0}, \Bqty{f_2(t)}} $.

其中零输入线性与零状态线性是定义而非推论.

---



#### 三、计算题

**1.**	
$$
\begin{cases}
	x(0) + f(t) \ra \pqty{
		2 \e^{-t} + \cos 2t
	} u(t), \\
	x(0) + 2 f(t) \ra \pqty{
		\e^{-t} + 2 \cos 2t
	} u(t).
\end{cases}
\QRA \begin{cases}
	f(t) \ra \pqty{
		\cos 2t - \e^{-t}
	} u(t), \\
	x(0) \ra 3 \e^{-t} u(t).
\end{cases}
$$
于是 $ x(0) + 4 f(t) \ra \pqty{4 \cos 2t - \e^{-t}} u(t) $.

---

**2.**	

（1）

思路一：先求系统函数，再求单位样值响应

1. 两边取 z 变换，得 $ Y(z) - \dfrac{1}{5z} Y(z) = X(z) $，
2. 于是 $ H(z) = \dfrac{Y(z)}{X(z)} = \dfrac{z}{z - \cfrac{1}{5}} $，
3. 从而 $ h(n) = 5^{-n} u(n) $.

思路二：先求单位样值响应，再求系统函数.

1. 特征根为 $ \dfrac{1}{5} $，$ y(0) = 1 $，
2. 于是 $ h(n) = 5^{-n} u(n) $，
3. 从而 $ H(z) = \dfrac{z}{z - \cfrac{1}{5}} $.

（2）

思路一：利用卷积定理

1. $ Y(z) = \dfrac{5z}{z - \cfrac{1}{2}} - \cfrac{5z}{z - \cfrac{1}{5}} $，
2. $ X(z) = \dfrac{3}{2} \dfrac{1}{z - \cfrac{1}{2}} = \dfrac{3z}{z - \cfrac{1}{2}} - 3 $，
3. $ x(n) = 3 \cdot 2^{-n} u(n) - 3 \delta(n) = 3 \cdot 2^{-n} u(n-1) $.

思路二：直接求反卷积

由零状态响应的形式与
$$
a^n u(n) * b^n u(n) = \dfrac{a^{n+1} - b^{n+1}}{a - b} u(n),
$$
可知 $ x(n) = 3 \cdot 2^{-n} u(n-1) $.

**备注**	默认为零状态，并且为因果序列.

---

**3.**	

（1）对两端取拉氏变换，于是
$$
\begin{cases}
	H_1(s) = Y_1(s) / X_1(s) = \dfrac{1}{s} - 1, \\
	H_2(s) = Y_2(s) / X_2(s) = \dfrac{1}{s + 2}.
\end{cases}
$$
从而有
$$
\begin{align}
H(s) &= \bqty{1 + H_1(s)} H_2(s)
= \dfrac{1}{2s} - \dfrac{1}{2 (s + 2)},
\end{align}
$$
即得 $ h(t) = \dfrac{1 - \e^{-2t}}{2} u(t) $.

（2）直接计算卷积，有
$$
y(t) = x(t) * h(t) = \dfrac{
	\pqty{1 - \e^{-t}}^2
}{2} u(t).
$$
