<p align="center">B 卷解答</p>

$$
% 设置
\renewcommand{\d}{\displaystyle}
\newcommand{\aneg}[1]{\hspace{-0.75em}&#1&\hspace{-0.75em}\d}
\newcommand{\aneq}{\aneg{=}}
% 上述指令用于在使用 array 环境时调整等号左右间距
\newcommand{\noeq}{&\hspace{1.3em}}
% 上述指令用于 align 环境中, 类似与 &= 但不显示等号.

% 字符
\renewcommand{\i}{\mathrm{i}}
\renewcommand{\j}{\mathrm{j}}
\renewcommand{\k}{\mathrm{k}}
\newcommand{\e}{\mathrm{e}}
\newcommand{\o}{\mathrm{o}}
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
\DeclareMathOperator{\avg}{avg}

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

\newcommand{\coiint}[1]{\d{\oiint\hspace{-1em}}_{#1}\;}
\newcommand{\coiiint}[1]{\d{\oiiint\hspace{-0.9em}}_{#1}\;}

% 求和
\newcommand{\dsum}{\displaystyle\sum}
\newcommand{\csum}[1]{\dsum_{#1=1}^\infty}
\newcommand{\nsum}{\csum{n}}
\newcommand{\ksum}{\csum{k}}
\newcommand{\nosum}{\dsum_{n=0}^\infty}
\newcommand{\insum}{\dsum_{i=1}^n}
\newcommand{\knsum}{\dsum_{k=1}^n}
\newcommand{\csuminf}[1]{\dsum_{#1=-\infty}^{+\infty}}
\newcommand{\nsuminf}{\csuminf{n}}

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
\newcommand{\zt}{\overset{\cal Z}{\rla}}
\newcommand{\bzt}{\overset{\cal Z_B}{\rla}}
\newcommand{\lzt}{\overset{\cal Z_L}{\rla}}
\newcommand{\rzt}{\overset{\cal Z_R}{\rla}}
$$

[TOC]

### 一、选择题

#### 1.1

D

$ \inti \delta(9t) f(t) \dt = \dfrac{1}{9} \inti \delta(t) f(t) \dt = \dfrac{1}{9} f(0) $.

---

#### 1.2

D

1. $ x(t) \xrightarrow{系统} x(2t) \xrightarrow{时延} x(2t - 2\tau) $.

   $ x(t) \xrightarrow{时延} x(t - \tau) \xrightarrow{系统} x(2t - \tau) $.

   二者不等，故为时变系统.

2. $ y(t - \tau) = \sin6(t - \tau) \cdot x(t - \tau) $.

   $ y_\tau(t) = \sin 6t \cdot x(t - \tau) $.

   二者不等，故为时变.

3. 同 A.

4. $ y(t - t_0) = \dint_{-\infty}^{t - t_0} x(\tau) \dd{\tau} = \dint_{-\infty}^t x(\tau - t_0) \dd{\tau} = y_{t_0}(t) $，故为时不变.

   定积分算子为线性算子，故为线性系统.

---

#### 1.3

A

$ f(t) = \e^2 \cdot \e^{-t} u(t) \lt \dfrac{\e^2}{s + 1} $.

---

#### 1.4

B

$ \dfrac{5}{s (2s + 3)} = \dfrac{5}{3s} - \dfrac{5}{3 \pqty{s + \cfrac{3}{2}}} \zt \dfrac{5}{3} \pqty{1 - \e^{-\tfrac{3}{2} t}} u(t) $.

---

#### 1.5

C

$ \delta(\omega + 10) - \delta(\omega - 10) \ft \dfrac{\e^{-\j 10 t} - \e^{\j 10 t}}{2\pi} = -\dfrac{\j}{\pi} \sin(10 t) $.

---

#### 1.6

$ f(2t - 9) \ft \dfrac{1}{2} F\pqty{\dfrac{\omega}{2}} \e^{-\j\omega \tfrac{9}{2}} = \dfrac{E \tau}{2} \Sa\pqty{\dfrac{\omega\tau}{4}} \e^{-\j \tfrac{9}{2} \omega} $.

**备注**	答案有误.

---

#### 1.7

A

---

#### 1.8

D

1. $ r(t) = k e(t - t_0) $.
2. $ R(\omega) = k E(\omega) \e^{-\j\omega t_0} $.
3. $ H(\omega) = k \e^{-\j\omega t_0} $.
4. $ h(t) = k \delta(t - t_0) $.

**备注**	题目应特指充要条件，并指明 $ t_0 \ge 0 $.

---

#### 1.9

A

硬分类讨论即可.

---

#### 1.10

$ y(2) = 3 \cdot 1 + 0 \cdot 4 + 1 \cdot 2 = 5 $.

**备注**	如果需要计算全部项，则可使用对位相乘求和法.



### 二、简答题

1. 阶跃响应是系统在单位阶跃函数 $ u(t) $ 的激励下产生的零状态响应  $ g(t) $.

2. 因果系统的定义有多种表述：

   1. 输入不超前于输出的系统.
   2. 零状态响应在激励之前的系统.
   3. $ t_0 $ 时刻的响应只与 $ t \le t_0 $ 时的输入有关.

3. 见 1.8 题. 可表述为：

   1. 在信号的带宽内，幅频特性为常数函数，相频特性为正比例函数且斜率非负.
   2. 系统函数可写为：$ H(\omega) = k \e^{-\j\omega t_0} $.
   3. 输入输出有关系式：$ R(\omega) = k E(\omega) \e^{-\j\omega t_0} $.

4. 奈奎斯特间隔：$ T_\rm s = \dfrac{2\pi}{\omega_\rm s} = \dfrac{\pi}{\omega_\rm m} = 10^{-5}\ \rm s $.

   低通截止频率：$ f_\rm c \ge \dfrac{\omega_\rm m}{2\pi} = 5 \cp 10^4\ \rm{Hz} $.



### 三、计算题

**思路一**
$$
\begin{align}
X(z) &= \dfrac{1}{z^2 + 1}
= 1 - \dfrac{z^2}{z^2 + 1}
\\
&\zt \delta(n) - \cos(\dfrac{n \pi}{2}) u(n).
\end{align}
$$
**思路二**
$$
\begin{align}
X(z) &= \dfrac{z}{z (z^2 + 1)}
= 1 - \dfrac{z}{2 (z + \j)} - \dfrac{z}{2 (z - \j)}
\\
&\zt \delta(n) - \dfrac{(-\j)^n + \j^n}{2} u(n)
= \delta(n) - \cos(\dfrac{n\pi}{2}) u(n).
\end{align}
$$
**备注**
$$
\begin{align}
\cos(\omega_0 n) u(n) &\zt \dfrac{z (z - \cos\omega_0)}{z^2 - 2z \cos\omega_0 + 1}, \\
\sin(\omega_0 n) u(n) &\zt \dfrac{z \sin\omega_0}{z^2 - 2 z \cos\omega_0 + 1}.
\end{align}
$$


### 四、计算题

（1）

思路一：先求系统函数，后求单位样值响应.

1. 对两端作 Z 变换，有 $ Y(z) - \dfrac{1}{5z} Y(z) = X(z) $，
2. 于是得到系统函数 $ H(z) = \dfrac{Y(z)}{X(z)} = \dfrac{z}{z - \cfrac{1}{5}}, \rm{ROC} \colon \vqty{z} > \dfrac{1}{5} $.
3. 从而单位样值响应为 $ h(n) = 5^{-n} u(n) $.

思路二：先求单位样值响应，后求系统函数.

1. 特征根为 $ \dfrac{1}{5} $，$ y(0) = 1 $，
2. 于是 $ h(n) = 5^{-n} u(n) $，
3. 从而 $ H(z) = \dfrac{z}{z - \cfrac{1}{5}}, \rm{ROC} \colon \vqty{z} > \dfrac{1}{5} $.

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



### 五、计算题

（1）
$$
\begin{align}
Y(s) &= \dfrac{5 \pqty{Y(s) + E(s)}}{
	R + \cfrac{
		\pqty{2 + \cfrac{1}{s}} \cfrac{1}{s}
	}{2 + \cfrac{1}{s} + \cfrac{1}{s}}
} \cdot \dfrac{\cfrac{1}{s}}{
	2 + \cfrac{1}{s} + \cfrac{1}{s}
} \cdot 2
= \dfrac{10s (Y(s) + E(s))}{
	(2s^2 + 2s) R + 2s + 1
},
\end{align}
$$

$$
H(s) = \dfrac{Y(s)}{E(s)} = \dfrac{10s}{(2s^2 + 2s) R + 1 - 8s}
= \dfrac{10s}{2R s^2 + (2R - 8) s + 1}.
$$



（2）

极点为 $ \dfrac{4 - R \pm \sqrt{R^2 - 10 R + 16}}{2 R} $，其中根式当且仅当 $ 2 < R < 8 $ 时为虚数.

思路一：

1. 当 $ 2 < R < 8 $ 时，$ R < 4 $.
2. 当 $ R \ge 8 $ 时，$ R^2 - 10R + 16 > (4 - R)^2 $，无解.
3. 当 $ 0 < R < 2 $ 时，均不稳定.
4. 当 $ R = 0 $ 时，极点为 $ \dfrac{1}{8} $，不稳定.
5. 当 $ R < 0 $ 时，均不稳定.

综上所述， $ R < 4 $.（~~阻值也不是不可以没有负数...对吧~~）

思路二：

1. 当 $ R > 0 $ 时，$ \dfrac{(4-R)^2}{4R^2} > \dfrac{R^2 - 10 R + 16}{4R^2} $，因此 $ R < 4 $.
2. 当 $ R = 0 $ 时，极点为 $ \dfrac{1}{8} $，不稳定.
3. 当 $ R < 0 $ 时，前两项大于第三项的绝对值，因此不稳定.



（3）
$$
\begin{align}
H(s) &= \dfrac{10s}{10s^2 + 2s + 1}, \quad
E(s) = \dfrac{1}{s}, \\
Y_\rm{zs}(s) &= \dfrac{1}{s^2 + \cfrac{1}{5} s + \cfrac{1}{10}}
= \dfrac{1}{\pqty{s + \cfrac{1}{10}}^2 + \pqty{\cfrac{3}{10}}^2}, \\
y_\rm{zs}(t) &= \dfrac{10}{3} \e^{-\tfrac{t}{10}} \sin(\dfrac{3}{10} t) u(t).
\end{align}
$$
