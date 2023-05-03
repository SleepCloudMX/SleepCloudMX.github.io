<h1 align="center">Poisson 过程及其推广</h1>

$$
% 设置
\newcommand{\aneg}[1]{\hspace{-0.75em}&#1&\hspace{-0.75em}}
\newcommand{\aneq}{\aneg{=}}
% 上述指令用于在使用 array 环境时调整等号左右间距
\newcommand{\eqs}{\quad\;}
% 上述指令用于 align 环境中, &= 的换行对齐时调整第二行位置
\renewcommand{\d}{\displaystyle}

% 字符
\renewcommand{\i}{\mathrm{i}}
\renewcommand{\j}{\mathrm{j}}
\renewcommand{\k}{\mathrm{k}}
\newcommand{\e}{\textup{e}}
\newcommand{\ve}{\varepsilon}
\newcommand{\Beta}{\mathit{B}}
\newcommand{\omicron}{\mathit{o}}
\newcommand{\Omicron}{\mathit{O}}

% 原本的定义为:
% \newcommand{\cal}[1]{\mathcal{#1}}
\newcommand{\bm}[1]{\boldsymbol{#1}}
\renewcommand{\cal}[1]{\mathcal#1}
\renewcommand{\scr}[1]{\mathscr#1}
\renewcommand{\frak}[1]{\mathfrak#1}
\newcommand{\bb}[1]{\mathbb#1}

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
\newcommand{\nocup}{\bigcup_{n=1}^\infty}
\newcommand{\iocup}{\bigcup_{i=1}^\infty}
\newcommand{\ncup}{\bigcup_{n=1}^\infty}
\newcommand{\icup}{\bigcup_{i=1}^\infty}

% 交集
\newcommand{\incap}{\bigcap_{i=1}^n}
\newcommand{\nocap}{\bigcap_{n=1}^\infty}
\newcommand{\iocap}{\bigcap_{i=1}^\infty}
\newcommand{\ncap}{\bigcap_{n=1}^\infty}
\newcommand{\icap}{\bigcap_{i=1}^\infty}

% 差分
\newcommand{\DD}{\Delta}
\newcommand{\DV}[2]{\dfrac{\DD#1}{\DD#2}}
\newcommand{\nDV}[3]{\dfrac{\DD^{#1}#2}{\DD#3^{#1}}}

% 求导
\newcommand{\ddv}{\displaystyle\dv}
\newcommand{\dpdv}{\displaystyle\pdv}

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
$$

[TOC]

### 2.1  时齐 Poisson 过程

#### 2.1.1  定义与说明

**定义**	若随机过程 $ \Bqty{N(t), t \ge 0} $ 满足以下条件, 则称为 **时齐 Poisson 过程**.

1. 是计数过程, 且 $ N(0) = 0 $.

2. 是独立增量过程.

3. 具有增量平稳性, 即
   $$
   \forall s, t \ge 0, n \in \N:
   P[N(s + t) - N(s) = n] = P[N(t) = n].
   $$

4. 对任意 $ t > 0 $ 和充分小的 $ \Delta t > 0 $, 有

$$
\begin{cases}
	P\Bqty{N(t + \Delta t) - N(t) = 1} = \lambda \Delta t + \omicron(\Delta t), \\
	P\Bqty{N(t + \Delta t) - N(t) \ge 2} = \omicron(\Delta t).
\end{cases}
$$

其中 $ \lambda > 0 $ 称为 **强度常数**.

**备注**

- $ P\Bqty{N(t + \Delta t) - N(t) = 0} = 1 - \lambda \Delta t - \omicron(\Delta t) = \e^{-\lambda \Delta t} + \omicron(\Delta t) $.

- 时齐 Poisson 过程常简称为 Poisson 过程或 Poisson 流, 缩写为 P.P.
- 若不满足增量平稳性, 则称为非时齐 Poisson 过程.
- 若不满足增量独立性, 则称为非独立 Poisson 过程.
- Bernoulli 过程是 Markov 链, Poisson 过程是连续参数 Markov 过程.

#### 2.1.2  与 Poisson 分布的关系

**定理 2.1.1**	若 $ \Bqty{N(t), t \ge 0} $ 为 Poisson 过程, 则
$$
\forall s, t \ge 0:
P\Bqty{N(s + t) - N(s) = k} = \dfrac{(\lambda t)^k}{k!} \e^{-\lambda t},\quad k \in \N.
$$
即 $ N(t + s) - N(s) \sim P(\lambda t) $.

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.1.1 时齐泊松过程与泊松分布.html" height=600></iframe>
    </details>
</div>
**定理 2.1.1'**	随机过程 $ \Bqty{N(t), t \ge 0} $ 可用以下条件等价定义为时齐泊松过程,

1. 是计数过程, 且 $ N(0) = 0 $.
2. 是独立增量过程.
3. $ \forall s, t \ge 0, N(s + t) - N(s) \sim P(\lambda t) $.

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.1.1 时齐泊松过程的等价定义.html" height=205></iframe>
    </details>
</div>


### 2.2  Poisson 过程与指数分布

#### 2.2.1  发生时间的概率分布

对于计数过程 $ \Bqty{N(t), t \ge 0} $, 定义随机变量
$$
\begin{align}
S_0 &= 0, \\
S_n &= \inf\Bqty{t \mid N(t) = n}, & n \ge 1,
\\
X_n &= S_n - S_{n-1}, & n \ge 1.
\end{align}
$$
于是下列事件等价
$$
\begin{align}
\Bqty{N(t) \ge n} &= \Bqty{S_n \le t}
\\
\Bqty{N(t) = n} &= \Bqty{S_n \le t < S_{n+1}}
\\
&= \Bqty{S_n \le t} - \Bqty{S_{n+1} \le t}
\end{align}
$$
若该计数过程是时齐 Poisson 过程, 则 $S_n$ 的分布函数与概率密度函数为
$$
\begin{align}
P\Bqty{S_n \le t}
&= P\Bqty{N(t) \ge n}
= 1 - \sum_{k = 0}^{n - 1}
\dfrac{(\lambda t)^k}{k!} \e^{-\lambda t},
\\
f_{S_n}(t) &= \dv{t} P\Bqty{S_n \le t}
= \dfrac{
	\lambda (\lambda t)^{n-1}
}{(n-1)!} \e^{-\lambda t} I_{\Bqty{t \ge 0}}.
\end{align}
$$

**备注**	实际上 $ S_n \sim \mathrm{Ga}(n, \lambda) $ ([Gamma 分布](https://sleepcloudmx.github.io/Math/概统/概统附录/概统笔记附录.html#12-伽马分布)).

#### 2.2.2  与指数分布的关系

**定理 2.2.1**	计数过程 $ \Bqty{N(t), t \ge 0} $ 是 Poisson 过程的充要条件是 $ \Bqty{X_n, n \ge 1} $ 独立同分布 $ E(\lambda) $.

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.2.1 泊松过程的充要条件.html" height=600></iframe>
    </details>
</div>
**备注**	由定理的证明过程可知, $ (\soneto{S}{n}) $ 的 j.p.d.f. 为
$$
g(\soneto{t}{n}) = \lambda^n \e^{-\lambda t_n}
I_\Bqty{0 < \ssto{t}{n}{<}}.
$$



### 2.3  剩余寿命与年龄

#### 2.3.1  剩余寿命与年龄及其分布

**定义**	对于计数过程 $ \Bqty{N(t), t \ge 0} $, 定义

- **剩余寿命**: $ W(t) = S_{N(t) + 1} - t $.
- **年龄**: $ V(t) = t - S_{N(t)} $.

**定理 2.3.1**	设 $ \Bqty{N(t), t \ge 0} $ 是参数为 $ \lambda $ 的 Poisson 过程, 则

1. $ W(t) \sim E(\lambda) $, 即
   $$
   P\Bqty{W(t) \le x} = (1 - \e^{-\lambda x}) I_{\Bqty{x \ge 0}}.
   $$

2. $ V(t) $ 是截尾指数分布, 即
   $$
   P\Bqty{V(t) \le x} = \begin{cases}
   	1 - \e^{-\lambda x}, & 0 \le x < t, \\
   	1, & x \ge t.
   \end{cases}
   $$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.3.1 剩余寿命与年龄.html" height=185></iframe>
    </details>
</div>
#### 2.3.2  Poisson 过程等价定义

**定理 2.3.2**	对于计数过程, 若非负 r.v. $ X_n\ (n \le 1) $ 独立同分布 $ F(x) $, 则 $ \forall x \ge 0, t \ge 0: $
$$
P\Bqty{W(t) > x} = 1 - F(x + t) + \int_0^t P\Bqty{W(t - u) > x} \dd{F(u)}.
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.3.2 计数过程的剩余寿命.html" height=600></iframe>
    </details>
</div>
**定理 2.3.3 (K.L.Chung)**	若 $ \forall t \ge 0 $, 有 $ W(t) $ 与 $ X_n\ (n \ge 1) $ 同分布 $ F(x) $, 且 $ F(0) = 0 $, 则 $ \Bqty{N(t), t \ge 0} $ 为 Poisson 过程.

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.3.3 泊松过程的检验方法.html" height=560></iframe>
    </details>
</div>
**备注**	该定理可用于检验 Poisson 过程.



### 2.4  到达时间的条件分布

#### 2.4.1  引理与顺序统计量

即给定 $ N(t) = n $ 时, $ \soneto{S}{n} $ 的条件分布.

**定理 2.4.1**	设 $ \Bqty{N(t), t \ge 0} $ 是 Poisson 过程, 则
$$
\forall (0 < s < t): P\Bqty{X_1 \le s \mid N(t) = 1} = \dfrac{s}{t}.
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.4.1 到达时间的条件分布.html" height=230></iframe>
    </details>
</div>
**引理 (顺序统计量的分布)**	设非负随机变量 $ \soneto{Y}{n} $ 独立同分布, 密度函数为 $ f(y) $, 则其顺序统计量 $ Y_{(1)} \le Y_{(2)} \le \cdots \le Y_{(n)} $ 的联合密度函数为
$$
f(\soneto{y}{n}) = \begin{cases}
	n! \inprod f(y_i), & 0 < \ssto{y}{n}{<}, \\
	0, & 其它.
\end{cases}
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.4.2 顺序统计量的分布.html" height=450></iframe>
    </details>
</div>

**例子**	若 $ Y_i $ 独立同均匀分布 $ R(0, t) $, 则其顺序统计量 $ Y_{(1)}, \cdots, Y_{(n)} $ 的 j.p.d.f. 为
$$
f(\soneto{y}{n}) = \dfrac{n!}{t^n} I_\Bqty{
	0 < \ssto{y}{n}{<} \le t
}.
$$
#### 2.4.2  到达时间的条件分布

**定理 2.4.2**	设 $ \Bqty{N(t), t \ge 0} $ 为 Poisson 过程, 则事件相继发生的时间 $ \soneto{S}{n} $ 在已知 $ N(t) = n $ 下的条件概率密度为
$$
f(\soneto{t}{n}) = \dfrac{n!}{t^n} I_\Bqty{
	0 < \ssto{t}{n}{<} \le t
}.
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.4.2 一般情况的条件分布.html" height=430></iframe>
    </details>
</div>
**定理 2.4.3**	设 $ \Bqty{N(t), t \ge 0} $ 为计数过程, 时间间隔 $ \Bqty{X_n, n \ge 1} $ 独立同分布 $ F(x) $, 且 $ F(0) = 0 $. 若
$$
\forall (0 \le s \le t):
P\Bqty{
	X_1 \le s \mid N(t) = 1
} = \dfrac{s}{t},
$$
则 $ \Bqty{N(t), t \ge 0} $ 为 Poisson 过程.

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明
        </b></summary>
        <iframe src="ifsrc\2.4.3 Poisson 过程的等价定义.html" height=600></iframe>
    </details>
</div>

**定理 2.4.4**	设 $ \Bqty{N(t), t \ge 0} $ 为计数过程, 时间间隔 $ \Bqty{X_n, n \ge 1} $ 独立同分布 $ F(x) $, 且 $ F(0) = 0 $. 若 $ E[X_n] < \infty $, 且
$$
\forall n \in \N^+, 0 \le s \le t:
P\Bqty{S_n \le s \mid N(t) = n} = \pqty{\dfrac{s}{t}}^n.
$$
则 $ \Bqty{N(t), t \ge 0} $ 为 Poisson 过程.

**备注**	这是定理 2.4.3 的弱化版本. 利用以上结果, 检验 Poisson 过程时不需要知道参数 $ \lambda $.

#### 2.4.3  Poisson 过程的应用

**例 1**	设到达火车站的顾客流遵照参数为 $ \lambda $ 的 Poisson 流 $ \Bqty{N(t), t \ge 0} $, 火车 $t$ 时刻离开车站, 求在 $ [0, t] $ 到达车站的顾客等待时间总和的期望值.

**解**

**例 2**	设一系统在 $ [0, t] $ 内承受的冲击数 $ \Bqty{N(t), t \ge 0} $ 是参数为 $ \lambda $ 的 Poisson 流. 第 $i$ 次冲击受的损失为 $D_i$, 设 $ \Bqty{D_i, i \ge 1} $ 独立同分布, 与 $ \Bqty{N(t), t \ge 0} $ 独立. 且损失随时间按负指数衰减, 即 $ t = 0 $ 时损失为 $ D $, 在 $t$ 时损失为 $ D\e^{-\alpha t}, \alpha > 0 $. 并且损失是可加的, 那么在 $t$ 时刻的损失之和为
$$
\xi(t) = \sum_{i = 1}^{N(t)} D_i \e^{-\alpha(t - S_i)},
$$
其中 $S_i$ 为第 $i$ 次冲击到达的时刻. 试求 $ E[\xi(t)] $.

**解 1**

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>解 2</b>
        </summary>
        <iframe src="ifsrc\2.4.4 例2-损失之和-解2.html" height=240></iframe>
    </details>
</div>
#### 2.4.4  到达时间的函数期望

**定理 2.4.5**	设 $ \Bqty{N(t), t \ge 0} $ 是参数为 $ \lambda $ 的 Poisson 过程, $ S_k, k \ge 1 $ 为其到达时刻, 则对任意可积函数 $ f $ 有
$$
E\bqty{
	\nsum f(S_n)
} = \lambda \intoi f(t) \dt.
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.4.5 到达时刻的可积函数的期望.html" height=170></iframe>
    </details>
</div>


### 2.5  模拟、检验与参数估计

#### 2.5.1  Poisson 过程的轨道模拟

下述步骤可得到 $ \Bqty{N(t), t \ge 0} $ 的一条轨道.

1. 生成随机数 $ \Bqty{U_n \sim R(0, 1), n \ge 1} $.
2. 令 $ X_k = -\dfrac{\ln U_k}{\lambda} $, 则 $ \Bqty{X_n, n \ge 1} $ 独立同指数分布 $ E(\lambda) $.
3. 令 $ S_0 = 0, S_n = \knsum X_k $.
4. 令 $ N(t) = \nosum n I_\Bqty{S_n \le t < S_{n + 1}} $.

#### 2.5.2  Poisson 过程的假设检验

欲检验 $ \Bqty{N(t), t \ge 0} $ 是否为 Poisson 过程, 可以检验下述问题之一:

1. 检验 $ \Bqty{X_n, n \ge 1} $ 是否独立同指数分布 $ E(\lambda) $.
2. $ \forall t > 0 $, 检验 $ W(t) $ 与 $ X_n (n \ge 1) $ 是否同分布.
3. $ \forall t > 0 $, 检验在 $ N(t) = 1 $ 时是否有 $ S_1 \sim R(0, t) $.
4. 给定 $ T > 0 $, 检验在 $ N(T) = n $ 下是否有 $ (\soneto{S}{n}) \sim R(0, T)^n $ 的次序统计量.

---

其中最后一种方法最简单, 以此为例:

假设 $ H_0: \Bqty{N(t), t \ge 0} $ 是 Poisson 过程.

令 $ \sigma_n = \knsum S_k $, 则当 $H_0$ 成立时, 有
$$
\begin{align}
E\Bqty{\sigma_n \mid N(T) = n}
&= E\bqty{\insum y_{(i)}}
= E\bqty{\insum y_i}
= \dfrac{nT}{2}.
\\
D\Bqty{\sigma_n \mid N(T) = n}
&= D\bqty{\insum y_{(i)}}
= D\bqty{\insum y_i}
= \dfrac{nT^2}{12}.
\end{align}
$$
于是由中心极限定理, 得
$$
\begin{align}
\nlim P\Bqty{ \left.
	\dfrac{
		\sigma_n - nT / 2
	}{
		T\sqrt{n / 12}
	} \le x
	\ \right|\ N(T) = n
} = \varPhi(x) = \dfrac{1}{\sqrt{2\pi}} \int_{-\infty}^x \e^{-\tfrac{t^2}{2}} \dt.
\end{align}
$$

#### 2.5.3  Poisson 过程的参数估计

**1  极大似然估计**

设 $ \Bqty{N(t), t \ge 0} $ 为 Poisson 过程, 给定 $T$, 若 $ N(T) = n $ 且 $ S_i = t_i\ (i = 1, 2, \cdots, n) $, 则似然函数为
$$
L(\soneto{t}{n}; \lambda) = \lambda^n \e^{-\lambda T}.
$$
注意上式与 $T$ 有关, 因为 $n$ 是 $T$ 的函数. 令 $ \ddv{L}{\lambda} = 0 $, 即得极大似然估计为
$$
\hat\lambda = \dfrac{n}{T}.
$$

**2  区间估计**

设 $ \Bqty{N(t), t \ge 0} $ 为 Poisson 过程, 对于固定的 $n$, 注意到 $ S_n \sim \mathrm{Ga}(n, \lambda) $, 于是 $ 2\lambda S_n \sim \chi^2_{2n} $.

从而得到 $ \lambda $ 的置信度为 $ 1 - \alpha $ 的区间估计为
$$
\bqty{
	\dfrac{
		\chi_{2n}^2 \pqty{\frac{\alpha}{2}}
	}{2S_n},
	\dfrac{
		\chi_{2n}^2 \pqty{1 - \frac{\alpha}{2}}
	}{2S_n}
}.
$$



### 2.6  非时齐 Poisson 过程

#### 2.6.1  定义与说明

**定义**	若随机过程 $ \Bqty{N(t), t \ge 0} $ 满足以下条件, 则称为 **非时齐 Poisson 过程**,

1. 是计数过程, 且 $ N(0) = 0 $.
2. 是独立增量过程.
3. 对任意 $ t > 0 $ 和充分小的 $ \Delta t > 0 $, 有

$$
\begin{cases}
	P\Bqty{N(t + \Delta t) - N(t) = 1} = \lambda(t) \Delta t + \omicron(\Delta t), \\
	P\Bqty{N(t + \Delta t) - N(t) \ge 2} = \omicron(\Delta t).
\end{cases}
$$

其中 $ \Bqty{\lambda(t) > 0, t \ge 0} $ 称为 **强度函数**.

**备注**

- 非时齐 Poisson 若具有增量平稳性, 则为时齐 Poisson 过程.
- $ P\Bqty{N(t + \Delta t) - N(t) = 0} = 1 - \lambda(t) \Delta t - \omicron(\Delta t) = \e^{-\lambda(t) \Delta t} + \omicron(\Delta t) $.
- 定义 $ m(t) := \dint_0^t \lambda(s) \ds $.

#### 2.6.2  任意时段的概率分布

**定理 2.6.1**	若 $ \Bqty{N(t), t \ge 0} $ 是非时齐具有强度函数 $ \Bqty{\lambda(t) > 0, t \ge 0} $ 的 Poisson 过程, 则
$$
\forall s, t \ge 0, n \in \N:
P{\Bqty{N(s + t) - N(s) = n}}
= \dfrac{
	[m(s + t) - m(s)]^n
}{n!} \e^{m(s) - m(s + t)}.
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.6.1 非时齐泊松过程的分布.html" height=600></iframe>
    </details>
</div>
#### 2.6.3  时齐与非时齐的转换

**定理 2.6.2**	时齐 Poisson 过程与非时齐 Poisson 过程可如下相互转化:

1. 设 $ \Bqty{N(t), t \ge 0} $ 是具有强度函数 $ \Bqty{\lambda(s) > 0, s \ge 0} $ 的非时齐 Poisson 过程. 令 $ m(t) = \dint_0^t \lambda(s) \ds $, 并定义反函数

$$
m\inv(u) = \inf\Bqty{
	t>0 \mid m(t) \ge u \ge 0
},
$$

则 $ \Bqty{M(u) = N(m\inv(u))}, u \ge 0 $ 是参数为 $ \lambda = 1 $ 的时齐 Poisson 过程.

2. 设 $ \Bqty{M(u), u \ge 0} $ 是参数为 $ \lambda = 1 $ 时齐 Poisson 过程. 若给定强度函数 $ \Bqty{\lambda(t) > 0, t \ge 0} $, 令 $ m(t) = \dint_0^t \lambda(s) \ds $, 则 $ \Bqty{N(t) = M(m(t)), t \ge 0} $ 是具有上述强度函数的非时齐 Poisson 过程.

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.6.2 时齐与非时齐的相互转化.html" height=600></iframe>
    </details>
</div>


### 2.7  复合 Poisson 过程

**定义**	设 $ \Bqty{N(t), t \ge 0} $ 为 Poisson 过程, 随机变量 $ Y_i $ 独立同分布 $Y$, 且 $ \Bqty{N(t), t \ge 0} $ 与 $ \Bqty{Y_i, i \ge 1} $ 独立, 则
$$
\Bqty{
	X(t) = \sum_{i = 1}^{N(t)} Y_i, t \ge 0
}
$$
称为 **复合 Poisson 过程** (Compound Poisson Process).

**定理 2.7.1**	如上定义, 并设 $Y$ 的矩母函数为 $ \phi_Y(u) $, 则 $X(t)$ 的矩母函数、期望与方差分别为
$$
\begin{align}
\phi_X(u) &= \e^{\lambda t(\phi_Y(u) - 1)},
\\
E[X(t)] &= \lambda t E[Y],
\\
D[X(t)] &= \lambda t E[Y^2].
\end{align}
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.7.1 复合泊松过程的数字特征.html" height=525></iframe>
    </details>
</div>

**定义**	若随机变量序列 $ \Bqty{\rho_i \in \N^+, i \ge 1} $ 独立同分布, 且与 Poisson 过程 $ \Bqty{N(t), t \ge 0} $ 独立, 则
$$
\Bqty{
	X(t) = \sum_{i = 1}^{N(t)} \rho_i, t \ge 0
}
$$
称为 **平稳无后效流**.



### 2.8  条件 Poisson 过程

**定义**	设随机变量 $ \Lambda $ 的分布函数为 $ G(x)\ (x \ge 0) $, 且在 $ \Lambda = \lambda $ 时, 计数过程 $ \Bqty{N(t), t \ge 0} $ 是参数为 $ \lambda $ 的 Poisson 过程, 即
$$
P\Bqty{
	N(s + t) - N(s) = n \mid \Lambda = \lambda
} = \dfrac{(\lambda t)^n}{n!} \e^{-\lambda t}.
$$
则称 $ \Bqty{N(t), t \ge 0} $ 为 **条件 Poisson 过程**.

**备注**	这里的  $ \Bqty{N(t), t \ge 0} $ 不是增量独立的过程, 并且有
$$
P\Bqty{N(s + t) - N(s) = n} = \intoi
\dfrac{(\lambda t)^n}{n!}
\e^{-\lambda t} \dd{G(\lambda)}.
$$



### 2.9  更新过程

#### 2.9.1  定义与说明

**定义**	设取值非负的随机变量 $ \Bqty{X_k, k \ge 1} $ 独立同分布 $ F(x)\ (x \ge 0) $, 且 $ F(0) < 1 $, 令 $ S_n = I_\Bqty{n > 0} \knsum X_k $, 则
$$
\Bqty{N(t) = \sup\Bqty{n \mid S_n \le t}, t \ge 0}
$$
称为 **更新过程**, 且 $ m(t) = E[N(t)] $ 称为 **更新函数**.

**备注**

- 若 $ F \sim E(\lambda) $, 则 $ \Bqty{N(t), t \ge 0} $ 是 Poisson 过程.

- 更新过程是计数过程, 并且
  $$
  \begin{align}
  \Bqty{N(t) \ge n} &= \Bqty{S_n \le t},
  \\
  \Bqty{N(t) = n} &= \Bqty{S_n \le t < S_{n + 1}}
  \\
  &= \Bqty{S_n \le t} - \Bqty{S_{n + 1} \le t}.
  \end{align}
  $$

- 记 $ S_n $ 的分布函数为 $ F_n(x) $, 则 $ F_1(x) = F(x) $, 并且当 $ n \ge 2 $ 时
  $$
  \begin{align}
  F_n(x) &= \inti F_{n-1}(x - u) \dd{F(u)}
  \\
  &= \dint_0^x F_{n - 1}(x - u) \dd{F(u)}
  \\
  &= (F_{n-1} * F)(x).
  \end{align}
  $$
  
- 常见的卷积的定义为 $ (f * g)(x) = \inti f(u) g(x - u) \dd{u} $, 约定对于分布函数采用上述定义, 对于密度函数采用常见的定义, 于是有
  $$
  \begin{align}
  (F * G)(x) &= \inti F(x - u) \dd{G(u)}
  \\
  &= \inti \pqty{
  	\int_{-\infty}^{x - u} f(v) \dd{v}
  } g(u) \dd{u}
  \\
  &= \inti \pqty{
  	\int_{-\infty}^x f(t - u) \dd{t}
  } g(u) \dd{u}
  \\
  &= \int_{-\infty}^x (f * g)(t) \dd{t}.
  \end{align}
  $$
  <u>因此分布的卷积也满足交换律、结合律与分配律等.</u> 

#### 2.9.2  到达时间概率分布的性质

**定理 2.9.1**	
$$
\forall m, n \in \N^+:
F_{m + n}(t) \le F_{m}(t) F_{n}(t).
$$
**证明**

**定理 2.9.2**	
$$
\forall t \ge 0:
m(t) = \nsum F_n(t).
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.9.2 更新函数的求和表达式.html" height=190></iframe>
    </details>
</div>
**推论**	若对 $ \forall t \ge 0: F(t) < 1 $, 则
$$
m(t) \le \dfrac{F(t)}{1 - F(t)}.
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.9.2 更新函数的缩放推论.html" height=190></iframe>
    </details>
</div>
#### 2.9.3  更新函数与更新方程

**定理 2.9.3**	$ \forall t \ge 0 $, $ m(t) $ 满足下列 **更新方程**:
$$
% \forall t \ge 0:
m(t) = F(t) + \int_0^t m(t - u) \dd{F(u)}.
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.9.3 更新函数的积分表达式.html" height=240></iframe>
    </details>
</div>

**定理 2.9.4**	$ F(t) $ 与 $ m(t) $ 是一一对应的, 实际上, 它们的 [L-S 变换](c1-概率论公理化.html)有如下关系
$$
\hat m(s) = \dfrac{\hat F(s)}{1 - \hat F(s)}.
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.9.4 更新函数的拉氏变换.html" height=480></iframe>
    </details>
</div>


### 2.10  若干极限定理与基本更新定理

#### 2.10.1  更新过程的极限定理

**定理 2.10.1**	
$$
P\Bqty{\nlim \dfrac{S_n}{n} = \mu := E[X_n]} = 1.
$$
**备注**	由强大数定律即得. 上式又可记作 $ \nlim \dfrac{S_n}{n} = \mu $.

**推论 1**
$$
P\Bqty{\nlim S_n = +\infty} = 1.
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.10.1 极限定律推论1.html" height=300></iframe>
    </details>
</div>
**推论 2**
$$
\forall t \ge 0:
m(t) = \nsum F_n(t) < +\infty.
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.10.1 极限定律推论2.html" height=520></iframe>
    </details>
</div>

**定理 2.10.2**	
$$
P\Bqty{
	N(\infty) = \infty
} = 1.
$$
<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.10.2 极限定律2.html" height=195></iframe>
    </details>
</div>
**定理 2.10.3 (更新过程强大数定律)**	
$$
P\Bqty{
	\lim_{t \to \infty}
	\dfrac{N(t)}{t} = \dfrac{1}{\mu}
} = 1.
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.10.3 极限定律3.html" height=550></iframe>
    </details>
</div>
#### 2.10.2  Markov 停时与 Wald 等式

**定义**	设 $ \Bqty{X_n, n \ge 1} $ 为随机序列, $T$ 为非负整数随机变量, 若对于 $ \forall n \in \N $, 事件 $ \Bqty{T = n} $ 仅依赖于 $ \soneto{X}{n} $, 而与 $ X_{n + 1}, X_{n + 2}, \cdots $ 独立, 则称 $T$ 关于 $ \Bqty{X_n, n \ge 1} $ 是 **停时** (Stopping time, 或 Markov time).

**定理 2.10.4 (Wald 等式)**	设 $ \Bqty{X_n, n \ge 1} $ 独立同分布 $X$, 期望 $ \mu = E(X_n) < \infty $, 且 $T$ 关于 $ \Bqty{X_n, n \ge 1} $ 是停时, 期望 $ E(T) < \infty $, 则
$$
E\pqty{\sum_{n = 1}^T X_n} = E(X) E(T).
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.10.4 Wald 等式.html" height=520></iframe>
    </details>
</div>
---

**例 1**	若 $ \Bqty{X_n, n \ge 1} $ 独立同 $ B(n_0, p_0) $, 且 $ N \in \N^+ $ 则
$$
T = \min\Bqty{
	n \ \left|\ \insum X_i = N \right.
}
$$
关于 $ \Bqty{X_n, n \ge 1} $ 是停时, 且
$$
E(T) = \dfrac{
	E\pqty{\sum_{n = 1}^T X_n}
}{E(X)} = \dfrac{T}{n_0p_0}.
$$

**例 2**	设 $ \Bqty{X_n, n \ge 1} $ 独立同分布, 其分布列为
$$
\begin{array}{|c|c|c|}
\hline
X & -1 & 1 \\
\hline
P & 1-p & p \\
\hline
\end{array}
$$
则 $ T = \min\Bqty{n \ \left|\ \insum X_i = 1 \right.} $ 关于 $ \Bqty{X_n, n \ge 1} $ 是停时.

当 $ p > 0.5 $ 时, 由第三章可知 $ E(T) < \infty $, 从而 $ E(T) = \dfrac{1}{p - q} $.

当 $ p \le 0.5 $ 时, $ E(X) \le 0 $, 从而 Wald 等式不再成立, 于是 $ E(T) = \infty $.

---

**推论**	当 $ E[X_n] = \mu < \infty $ 时,
$$
E[S_{N(t) + 1}] = \mu[m(t) + 1].
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.10.4 Wald 等式推论.html" height=235></iframe>
    </details>
</div>
#### 2.10.3  基本更新定理

**定理 2.10.5 (基本更新定理)**	
$$
\lim_{t \to \infty} \dfrac{m(t)}{t} = \dfrac{1}{\mu}.
$$
<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.10.5 基本更新定理.html" height=600></iframe>
    </details>
</div>


### 2.11  更新方程与关键更新定理

#### 2.11.1  更新方程及其定理

**定义**	设已知函数 $ a(t) $ 与分布函数 $ F(t) $, 若未知函数 $ A(t) $ 满足以下积分方程,
$$
A(t) = a(t) + \int_0^t A(t - x) \dd{F(x)} = a(t) + (A*F)(t).
$$
则称之为 **更新方程**,

**定理 2.11.1**	设 $ a(t) $ 为有界函数, $ F(t) $ 为分布函数, 则更新方程的解存在且唯一, 其解在有限区间上有界. 若记
$$
\begin{align}
F_n(t) &= \begin{cases}
	F(t), & n = 1, \\
	\dint_0^t F_{n - 1}(t - x) \dd{F(x)}, & n \ge 2.
\end{cases}
\\
m(t) &= \nsum F_n(t),
\end{align}
$$

则解 $ A(t) $ 可表示为
$$
A(t) = a(t) + \int_0^t a(t - x) \dd{m(x)} = a(t) + (a * m)(t).
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.11.1 更新方程的解.html" height=600></iframe>
    </details>
</div>
#### 2.11.2  Blackwill 定理

**定义**	非负随机变量 $X$ 称为是 **格点的** (Lattice), 如果
$$
\exist d \ge 0:
\nosum P\Bqty{X = nd} = 1.
$$
并且满足上式的最大的 $d$ 称为 $X$ 的 **周期**.

**备注**	若 $X$ 是格点的, 则其分布函数 $F$ 是格点的.

**定理 2.11.2 (Blackwill 定理)**	设 $ F(x) $ 为非负随机变量的分布函数,
$$
\begin{align}
F_n &= \begin{cases}
	F, & n = 1, \\
	F_{n-1} * F, & n \ge 2.
\end{cases}
\\
m(t) &= \nsum F_n(t).
\end{align}
$$

1. 如果 $F$ 是非格点的, 则

$$
\forall a \ge 0:
\lim_{t \to \infty} \bqty{
	m(t + a) - m(t)
} = \dfrac{a}{\mu}.
$$

2. 如果 $F$ 是格点的, 且周期为 $d$, 则

$$
\nlim \bqty{
	m((n + 1) d) - m(nd)
} = \dfrac{d}{\mu}.
$$

#### 2.11.3  关键更新定理

**定义**	设 $ h $ 是定义在 $ \bpqty{0, +\infty} $ 上的函数, 令
$$
\begin{align}
\underline{m}_n(\delta)
&= \inf_{(n-1)\delta \le t \le n\delta} h(t),
\\
\overline{m}_n(\delta)
&= \sup_{(n-1)\delta \le t \le n\delta} h(t),
\end{align}
$$
若 $ \forall \delta > 0 $, $ \nsum \underline{m}_n(\delta) $ 和 $ \nsum \overline{m}_n(\delta) $ 有限, 且
$$
\lim_{\delta \to 0}
\delta \nsum \overline{m}_n(\delta)
= \lim_{\delta \to 0}
\delta \nsum \underline{m}_n(\delta),
$$
则称 $ h(t) $ 是 **直接 Riemann 可积** 的.

**备注**	单调且绝对可积的函数是直接黎曼可积的.

**定理 2.11.3 (关键更新定理)**	设 $F$ 是均值为 $ \mu $ 的非负随机变量的分布函数, $ F(0) < 1 $, 且 $ a(t) $ 是直接 Riemann 可积的, $ A(t) $ 是下述更新方程的解.
$$
A(t) = a(t) + \int_0^t A(t - x) \dd{F(x)}.
$$

1. 若 $F$ 是非格点的, 则

$$
\lim_{t \to \infty} A(t) = \begin{cases}
	\dfrac{1}{\mu} \intoi a(t) \dt, & \mu < \infty. \\
	0, & \mu = \infty.
\end{cases}
$$

2. 若 $F$ 是周期为 $ d $ 的格点的, 则

$$
\forall c > 0:
\nlim A(c + nd) = \begin{cases}
	\dfrac{d}{\mu} \nosum a(c + nd), & \mu < \infty. \\
	0, & \mu = \infty.
\end{cases}
$$

**推论 1**	记剩余寿命 $ r_t = S_{N(t) + 1} - t $, 令 $ A_z(t) = P\Bqty{r_t > z} $, 则 $ A(t) $ 满足更新方程
$$
A_z(t) = 1 - F(t + z) + \int_0^t A_z(t - x) \dd{F(x)}.
$$
且有如下极限
$$
\forall z > 0:
\lim_{t \to \infty} A_z(t) = \mu\inv \int_x^{+\infty} [1 - F(y)] \dy.
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.11.3 推论 1.html" height=580></iframe>
    </details>
</div>
#### 2.11.4  交错更新过程

**定义**	设随机向量序列 $ \Bqty{(Z_n, Y_n), n \ge 1} $ 独立同分布, 即 $ Z_n $ i.i.d. $ Z $, $ Y_n $ i.i.d. $ Y $, 且二者不一定独立. 记 $ X_n = Z_n + Y_n $, $ S_0= 0 $, $ S_n= \insum X_i $, $ N(t) = \sup\Bqty{n \in \N \mid S_n \le t} $, 则 $ \Bqty{N(t), t \ge 0} $ 为更新过程. 记
$$
\zeta_t = \begin{cases}
	1, & S_n \le t < S_n + Z_{n + 1}, \\
	0, & S_n + Z_{n + 1} \le t < S_{n + 1}.
\end{cases}
$$
则称 $ \Bqty{\zeta_t, t \ge 0} $ 为 **交错更新过程**.

**定理 2.11.4**	设 $ H(t), G(t), F(t) $ 分别为 $ Z_n, Y_n, X_n $ 的分布函数, 且 $ P(t) = P\Bqty{\zeta_t = 1} $, $ Q(t) = P\Bqty{\zeta_t = 0} $. 若 $ E(X_n) < \infty $, 且 $F$ 非格点, 则
$$
\begin{align}
\lim_{t \to \infty} P(t) &= \dfrac{E(Z)}{E(Z) + E(Y)}
= \dfrac{E(Z)}{E(X)}, \\
\lim_{t \to \infty} Q(t) &= \dfrac{E(Y)}{E(Z) + E(Y)}
= \dfrac{E(Y)}{E(X)}.
\end{align}
$$

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.11.4 交错更新过程的概率极限.html" height=630></iframe>
    </details>
</div>
#### 2.11.5  更新报酬过程

**定义**	设更新过程 $ \Bqty{N(t), t \ge 0} $ 的时间间隔 $ X_n\ (n \ge 1) $ 分布为 $F$, 每当一次更新发生时, 得到一个报酬 $ R_n \le 0 $, 且 $ \Bqty{R_n, n \ge 1} $ 独立同分布. 并设 $ \Bqty{(X_n, R_n), n \ge 1} $ 独立同分布, 其中 $ R_n $ 可以依赖于 $ X_n $. 则
$$
\Bqty{
	R(t) = \sum_{n = 1}^{N(t)} R_n, t \ge 0
}
$$
称为 **更新报酬过程**.

**备注**	当更新过程为 Poisson 过程时, 更新报酬过程为复合 Poisson 过程.

**定理 2.11.5**	若 $ E(R) = E(R_n) < \infty, E(X) = E(X_n) < \infty $, 则

1. $ \liml_{t \to \infty} \dfrac{R(t)}{t} = \dfrac{E(R)}{E(X)} $.
2. $ \liml_{t \to \infty} \dfrac{E(R(t))}{t} = \dfrac{E(R)}{E(X)} $.

<div style="background-color: #f3f2ee">
    <details>
        <summary><b>证明</b>
        </summary>
        <iframe src="ifsrc\2.11.5 更新报酬过程.html" height=600></iframe>
    </details>
</div>
