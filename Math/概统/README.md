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

这是我阅读陈希孺概统和东大概统所整理的笔记, 此外还补充了一些其它的性质与结论.

- **主线**: 读书笔记与总结.

  - [概率论](概率论.pdf)
    - 事件的概率
    - 随机变量及概率分布
    - 随机变量的数字特征
  - [数理统计](数理统计.pdf)
    - 参数估计
    - 假设检验

- **附录**: 大概就是 "字典" 吧, 暂时还不太完整.

  - [笔记附录 (PDF)](概统笔记附录.pdf): 便于查看目录.

  - [笔记附录 (HTML)](概统笔记附录.html): 可以直接在网页内打开图像链接并调整图像参数.

    - 概统常用积分表
      - 可以数归, 但建议使用 Euler 积分换元.
      - 除极少数公式外不必记忆, 遇到现推或查表即可.

    - 常见分布及其性质
      - 分为三个部分
        - 一维离散型随机分布
        - 一维连续性随机分布
        - 多维连续性随机分布.
      - 每个分布分为四个方面
        - 基础概念: 记号, 理解, 密度函数, 概率分布等.
        - 数字特征: 期望, 方差, 中位数, 矩, 偏度, 峰度等.
        - 其它性质: 应用, 变量函数的分布, 统计量的分布等.
        - 参数估计: 矩估计, 极大似然估计, 区间估计, 贝叶斯估计等.
    - 数列和常数
      - 卡特兰数 (明安图数)
      - 卡特兰常数: 这里有许多积分, 但概统用不到.

---

<font color=red>注意:</font>

不同教材采用的符号不同, 甚至定义也不同.

出于个人习惯,

1. 交并差补我采用了 $AB, A+B, A-B, \overline{A}$ 的符号.
2. 随机变量的概率使用 $P(X = i)$ 而不是 $ P\Bqty{X=i} $.
3. 正态分布的上 $\alpha$ 分位数有时候用 $u_\alpha$, 有时候用 $z_\alpha$.
4. F 分布的上 $\alpha$ 分位数有时候用 $F_\alpha(m, n)$, 有时候用 $ F_{m, n}(\alpha) $.

等等, 不过这些一般不会引起歧义.

常用分布的符号则比较容易产生误解, 如几何分布有如下常见定义:

1. $ \mathrm{GE}(p) : P(X = i) = p(1-p)^i $.

   这样定义的一部分原因是为了使得

   1. $ \mathrm{GE}(p) \sim NB(1, p) $.
   2. 若 $\soneto{X}{n}$ 独立同分布 $\mathrm{GE}(p)$, 则 $ \splus{X}{n} \sim NB(r, p) $.

2. $ \mathrm{G}(p) : P(X = i) = p(1-p)^{i-1} $.

   这样定义可以简化其数学期望与母函数的表达式.

3. $ \mathrm{Geo}(q) : P(X = i) = (1-q)q^i $.

   这样定义的好处是: 若 $ X_i \sim \mathrm{Geo}(q_i) $ 相互独立, 则 $ \min_i X_i \sim \mathrm{Geo}(\prod_i q_i) $.

如果遵守这样的约定, 则不会有歧义, 但有时候甚至无法用名称区分, 如指数分布:

1. $ E(\lambda): \lambda \e^{-\lambda x} $.
2. $ E(\lambda): \dfrac{1}{\lambda} \e^{-\tfrac{x}{\lambda}} $. (此笔记不会采用这个记号)

更有甚者, 在不同的资料上能看到四种不同的负二项分布定义, 相应的数字特征结论也有所区别.

诸如此类都是定义分歧的重灾区, 建议在正式使用时预先说明所选取的定义. 我的笔记里使用的分布记号均与附录中相同, 而对一些容易区分的符号可能有混用的情况 (如上 $\alpha$ 分位数).
