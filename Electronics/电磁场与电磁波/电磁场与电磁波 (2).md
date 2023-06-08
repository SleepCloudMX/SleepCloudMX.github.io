<h1 align="center">电磁场与电磁波 (2)</h1>

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

## 第 3 章  恒定磁场

### 3.1  恒定磁场的基本定律

#### 3.1.1  安培力定律

$$
\bm F_{21} = \dfrac{\mu_0}{4\pi}
\oint_{C_2} \oint_{C_1} \dfrac{
	I_2 \dd{\bm l_2} \cp (I_1\dd{\bm l_1} \cp \bm e_R)
}{R^2}.
$$

- 即 $ C_1 $ 对 $ C_2 $ 的作用力.
- 真空中的磁导率 $ \mu_0 = 4\pi \cp10^{-7}\ \mathrm{H / m} $.

#### 3.1.2  比奥-萨瓦定律

- 磁感应强度 (磁通量密度) $ \bm B $
  - 单位为 $ T = \mathrm{Wb/m^2} = 10^4\ \mathrm{Gs} $.
  - 线电流: $ \d {\bm B} = \dfrac{\mu_0}{4\pi} \oint_{C} \dfrac{I\dd{\bm l \cp \bm e_R}}{R^2} $.
  - 面电流: $ \bm B = \dfrac{\mu_0}{4\pi} \d\iint_S \dfrac{\bm J_\text  s \cp \bm e_R}{R^2} \dd{S} $.
  - 体电流: $ \bm B = \dfrac{\mu_0}{4\pi} \d\iiint_V \dfrac{\bm J(r') \cp \bm e_R}{R^2} \dd{V} $.
- 受力
  - $ \d \bm f = \oint_l I \dd{\bm l} \cp \bm B $.
  - $ \bm f = q \bm v \cp \bm B $.
- 例子
  - 无穷长直导线: $ \bm B = \dfrac{\mu_0 I}{2\pi r} \bm e_\phi $.
  - 电流环的轴线: $ \bm B = \dfrac{\mu_0 I r^2}{2(z^2 + r^2)^{3/2}} \bm e_z $.

### 3.2  真空中的恒定磁场方程

#### 3.2.1  散度与磁通连续性原理

- $ \bm B = \dfrac{\mu_0}{4\pi} \curl \dint_{V'} \dfrac{\bm J(r')}{R} \dd{V'} $.
- $ \div \bm B = 0 $.
- $ \d \oint_S \bm B \cdot \dd{\bm S} = \int_V \div \bm B \dd{V} = 0 $.
- 磁通量守恒.

#### 3.2.2  安培环路定理

- $ \curl \bm B = \mu_0 \bm J $.
- $ \d\oint_l \bm B \cdot \dd{\bm l} = \mu_0 I $.

#### 3.2.3  恒定磁场的位函数

- 矢量磁位 $ \bm B \equiv \curl \bm A $.
  - $ \bm A $ 不唯一. 若 $ \bm A $ 满足上式, 则 $ \bm A + \grad \phi $ 也满足.
  - 库仑规范: 规定 $ \div \bm A = 0 $.
- 矢量泊松方程: $ \Delta \bm A = \grad^2 \bm A = \grad (\div \bm A) - \curl (\curl \bm A) = -\mu_0 \bm J $.
  - $ \bm A = \dfrac{\mu_0}{4\pi} \dint_{V'} \dfrac{\bm J(r')}{R} \dd{V'} $. (可与 3.2.1 第一式比较)
  - $ \d \bm A = \dfrac{\mu_0}{4\pi} \int_{S'} \dfrac{\bm J_s}{R} \dd{S'} $.
  - $ \bm A = \dfrac{\mu_0}{4\pi} \dint_{l'} \dfrac{\bm I}{R} \dd{l'} $.
- 对于<u>无源区域</u> $ \bm J = 0 $, 有 $ \grad^2 \bm A = \bm 0 $.
  - 磁场强度 $ \bm B \equiv \mu_0 \bm H $.
  - 标量磁位 $ \bm H \equiv -\grad \varphi_\text{m} $.
  - $ \bm 0 = \curl \bm B = \mu_0 \curl \bm H $.
  - 拉普拉斯方程 $ \grad^2 \varphi_\text{m} = - \div \bm H = 0 $.

### 3.3  磁偶极子与介质的磁化

#### 3.3.1  磁偶极子及其矢量磁位

- 磁偶极子: 一个小载流圆环
- 磁偶极矩 (磁矩): $ \bm m = i \Delta \bm S $.
  - $ \bm A = \dfrac{\mu_0}{4\pi r^2} \bm m \cp \bm e_r\ (r \gg a) $.
  - $ \bm B = \dfrac{\mu_0 m}{4\pi r^3} (\bm e_r 2\cos\theta + \bm e_\theta \sin\theta) $.

#### 3.3.2  介质的磁化

- 介质的磁化

  - 介质磁化后: 束缚电流 (磁化电流), 附加磁场
  - 介质的分类: 抗磁质, 顺磁质, 铁磁质.
  - 铁磁质: 剩磁、磁滞现象.
- 磁化强度矢量 $ \bm P_\text{m} = \liml_{\Delta V \to 0} \dsum_{k=1}^N \dfrac{\bm m_k}{\Delta V} $.

  - 均匀磁化 / 非均匀磁化.
  - <u>磁化体电流密度</u> $ \bm J_\text{m} = \curl \bm P_\text{m} $.
  - <u>磁化面电流密度</u> $ \bm J_{\text{sm}} = \bm P_\text m \cp \bm e_\text n $.

#### 3.3.3  介质中的恒定磁场方程

- $ \curl \bm B = \mu_0(\bm J + \bm J_\text m) = \mu_0 \bm J + \mu_0 \curl \bm P_\text m $.
- 磁场强度 $ \bm H $ 
  - $ \bm H := \dfrac{\bm B}{\mu_0} - \bm P_\text m $, 单位为 $ \mathrm{A/m} $.
  - $ \curl \bm H = \bm J $.
  - $ \d\oint_l \bm H \cdot \dd{l} = \bm I $.
- 介质的磁化率 $ \chi_\text m $ 
  - $ \bm P_\text m = \chi_\text m \bm H $, 其中 $ \chi_\text m $ 无量纲.
  - 在真空中, $ \chi_\text m = 0 $; 对于非铁磁质物质, $ \chi_\text m \approx 1 $.
  - 顺磁质 $ \chi_\text m > 0 $, 抗磁质 $ \chi_\text m < 0 $.
  - 铁磁物质的 $ \chi_\text m $ 非常数.
- 相互关系
  - $ \bm B = \mu_0 (1 + \chi_\text m) \bm H = \mu_0 \mu_r \bm H = \mu \bm H $.
  - $ \bm P_\text m = \chi_\text m \bm H = (1 -\mu_r) \bm H $.
- 磁通连续性原理
  - $ \d\oint_S \bm B \cdot \dd{\bm S} = 0 $.
  - $ \div \bm B = 0 $.


### 3.4  恒定磁场的边界条件

#### 3.4.1  磁感应强度的法向边界条件

- $ \bm e_\text n \cdot (\bm B_1 - \bm B_2) = 0 $.
- $ B_\text{1n} = B_\text{2n} $.
- $ \mu_1 H_\text{1n} = \mu_2 H_\text{2n} $.
- 如果有一个媒质是理想导体, 内部没有电磁场, 也没有电流, 则 $ B_\text n = 0 $.

#### 3.4.2  磁场强度的切向边界条件

- $ (\bm H_1 - \bm H_2) \cdot \bm e_\text{t} = J_\text s $.

- $ \bm e_\text n \cp (\bm H_1 - \bm H_2) = \bm J_\text s $.

- $ H_\text{1t} - H_\text{2t} = \dfrac{B_\text{1t}}{\mu_1} - \dfrac{B_\text{2t}}{\mu_2} = J_\text s $.

- 若媒质 2 为导体, 则 $ H_\text t = J_\text s $.

  若导体表面有自由面电流, 则将产生与导体表面平行的磁场强度分量.

#### 3.4.3  恒定磁场位函数的边界条件

- 矢量磁位
  - $ A_\text{1t} = A_\text{2t} $.
  - $ A_\text{1n} = A_\text{2n} $.
  - $ \bm A_1 = \bm A_2 $.
- 标量磁位
  - $ \varphi_\text{m1} = \varphi_\text{m2} $.
  - $ \mu_1 \d\pdv{\varphi_\text{m1}}{n} = \mu_2 \pdv{\varphi_\text{m2}}{n} $.

【例】

### 3.5  电感

#### 3.5.1  自电感

- 自电感 $ L = \dfrac{\psi}{I} = L_\i + L_\o $.
- 内自感 $ L_\i = \dfrac{\psi_\i}{I} $.
- 外自感 $ L_\o = \dfrac{\psi_\o}{I} $.

#### 3.5.2  互电感

- 互感 $ M_{21} = \dfrac{\psi_{21}}{I_1} $.
- $ M_{12} = M_{21} = M $.

#### 3.5.3  电感的计算

- 互感
  - 矢量磁位: $ \bm A = \dfrac{\mu_0}{4\pi} \d\oint_{l_1} \dfrac{I_1}{R} \dd{\bm l_1} $.
  - 磁通: $ \Phi_{21} = \dint_S \bm B \cdot \dd{\bm S} = \int_S (\curl \bm A) \cdot \dd{\bm S} = \oint_{l_2} \bm A \cdot \dd{l} $.
  - **聂以曼公式**: $ M = \dfrac{N_1 N_2 \mu_0}{4 \pi} \d\oint_{l_1} \oint_{l_2} \dfrac{\dd{\bm l_2} \cdot \dd{\bm l_1}}{R} $.
- 外自感: $ L_\o = \dfrac{N^2 \mu_0}{4 \pi} \d\oint_{l_1} \oint_{l_2} \dfrac{\dd{\bm l_2} \cdot \dd{\bm l_1}}{R} $.
- 内自感: $ L_\i = \dfrac{\mu_0 l}{8 \pi} $.

【】

### 3.6  恒定磁场的能量和磁场力

#### 3.6.1  恒定磁场的能量及能量密度

- 用电流表示磁场能量:

$$
\begin{align}
W_\text m &= \dfrac{1}{2} \dsum_{i=1}^N I_i \psi_i
= \dfrac{1}{2} \sum_{i, j} M_{ij} I_i I_j
\\
&= \dfrac{1}{2} \dsum_{i=1}^N L_i I_i^2 +
\dfrac{1}{2} \dsum_{i \ne j} M_{ij} I_i I_j.
\end{align}
$$

- 两个回路: $ M \le \sqrt{L_1 L_2} $.
- 耦合关系: $ k = \dfrac{M}{\sqrt{L_1 L_2}} $.
- 用场量表示磁场能量:

$$
\begin{align}
W_\text m
&= \dfrac{1}{2} \dsum_{j=1}^N I_j
\oint_{l_j} \bm A \cdot \dd{\bm l_j}
= \dfrac{1}{2} \dsum_{j=1}^N
\oint_{l_j} \bm A \cdot I_j \dd{\bm l_j}
\\
&= \dfrac{1}{2} \int_V \bm A \cdot \bm J \dd{V}
= \dfrac{1}{2} \int_V \bm A \cdot (\curl \bm H) \dd{V}
\\
&= \dfrac{1}{2} \int_V \div (\bm H \cp \bm A) \dd{V} +
\dfrac{1}{2} \int_V \bm H \cdot (\curl \bm A) \dd{V}
\\
&= \dfrac{1}{2} \oint_S (\bm H \cp \bm A) \cdot \dd{\bm S} +
\dfrac{1}{2} \int_V \bm H \cdot \bm B \dd{V}
\\
&= \dfrac{1}{2} \int_V \bm B \cdot \bm H \dd{V},
\end{align}
$$

- 磁场能量密度: $ \omega_\text m = \dfrac{1}{2} \bm B \cdot \bm H = \dfrac{1}{2} \mu H^2 = \dfrac{B^2}{2 \mu} $.

3.6.2  恒定磁场的磁场力



## 第 5 章  时变电磁场

### 5.1  麦克斯韦方程组

#### 5.1.1  麦克斯韦第一方程

- 电荷守恒定律

  - 积分形式: $ \d\oint_S \bm J \cdot \dd{\bm S} = -\ddv{Q}{t} $.
  - $ \dint_V \div \bm J \dd{V} = \oint_S \bm J \cdot \dd{\bm S} = -\dv{Q}{t} = -\int_V \pdv{\rho}{t} \dd{V} $.
  - 微分形式: $ \div \bm J = -\dpdv{\rho}{t} $.
  - 媒质分界面: $ \grad_t \cdot \bm J_S + (\bm J_\text{1n} - \bm J_\text{2n}) = -\dpdv{\rho_S}{t} $.

- 安培环路定理 (麦克斯韦第一方程)

  - $ \div (\curl \bm H) = 0 = \div \bm J + \d\pdv{t} (\div \bm D) = \div \pqty{\bm J + \pdv{\bm D}{t}} $.
  - 微分形式: $ \curl \bm H = \bm J + \d\pdv{\bm D}{t} $.
  - 积分形式 $ \d\oint_l \bm H \cdot \dd{l} = \int_S \pqty{\bm J + \pdv{\bm D}{t}} \cdot \dd{\bm S} $.

- 全电流密度 $ \bm J + \bm J_\text d $.

  - $ \bm J = \bm J_\i + \bm J_\text c + \bm J_\text v $.

    - 外加电流密度 $ \bm J_\i $.
    - 传导电流密度 $ \bm J_\text c = \sigma \bm E $.
    - 运流电流密度 $ \bm J_\text v = \rho \bm v $.

  - 位移电流密度 $ \bm J_\text d = \dpdv{\bm D}{t} $.

    - $ \bm D = \ve_0 \bm E + \bm P $.

    - $ \bm J_\text d = \ve_0 \dpdv{\bm E}{t} + \pdv{\bm P}{t} $.

    - 即由变化的电场和电介质变化的电偶极矩组成.

    - 频率越高, 位移电流密度 $ \bm J_\text d $ 越大. (微波怕水)

      因此水下无法用高频通信, 海军使用长波通信.

#### 5.1.2  麦克斯韦第二方程

- 感应电动势
  - $ \cal E_\text{in} = -\d\pdv{\Phi}{t} = -\dv{t} \int_S \bm B \cdot \dd{\bm S} $.
  - $ \cal E_\text{in} = \d\oint_l \bm E_\text{in} \cdot \dd{\bm l} $.
- 总电场 $ \bm E = \bm E_\text{C} + \bm E_\text{in} $.
  - 库仑电场 $ \bm E_\text{C} $.
  - 感应电场 $ \bm E_\text{in} $.
- 法拉第电磁感应定律
  - $ \d\oint_l \bm E_\text{in} \cdot \dd{\bm l} = -\dv{t} \int_S \bm B \cdot \dd{\bm S} $.
  - $ \d\oint_l \bm E \cdot \dd{\bm l} = -\dv{t} \int_S \bm B \cdot \dd{\bm S} $.
- 麦克斯韦第二方程
  - 积分形式: $ \dint_S (\curl \bm E) \cdot \dd{\bm S} = -\int_S \pdv{\bm B}{t} \cdot \dd{\bm S} $.
  - 微分形式: $ \curl \bm E = -\dpdv{\bm B}{t} $.
  - 时变电场有旋, 非保守场.

#### 5.1.3  麦克斯韦第三方程 

- 积分形式: $ \d\oint_S \bm D \cdot \dd{\bm S} = Q $.
- 微分形式: $ \div \bm D = \rho $.

#### 5.1.4  麦克斯韦第四方程

- 积分形式: $ \d\oint_S \bm B \cdot \dd{\bm S} = 0 $.
- 微分形式: $ \div \bm B = 0 $.

#### 5.1.5  麦克斯韦方程组

$$
\begin{cases}
	\d \oint_l \bm H \bm\cdot \dd{\bm l}
	= \int_S \pqty{\bm J + \pdv{\bm D}{t}} \bm\cdot \dd{\bm S}, \\
	\d \oint_l \bm E \bm\cdot \dd{\bm l}
	= -\pdv{t} \int_S \bm B \bm\cdot \dd{\bm S}, \\
	\d \oint_S \bm D \bm\cdot \dd{\bm S}
	= \int_V \rho \dd{V} = Q, \\
	\d \oint_S \bm B \bm\cdot \dd{\bm S} = 0,
\end{cases}
\hspace{3em}
\begin{cases}
	\d \curl \bm H = \bm J + \pdv{\bm D}{t}, \\
	\d \curl \bm E = -\pdv{\bm B}{t}, \\ \\
	\div \bm D = \rho, \\ \\
	\div \bm B = 0.
\end{cases}
$$

- 通过任意闭曲面的传导电流和位移电流的总量为零, 即 $ \dint_S \pqty{\bm J + \pdv{\bm D}{t}} \bm\cdot \dd{\bm S} = 0 $.
- 后两个散度方程, 可以由前两个旋度方程和电流连续性方程推出.

#### 5.1.6  媒质的本构方程

$$
\begin{cases}
	\bm D = \ve_0 \bm E + \bm P = \ve \bm E, \\
	\bm B = \mu_0 (\bm H + \bm P_\text m) = \mu \bm H, \\
	\bm J = \sigma \bm E.
\end{cases}
$$

- 三个基本的媒质参数 (本构参数)
  - 介电常数: $ \ve $.
  - 磁导率: $ \mu $.
  - 电导率: $ \sigma $.
- 媒质的三种分类
  - 若媒质参数与<u>空间位置</u>无关, 则称为 **均匀媒质**.
  - 若媒质参数与<u>场强大小</u>无关, 则称为 **线性媒质**.
  - 若媒质参数与<u>场强方向</u>无关, 则称为 **各向同性媒质**.

### 5.2  时变电磁场的边界条件

#### 5.2.1  法向场的边界条件

- 电位移矢量
  - $ \bm e_\text n \bm\cdot (\bm D_1 - \bm D_2) = \rho_\text s $.
  - $ D_\text{1n} - D_\text{2n} = \rho_\text s $.
  - 若面电荷密度 $ \rho_\text s $ 非零, 则不连续.

- 电场强度
  - $ \ve_1 E_\text{1n} - \ve_2 E_\text{2n} = \rho_\text{s} $.
  - 即使面电荷密度 $ \rho_\text s $ 非零, 仍然不连续.

- 磁感应强度
  - $ \bm e_\text n \bm\cdot (\bm B_1 - \bm B_2) = 0 $.
  - $ B_\text{1n} = B_\text{2n} $.
  - 磁感应强度的法向分量连续.

- 磁场强度
  - $ \mu_1 H_\text{1n} = \mu_2 H_\text{2n} $.
  - 磁场强度的法向分量不连续.


#### 5.2.2  切向场的边界条件

- 电场强度
  - $ \bm e_\text n \cp (\bm E_1 - \bm E_2) = \bm 0 $.
  - $ E_\text{1t} = E_\text{2t} $.
  - 电场强度的切向分量连续.
- 电位移矢量
  - $ \dfrac{D_\text{1t}}{\ve_1} = \dfrac{D_\text{2t}}{\ve_2} $.
  - 电位移矢量的切向分量不连续.
- 磁场强度
  - $ \bm e_\text n \cp (\bm H_1 - \bm H_2) = \bm J_\text s $.
  - $ H_\text{1t} - H_\text{2t} = J_\text s $.
  - 若媒质分界面没有自由电流, 则磁场强度切向分量连续.
- 磁感应强度
  - $ \dfrac{B_\text{1t}}{\mu_1} - \dfrac{B_\text{2t}}{\mu_2} = J_\text{s} $.
  - 即使分界面没有自由电流, 磁感应强度的切向分量也不连续.

#### 5.2.3  边界条件的总结

$$
\begin{array}{c|c}
\hline
一般媒质边界 & \begin{array}{c}
	无自由电荷与电流 \\
	的理想媒质分界面
\end{array} & 理想导体表面
\\ \hline \\
\begin{cases}
	\bm e_\text n \cp (\bm E_1 - \bm E_2) = \bm 0, \\
	\bm e_\text n \cp (\bm H_1 - \bm H_2) = \bm J_\text s, \\
	\bm e_\text n \bm\cdot (\bm D_1 - \bm D_2) = \rho_\text s, \\
	\bm e_\text n \bm\cdot (\bm B_1 - \bm B_2) = 0.
\end{cases} \quad
& \quad \begin{cases}
	\bm e_\text n \cp (\bm E_1 - \bm E_2) = \bm 0, \\
	\bm e_\text n \cp (\bm H_1 - \bm H_2) = \bm 0, \\
	\bm e_\text n \bm\cdot (\bm D_1 - \bm D_2) = 0, \\
	\bm e_\text n \bm\cdot (\bm B_1 - \bm B_2) = 0.
\end{cases}
& \quad \begin{cases}
	\bm e_\text n \cp \bm E_1 = \bm 0, \\
	\bm e_\text n \cp \bm H_1 = \bm J_\text s, \\
	\bm e_\text n \bm\cdot \bm H_1 = \rho_\text s, \\
	\bm e_\text n \bm\cdot \bm B_1 = 0.
\end{cases}
\\ \\ \hline
\end{array}
$$



### 5.3  时谐电磁场电磁场与复数形式

任意时变场可分解为正弦时间函数表示的时谐场.

#### 5.3.1  时谐电磁场的复数形式

- 时谐电磁场
  $$
  \begin{align}
  \bm E(x, y, z, t) &= \bm E_\text m (x, y, z) \cos\bqty{
  	\omega t + \phi(x, y, z)
  } \\
  &= \Re\bqty{
  	\bm E_\text m (x, y, z) \e^{
  		\j \bqty{\omega t + \phi(x, y, z)}
  	}
  } \\
  &= \Re\bqty{
  	\dot{\bm E}_\text m (x, y, z) \e^{\j\omega t}
  }.
  \end{align}
  $$

  - 振幅矢量 $ \bm E_\text m(x, y, z) $.
  - 空间相位 $ \phi(x, y, z) $.
  - 时间因子 $ \e^{\j\omega t} $.
  - 复振幅矢量 $ \dot{\bm E}_\text m(x, y, z) = \bm E_\text m(x, y, z) \e^{\j \phi(x, y, z)} $.

- 电场矢量的瞬时值形式与复数形式的转换
  $$
  \begin{align}
  \pdv{t} \bm E(x, y, z, t)
  &= - \bm E_\text m (x, y, z) \omega \sin\bqty{
  	\omega t + \phi(x, y, z)
  } \\
  &= \Re\bqty{
  	\j\omega \bm E_\text m (x, y, z) \e^{\j\omega t}
  }.
  \end{align}
  $$

  - $ \bm E(x, y, z, t) \rla \dot{\bm E}_\text m (x, y, z) $.
  - $ \dpdv{t} \bm E(x, y, z, t) \rla \j\omega \dot{\bm E}_\text m (x, y, z) $.
  - $ \dint_{-\infty}^t \bm E(x, y, z, t) \dt \rla \dfrac{\dot{\bm E}_\text m (x, y, z)}{\j\omega} $.


#### 5.3.2  麦克斯方程组的复数形式

习惯上将 $ \dot{\bm E}_\text m $ 简写为 $ \bm E $，诸如此类. 于是麦克斯韦方程组为
$$
\begin{cases}
	\curl \bm H = \bm J + \j\omega \bm D, \\
	\curl \bm E = -\j\omega \bm B, \\
	\div \bm D = \rho, \\
	\div \bm B = 0.
\end{cases}
\hspace{3em}
\begin{cases}
	\d\oint_l \bm H \bm\cdot \dd{\bm l}
	= \int_S \bm J \bm\cdot \dd{\bm S} +
	\j\omega \int_S \bm D \bm\cdot \dd{\bm S},
	\\
	\d\oint_l \bm E \bm\cdot \dd{\bm l}
	= -\j\omega \int_S \bm B \bm\cdot \dd{\bm S},
	\\
	\d\oint_S \bm D \bm\cdot \dd{\bm S}
	= \int_V \rho\dd{V},
	\\
	\d\oint_S \bm B \bm\cdot \dd{\bm S} = 0.
\end{cases}
$$
电流连续性方程为
$$
\begin{align}
\div \bm j + \j\omega \rho &= 0, \\
\int_V \div \bm J \dd{V} &= -\j\omega \int_V \rho\dd{V}.
\end{align}
$$


### 5.4  时变电磁场的能量与功率

#### 5.4.1  坡印廷定理

- 电磁场在电导率为 $ \sigma $ 的有耗媒质中传播
  - 传导电流 $ J = \sigma E $.
  - 损耗功率 $ p = \bm J \bm\cdot \bm E $.
  - $ \d \div (\bm E \cp \bm H) = -\mu \bm H \bm\cdot \pdv{\bm H}{t} - \bm J \bm\cdot \bm E - \ve \bm E \bm\cdot \pdv{\bm E}{t} $.
- 坡印廷定理
  - $ \d \pdv{t} \int_V \pqty{
    	\dfrac{\bm B \bm\cdot \bm H}{2} +
    	\dfrac{\bm D \bm\cdot \bm H}{2}
    } \dd{V} + \int_V \bm J \bm\cdot \bm E \dd{V} +
    \oint_{S'} (\bm E \cp \bm H) \bm\cdot \dd{\bm S'} = 0 $.
    - 第一项表示体积 $V$ 内单位时间内存储的总电磁能量 (电磁功率).
    - 第二项表示传导电流 $ \bm J $ 引起的损耗功率.
    - 第三项表示通过闭曲面 $ \bm S' $ 离开体积 $V$ 的总功率.
  - 坡印廷矢量 $ \bm S = \bm E \cp \bm H $.
    - 表示闭曲面上通过单位面积的功率.
    - 方向是能量流动的方向, 单位是 $ \mathrm{W / m^2} $.
    - 坡印廷矢量又称为能量流密度或功率密度.
  - 特例
    - 在静电场和恒定磁场中, 没有电磁能量流动.
    - 在恒定电场和恒定磁场中, $ -\bm S $ 表示 $V$ 内的损耗功率.
    - 在时变电场中, $ \bm S $ 表示瞬时功率密度.

#### 5.4.2  复坡应廷矢量

对于正弦电磁场，
$$
\begin{align}
\bm E(x, y, z, t)
&= \Re\bqty{\bm E \e^{\j\omega t}}
= \dfrac{
	\bm E \e^{\j\omega t} + \bm E^* \e^{-\j\omega t}
}{2}, \\
\bm H(x, y, z, t)
&= \Re\bqty{\bm H \e^{\j\omega t}}
= \dfrac{
	\bm H \e^{\j\omega t} + \bm H^* \e^{-\j\omega t}
}{2}, \\
\bm S(x, y, z, t)
&= \bm E(x, y, z, t) \cp \bm H(x, y, z, t)
\\
&= \dfrac{
	\bm E \cp \bm H^* + \bm E^* \cp \bm H
}{4} + \dfrac{
	\bm E \cp \bm H \e^{2\j\omega t} +
	\bm E^* \cp \bm H^* \e^{-2\j\omega t}
}{4} \\
&= \dfrac{1}{2} \Re\bqty{\bm E \cp \bm H^*} +
\dfrac{1}{2} \Re\bqty{\bm E \cp \bm H\e^{2\j\omega t}}
\\
S_\text{avg} &= \dfrac{1}{T} \int_0^T S(x, y, z, t) \dt
= \dfrac{1}{2} \Re\bqty{\bm E \cp \bm H^*}
= \Re\bqty{\bm S},
\end{align}
$$

- 复坡应廷矢量 $ \bm S \equiv \dfrac{\bm E \cp \bm H^*}{2} $.
  - 注意
    - 上式中的 $ \bm E $ 和 $ \bm H $ 都是<u>复振幅值</u>，而非有效值.
    - 复坡应廷矢量<u>与时间无关</u>，表示复功率密度.
  - 分量
    - $ \Re\bqty{\bm S} $ 为平均功率密度（有功功率密度）
    - $ \Im\bqty{\bm S} $ 无功功率密度
  - $ \bm S_\text{avg} = \dfrac{1}{2} \Re\bqty{\bm E \cp \bm H^*} $ 称为平均能流密度矢量或平均坡应廷矢量.

【例】

5.5  时变电磁场的唯一性定理

5.6  电磁场的位函数与波动方程





## 第 6 章  无界媒质中的均匀平面波

时变电磁场产生电磁波的类型

- 平面波（Plane wave）
- 柱面波（Cylindrical）
- 球面波（Spherical）

### 6.1  理想介质中的均匀平面波

#### 6.1.1  亥姆霍兹方程与均匀平面波

- 亥姆霍兹方程

  对于理想介质中无源区域内的时谐电磁场，

  - $ k = \omega\sqrt{\mu\ve} $.
  - $ \grad^2 \bm E + k^2 \bm E = 0 $.
  - $ \grad^2 \bm H + k^2 \bm H = 0 $.

- 均匀平面波

  - 平面波：等相位面（波阵面）为无限大平面的电磁波.
  - 均匀平面波：等相位面上场量均匀分布（幅度和方向）的平面波.
  - 相速度：等相位面的传播速度.
  - 横电磁波（TEM）：在传播方向上没有场分量.

- 均匀平面波的表达式

  - $ \bm E = \bm e_x E_x = \bm e_x E_0 \e^{\j (\varphi - k z)} $.
  - $ \bm E = \bm e_x E_0 \cos(\omega t - k z + \varphi) $.
  - $ \bm H = \bm e_y H_y = \bm e_y \dfrac{E_0}{\sqrt{\mu/\ve}} \e^{\j(\varphi - k z)} $.
  - $ \bm H = \bm e_y \dfrac{E_0}{\sqrt{\mu / \ve}} \cos(\omega t - k z + \varphi) $.


#### 6.1.2  理想介质中均匀平面波的特性

- 周期性
  - 时间相位 $ \omega t $.
  - 空间相位 $ k z $.
    - 波数：$ k = \omega \sqrt{\mu \ve} $.
    - 相位常数（相移常数）$ \beta = k $.
    - 波长：$ \lambda = \dfrac{2\pi}{\beta} = \dfrac{2\pi}{\omega\sqrt{\mu\ve}} = \dfrac{T}{\sqrt{\mu\ve}} $.
- 相速度
  - $ v = \dfrac{\omega}{k} = \dfrac{1}{\sqrt{\mu \ve}} $.
  - 理想介质属于非色散媒质.
  - 真空中 $ v = \dfrac{1}{\mu_0 \ve_0} = c $.
  - $ v = \lambda f $.
- 坡印廷矢量
  - $ \bm S_\text{avg} = \dfrac{1}{2} \Re\pqty{\bm E \cp \bm H^*} = \dfrac{E_0^2}{2\sqrt{\mu/\ve}} \bm e_z $.
  - 理想介质中的均匀平面波是没有能量损失的等幅波.
  - $ w_\text e = \dfrac{\ve E^2}{2} = \dfrac{\ve E_0^2}{2} \cos^2(\omega t - kz + \varphi) $.
  - $ w_\text m = \dfrac{\mu H^2}{2} = \dfrac{\ve E_0^2}{2} \cos^2(\omega t - kz + \varphi) $.
- 波阻抗（本振波阻抗）
  - $ \eta := \dfrac{E_x}{H_y} = \sqrt{\dfrac{\mu}{\ve}} $.
  - 真空中波阻抗 $ \eta_0 = 120 \pi\ \Omega \approx 377\ \Omega $.
  - 理想介质中的波阻抗是实数，即电场矢量与磁场矢量同相位.
  - $ \bm H = \dfrac{1}{\eta} \bm e_\xi \cp \bm E $，其中 $ \bm e_\xi $ 为传播方向.
  - $ \bm E = \eta \bm H \cp \bm e_\xi $.

#### 6.1.3  理想介质中均匀平面波的一般表达式

- 沿 $z$ 轴方向传播
  - 复数形式 $ \bm E = (\bm e_x E_{x0} \e^{\j\varphi_x} + \bm e_y E_{y0} \e^{\j\varphi_y}) \e^{-\j kz} = \bm E_0 \e^{-\j kz} $.
  - 瞬时值形式 $ \bm E = \bm e_x E_{x0} \cos(\omega t - kz + \varphi_x) + \bm e_y E_{y0} \cos(\omega t - kz + \varphi_y) $.
- 沿任意方向传播



### 6.2  电磁波的极化

电磁场矢量随时间变化的规律称为电磁波的极化，又称为偏振.

对于均匀平面波，只需研究场强适量即可.
$$
\begin{align}
E_x &= E_{x0} \cos(\omega t - kz + \varphi_x), \\
E_y &= E_{y0} \cos(\omega t - kz + \varphi_y).
\end{align}
$$

#### 6.2.1  线极化

两种线极化：

1. 当 $ \varphi_x = \varphi_y $ 时，
   1. $ \dfrac{E_x}{E_y} = \dfrac{E_{x0}}{E_{y0}} $.
   2. $ \alpha := \arctan\dfrac{E_y}{E_x} = \arctan\dfrac{E_{y0}}{E_{x0}} $.
2. 当 $ \vqty{\varphi_x - \varphi_y} = \pi $ 时，
   1. $ \dfrac{E_x}{E_y} = -\dfrac{E_{x0}}{E_{y0}} $.
   2. $ \alpha := \arctan\dfrac{E_y}{E_x} = -\arctan\dfrac{E_{y0}}{E_{x0}} $.

#### 6.2.2  圆极化

记 $ E = E_{x0} = E_{y0} $，当 $ \vqty{\varphi_x - \varphi_y} = \dfrac{\pi}{2} $ 时，$ \vqty{\bm E} = E $.

1. 当 $ \varphi_x - \varphi_y = \dfrac{\pi}{2} $ 时，
   1. $ \alpha = \omega t - k z  + \varphi_x $.
   2. 此时称为右旋圆极化.
2. 当 $ \varphi_y - \varphi_x = \dfrac{\pi}{2} $ 时，
   1. $ \alpha = -(\omega t - k z  + \varphi_x) $.
   2. 此时称为左旋圆极化.

#### 6.2.3  椭圆极化

消去 $t$，记 $ \varphi_0 = \varphi_x - \varphi_y $，得
$$
\dfrac{E_x^2}{E_{x0}^2} - 2\dfrac{E_x E_y}{E_{x0} E_{y0}} \cos\varphi_0 + \dfrac{E_y^2}{E_{y0}^2} = \sin^2 \varphi_0.
$$

```mathematica
Cos[a + b]^2 - 2 Cos[a + b] Cos[a + c] Cos[b - c] + Cos[a + c]^2 // Simplify
```



#### 6.2.4  极化波的合成与分解

- 线极化波
  - 彼此正交且时间相位相同的线极化波，合成仍为线极化波.
  - 分解为圆极化波：$ \bm E = (\bm e_x + \j \bm e_y) + (\bm e_x - \j \bm e_y) $.
- 圆极化波：$ \bm E = \dfrac{\bm e_x + \j \bm e_y}{\sqrt 2} $.
- 椭圆极化波：



6.3  导电媒质中的均匀平面波

6.3.1  导电媒质中的波动方程与均匀平面波

对于线性、均匀、各向同性的导电媒质，

- 复数麦克斯韦方程组
  - $ \curl \bm H = \bm J + \j\omega \bm D = (\sigma + \j\omega \ve) \bm E = \j\omega \ve^\e \bm E $.
  - $ \curl \bm E = -\j\omega \bm B = -\j\omega \mu \bm H $.
  - 等效复介电常数：$ \ve^\e = \ve - \j \dfrac{\sigma}{\omega} $.
- 亥姆霍兹方程：$ \grad^2 \bm E + \omega^2 \mu \ve^\e \bm E = 0 $.
  - $ k' = \omega \sqrt{\mu \ve^\e} = \sqrt{\omega^2 \mu \ve - \j\omega \mu \sigma} \equiv -\j(\alpha + \j\beta) $.
  - $ \alpha = \omega \sqrt{
    	\dfrac{\mu\ve}{2} \pqty{
    		\sqrt{1 + \dfrac{\sigma^2}{\omega^2 \ve^2}} - 1
    	}
    } $.
  - $ \beta = \omega \sqrt{
    	\dfrac{\mu\ve}{2} \pqty{
    		\sqrt{1 + \dfrac{\sigma^2}{\omega^2 \ve^2}} + 1
    	}
    } $.










第二章：3, 5, 8, 9, 12, 22, 24, 25, 29,

第三章：6, 7, 8, 9, 11,

第四章：1, 9, 11, 17, 19,

第六章：2, 4, 5, 7, 16, 22,

第七章：3, 4, 5, 6, 7, 8, 9, 10, 14, 18, 21, 30,















