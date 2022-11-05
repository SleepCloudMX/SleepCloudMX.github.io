# README

$$
% 字符
\renewcommand{\i}{\textup{i}}
\newcommand{\e}{\textup{e}}
\newcommand{\ve}{\varepsilon}
%\newcommand{\Beta}{\mathit{B}}

% 上下标
\newcommand{\trans}{^\mathrm{T}}
\newcommand{\inv}{^{-1}}
\newcommand{\adj}[1]{^{\pqty{#1^*}}}

% 特定内容
\newcommand{\oneton}{1,2,\cdots,n}
\newcommand{\oneto}[1]{1,2,\cdots,#1}

\newcommand{\ssto}[3]{#1_1 #3 #1_2 #3 \cdots #3 #1_{#2}}
\newcommand{\ssup}[3]{#1^1 #3 #1^2 #3 \cdots #3 #1^{#2}}
\newcommand{\soneto}[2]{\ssto{#1}{#2}{,}}
\newcommand{\splus}[2]{\ssto{#1}{#2}{+}}

\newcommand{\aqty}[1]{\expval{#1}}
\newcommand{\pbqty}[1]{\left(#1\right]}
\newcommand{\bpqty}[1]{\left[#1\right)}
\newcommand{\floor}[1]{\left\lfloor#1\right\rfloor}
\newcommand{\ceil}[1]{\left\lceil#1\right\rceil}

\newcommand{\ccdots}{\cdot\cdots\cdot}

% 下面几个只是为了方便一点点而已
\newcommand{\dx}{\dd{x}}
\newcommand{\dy}{\dd{y}}
\newcommand{\dz}{\dd{z}}
\newcommand{\dt}{\dd{t}}
\newcommand{\ds}{\dd{s}}

% 如果只使用 \dd{x}\dd{y} 的话, 中间会有多余的间隔.
\newcommand{\ddd}[2]{\,\mathrm{d}#1\mathrm{d}#2}
\newcommand{\dxdy}{\,\mathrm{d}x\mathrm{d}y}
\newcommand{\dydz}{\,\mathrm{d}y\mathrm{d}z}
\newcommand{\dzdx}{\,\mathrm{d}z\mathrm{d}x}
\newcommand{\dudv}{\,\mathrm{d}u\mathrm{d}v}
\newcommand{\dxdydz}{\,\mathrm{d}x\mathrm{d}y\mathrm{d}z}

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



% 函数名
\DeclareMathOperator{\Var}{Var}
\DeclareMathOperator{\Cov}{Cov}
\DeclareMathOperator{\Corr}{Corr}

% 运算符
\newcommand{\dint}{\displaystyle\int}
\newcommand{\inti}{\dint_{-\infty}^{+\infty}}
\newcommand{\intoi}{\dint_0^{+\infty}}

\newcommand{\intl}{\displaystyle\int\limits}
\newcommand{\iintl}{\displaystyle\iint\limits}
\newcommand{\iiintl}{\displaystyle\iiint\limits}

\newcommand{\dsum}{\displaystyle\sum}
\newcommand{\nsum}{\dsum_{n=1}^\infty}
\newcommand{\nosum}{\dsum_{n=0}^\infty}
\newcommand{\insum}{\dsum_{i=1}^n}

\newcommand{\dprod}{\displaystyle\prod}
\newcommand{\nprod}{\dprod_{n=1}^\infty}

\newcommand{\xlim}{\lim\limits_{x\to x_0}}
\newcommand{\nlim}{\lim\limits_{n\to\infty}}
\newcommand{\clim}[1]{\lim\limits_{#1\to\infty}}
\newcommand{\ulim}{\overline\lim\limits_{n\to\infty}}
\newcommand{\dlim}{\underline\lim\limits_{n\to\infty}}
% 注意这里的 d 是 down, 而不是 displaystyle

% 缩写
\newcommand{\bm}[1]{\boldsymbol{#1}}
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

% displaytsyle 的指令缩写
\newcommand{\ddv}{\displaystyle\dv}
\newcommand{\dpdv}{\displaystyle\pdv}
$$

这是我阅读陈希孺概统和东大概统所整理的笔记.

- [概统笔记](陈希孺概统.pdf)
  - 以陈希孺概统的内容为主线, 补充东大概统的内容, 以及一些其它的计算和拓展.
- [笔记附录](概统附录.pdf)
  - 概统常用积分表
    - 基本上使用 Euler 积分进行推导 (也可以数归, 但是一般性不强).
    - 其中 Euler 积分性质的证明不建议看上述概统书中给出的, 不直观并且不易记忆, 可以参考笔记 [特殊函数](Math\分析\特殊函数\README.html) 或 [数学分析](Math\分析\陈纪修数分\数学分析笔记 (3).pdf).
  - 常见分布及其性质
    - 大概就是 "字典" 吧, 暂时还不太完整.
    - 分为三个部分
      - 一维离散型随机分布
      - 一维连续性随机分布
      - 多维连续性随机分布.
    - 每个分布分为四个方面
      - 基础概念: 记号, 理解, 密度函数, 概率分布.
      - 数字特征: 期望, 方差, 中位数, 矩, 偏度, 峰度.
      - 其它性质: 应用, 变量函数的分布, 统计量的分布.
      - 参数估计: 矩估计, 极大似然估计, 区间估计, 贝叶斯估计, 无偏估计.

---

<font color=red>注意:</font>

不同教材采用的符号不同, 甚至定义也不同.

出于个人习惯, 交并差补我采用了 $AB, A+B, A-B, \overline{A}$ 的符号 (尽管不构成群).

在几何分布中, 陈希孺概统书上采用的是 $ P(X=i) = p(1-p)^{i} $ 的定义, 为了避免歧义, 将其记为 $GE(p)$. 这样定义的一部分原因是为了使得

1. $ GE(p) \sim NB(1, p) $.
2. 若 $\soneto{X}{n}$ 独立同分布 $GE(p)$, 则 $ \splus{X}{n} \sim NB(r, p) $.

更常见的定义 ($G(p)$) 可能是 $ P(X=i) = p(1-p)^{i-1} $, 或者说 $ G(p) \sim GE(p) + 1 $. 这么做的好处大概就是简化其数学期望和母函数的表达式吧.

至于负二项分布, 在不同的资料上甚至能看到四种不同的定义, 相应的数字特征结论也有所区别. 等等这些都是定义分歧的重灾区, 建议在正式使用时预先说明所选取的定义.


