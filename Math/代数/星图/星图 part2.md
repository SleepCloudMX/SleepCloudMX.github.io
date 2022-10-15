<h1>星图 - 代数篇 2</h1>

$$
\nonumber
\newcommand{\bm}[1]{\boldsymbol{#1}}
\newcommand{\e}{\textup{e}}
\newcommand{\i}{\textup{i}}
\newcommand{\Beta}{\textup{B}}
\newcommand{\ve}{\varepsilon}
\newcommand{\P}{\mathbb{P}}

\newcommand{\trans}{^\mathrm{T}}
\newcommand{\inv}{^{-1}}
\newcommand{\adj}[1]{^{\pqty{#1^*}}}

\newcommand{\oneton}{1,2,\cdots,n}
\newcommand{\onetos}{1,2,\cdots,s}
\newcommand{\onetok}{1,2,\cdots,k}
\newcommand{\oneto}[1]{1,2,\cdots,#1}
\newcommand{\soneto}[2]{#1_1, #1_2, \cdots, #1_{#2}}

\DeclareMathOperator{\st}{s.t.\,}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\r}{r}
\DeclareMathOperator{\vec}{vec}

\newcommand{\LRA}{\Leftrightarrow}
\newcommand{\RLA}{\Leftrightarrow}
\newcommand{\LA}{\Leftarrow}
\newcommand{\RA}{\Rightarrow}

\newcommand{\lra}{\leftrightarrow}
\newcommand{\rla}{\leftrightarrow}
\newcommand{\la}{\leftarrow}
\newcommand{\ra}{\rightarrow}

\newcommand{\QLRA}{\quad\RLA\quad}
\newcommand{\QRLA}{\quad\LRA\quad}

\newcommand{\capop}{\displaystyle\mathop\cap\limits}
\newcommand{\cupop}{\displaystyle\mathop\cup\limits}
\newcommand{\oplusop}{\mathop\oplus\limits}
\newcommand{\otimesop}{\mathop\otimes\limits}
\newcommand{\bigoplusop}{\mathop\bigoplus\limits}
\newcommand{\bigotimesop}{\mathop\bigotimes\limits}
$$

[TOC]

## 随记

### 10. 判断矩阵对角化

**定理**

> 设 $ A \in M_n(\C) $, 则 $A$ 可对角化的充要条件是 $A$ 的==最小多项式==没有重根.

- 若==特征多项式== (零化多项式) 没有重根, 则 $A$ 可对角化.

**例 1** 设 $A$ 是 $n$ 阶复矩阵, 且存在正整数 $m$, 使得 $ A^m = E $, 求证 $A$ 与对角阵相似.

**证明** 零化多项式 $ f(x) = x^m - 1 $ 无重根, 故可相似对角化.



**例 2** 设 $ n (n > 1) $ 阶方阵 $A$ 满足 $ A^2 - 5A + 6E = O $, 求证 $A$ 相似于对角矩阵. 如果 $A$ 的行列式等于 $ 2^m 3^{n-m},\, 0<m<n,\, m \in \N^+ $, 求相似对角矩阵.

**解** $A$ 的特征值只有 $2$ 和 $3$, 故 $ A \sim \diag(2E_m, 3E_{n-m}) $.



**例 3** 设 $ X = (\soneto{x}{n})\trans,\,$$ Y = (\soneto{y}{n})\trans,\,$$ \alpha = Y'X,\,$$ A = E + XY' $.

1. 若 $ \alpha \ne -1 $, 求证: $A$ 可逆;
2. 若 $ \alpha = -1 $, 求证: $A$ 相似于对角阵.

**解**

1. 由 $ A^2 = (2 + \alpha)A - (1+\alpha)E $ 易知 $ A\inv = \dfrac{(2+\alpha)E-A}{1+\alpha} $.

2. $ A^2 = A $, 故最小多项式无重根, $A$ 与对角阵相似.



**例 4** 设 $ X, Y $ 分别为 $ m \cp n $ 和 $ n \cp m $ 矩阵, $ YX = E_n,\, A = E_m + XY $. 求证: $A$ 相似于对角矩阵.

**解** 同理易证.



### 11. 同时上三角化

**例 1** :star: 设 $ A, B $ 都是 $n$ 阶==复矩阵==, 满足 $ AB = BA $, 求证: 存在 $n$ 阶可逆矩阵 $P$, 使得 $ P\inv AP $ 与 $ P\inv BP $ 都是==上三角矩阵==.

- 矩阵可交换, 则有公共的特征向量. 数归可证.
- 矩阵与伴随矩阵可交换.



**例 2** 设 $A$ 为幂零矩阵, $B$ 为实可逆矩阵, 求证:

1. $ \vqty{A+E} = 1 $;
2. 若 $ AB = BA $, 则 $ \vqty{A+B} = \vqty{B} $.

**证明**

1. 幂零矩阵的特征值都是 $0$. 利用 Jordan 标准形可证.
2. $ \vqty{A+B} = \vqty{P\inv (A+B) P} = \vqty{P\inv AP + P\inv BP} = \vqty{P\inv BP} = \vqty{B} $.



### 12. 根与不可约性

**例 1** 设 $ f(x) = x^7 + 7x^2 + 1 $, 证明:

1. $f(x)$ 在 $ \Q $ 上不可约;
2. $ f(x) $ 至少存在一个实根 $ \alpha $;
3. $ \forall \beta \in \Q,\, \exist u(x) \in \Q[x],\, \st u(\alpha) = \dfrac{1}{\alpha-\beta} $.

**解**

1. 作平移变换 $ x = y-1 $, 用 Eisenstein 判别法.
2. 奇数次多项式必有实根.
3. $ u(x)(x-\beta) + v(x)(x^7+7x^2+1) = 1 $.



### 13. Frobenius 矩阵

**定义**

> 对数域 $\P$ 上的一个多项式 $ d(\lambda) = \lambda^n + a_1\lambda^{n-1} + \cdots + a_n $, 称矩阵
> $$
> A = \begin{pmatrix}
> 0 & 0 & \cdots & 0 & -a_n \\
> 1 & 0 & \cdots & 0 & -a_{n-1} \\
> 0 & 1 & \cdots & 0 & -a_{n-2} \\
> \vdots & \vdots && \vdots & \vdots \\
> 0 & 0 & \cdots & 1 & -a_1 \\
> \end{pmatrix}
> $$
> 称为多项式 $ d(\lambda) $ 的 **伴侣阵** (或 **友阵**、**Frobenius 矩阵**).

- $A$ 的特征多项式是 $ d(\lambda) $
- 不变因子是 $ 1, \cdots, 1, d(\lambda) $, 特征多项式恰好为最小多项式.

**例 1** 设 $ \lambda_1, \lambda_2, \lambda_3 $ 是多项式 $ f(x) = x^3 + x^2 + x - 1 $ 的根, $ g(x) = x^2 + x + 1 $, 求一个以 $ g(\lambda_1), g(\lambda_2), g(\lambda_3) $ 为根的有理系数多项式 $ p(x) $.

**解**
$$
A = \begin{pmatrix}
0 & 0 & 1 \\
1 & 0 & -1 \\
0 & 1 & -1 \\
\end{pmatrix},
\quad
g(A) = \begin{pmatrix}
1 & 1 & 0 \\
1 & 0 & 1 \\
1 & 0 & 0 \\
\end{pmatrix},
\\
p(x) = \vqty{\lambda E - g(A)}
= \lambda^3 - \lambda^2 - \lambda - 1.
$$



### 14. 秩 $1$ 矩阵的性质

**命题**

> 对任意 $ A \in M_n(\P) $, 则 $ \r(A) = 1 $ 当且仅当存在两个非零列向量 $ \alpha, \beta $, 使得 $ A = \alpha \beta\trans $.

**推论**	对于秩 $1$ 矩阵 $A$,

- 其特征值为 $ 0, \cdots, 0, \tr(A) $.
- $ A^k = \tr(A)^{k-1} A $.
- 若 $ \tr(A) \ne 0 $, 则 $A$ 可相似对角化.

注: 注意到 $ A^2 = \tr(A)A $, 设 $ f(x) = x^2 - \tr(A)x $, 则 $f(x)$ 是 $A$ 的零化多项式. 最小多项式整除 $f(x)$, 故没有重根, 即 $A$ 与对角矩阵性阿斯.



### 15. 覆盖定理

**例 1**	证明: 数域 $\P$ 上的有限维线性空间 $V$ 不能被它的有限个真子空间覆盖, 即不存在真子空间 $ \soneto{V}{m} $, 使得 $ V \subseteq V_1 \cup \cdots \cup V_m $.

注: 若 $\P$ 是有限域, 则其上的线性空间总可以表示成有限个真子空间的并.



**例 2**	设 $A$ 是 $n$ 维线性空间 $V$ 上的线性变换, 对于 $ v \in V $, 记 $ m_v(x) $ 为使得 $ m_v(A)v = 0 $ 成立的次数最低的首一多项式, 这个多项式也叫做 $v$ 的最小多项式. 证明: 存在 $ v \in V $, 使得 $v$ 的最小多项式 $ m_v(x) $ 恰好等于 $A$ 的最小多项式 $ m(x) $.



### 16	Test for Divisibility

Let $n$ be an integer with decimal representation $ a_k a_{k-1} \cdots a_1 a_0 $.

| Divisor | Test Method                                     |
| ------- | ----------------------------------------------- |
| $2$     | $ 2 \mid a_0 $.                                 |
| $3$     | $ 3 \mid a_k + a_{k-1} + \cdots + a_1 + a_0 $.  |
| $4$     | $ 4 \mid a_1a_0 $.                              |
| $5$     | $ 5 \mid a_0 $.                                 |
| $6$     | Divisible by both $2$ and $3$.                  |
| $7$     | $ 7 \mid a_2a_1a_0 - a_5a_4a_3 + \cdots $.      |
| $8$     | $ 8 \mid a_2a_1a_0 $.                           |
| $9$     | $ 9 \mid a_k + a_{k-1} + \cdots + a_1 + a_0 $.  |
| $10$    | $ a_0 = 0 $.                                    |
| $11$    | $ 11 \mid a_0 - a_1 + a_2 - \cdots (-1)^ka_k $. |
| $12$    | Divisible by both $3$ and $4$.                  |
| $13$    | $ 13 \mid a_2a_1a_0 - a_5a_4a_3 + \cdots $.     |





























