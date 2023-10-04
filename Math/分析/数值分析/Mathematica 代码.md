<h1 align="center">Mathematica 代码</h1>

$$
% 设置
\renewcommand{\d}{\displaystyle}
\newcommand{\aneg}[1]{\hspace{-0.75em}&#1&\hspace{-0.75em}\d}
\newcommand{\aneq}{\aneg{=}}
\newcommand{\overaneg}[2]{\hspace{-0.75em}&\overset{#1}{#2}&\hspace{-0.75em}\d}
\newcommand{\overaneq}[1]{\overaneg{#1}{=}}
% 上述指令用于在使用 array 环境时调整等号左右间距
\newcommand{\noeq}{&\hspace{1.3em}}
% 上述指令用于 align 环境中, 类似与 &= 但不显示等号.
\newcommand{\ltag}[1]{\label{#1}\tag{#1}}

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
\newcommand{\conj}{^\rm{H}}
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
\newcommand{\Norm}[1]{\norm\big{#1}}
\newcommand{\Angle}[1]{\left|\hspace{-0.1em}\underline{\hspace{0.1em}#1}\right.}

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
\DeclareMathOperator{\cond}{cond}

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
\newcommand{\dtft}{\overset{\rm F}{\rla}}
\newcommand{\lt}{\overset{\cal L}{\rla}}
\newcommand{\bt}{\overset{\cal B}{\rla}}
\newcommand{\zt}{\overset{\cal Z}{\rla}}
\newcommand{\bzt}{\overset{\cal Z_B}{\rla}}
\newcommand{\lzt}{\overset{\cal Z_L}{\rla}}
\newcommand{\rzt}{\overset{\cal Z_R}{\rla}}
$$

[TOC]

## 1  矩阵操作

> 更详细的用法参考官网，这里不再列出；本章笔记的主要目的是

### 1.1  矩阵的输入

#### 1.1.1  通过模板

面板 - 数学助手（或书写助手） - 排版 - 矩阵模板.



#### 1.1.2  一般矩阵

```mathematica
matA = {{1, -2, 2}, {-2, -2, 4}, {2, 4, -2}};	(* 创建矩阵 *)
matB = Table[i + j, {i, 3}, {j, 3}]				(* 利用 Table 创建 *)
matA = Array[a, {3, 2}]							(* 符号矩阵 *)
```



#### 1.1.3  特殊矩阵

```mathematica
ConstantArray[a, {m, n}]	(* 常量矩阵, 每个元素都是数值 a *)
IdentityMatrix[n]			(* 单位矩阵 *)
DiagonalMatrix[list, k]		(* 第 k 对角线为 list 的矩阵 *)
HilbertMatrix[n]			(* 希尔伯特矩阵 *)
SparseArray					(* 稀疏矩阵 *)
```



### 1.2  基础操作

#### 1.2.1  常用函数

```mathematica
A // MatrixForm		(* 矩阵形式 *)

Length[A]			(* 矩阵的行数 *)
Length[A[[1]]]		(* 矩阵的列数 *)

MatrixQ[A]					(* 判断是否为矩阵 *)
DiagonalMatrixQ[A]			(* 对角矩阵 *)
UpperTriangularMatrixQ[A]	(* 上三角矩阵 *)
SymmetricMatrixQ[A]			(* 对称矩阵 *)
PositiveDefiniteMatrixQ[A]	(* 正定矩阵 *)

AbsoluteTiming[]	(* 内部表达式的运行时间 *)
```



#### 1.2.2  提取元素

| 提取元素 | 操作                          | 说明                                  |
| -------- | ----------------------------- | ------------------------------------- |
| 矩阵元素 | `m[[ i, j ]]`                 | 第 i, j 个元素                        |
|          | `m[[ i, j ]] = a`             | 重新设置元素 { i,j } 为 a             |
|          | `m[[i]][[j]]`                 | 第 i, j 个元素                        |
| 矩阵的行 | `m[[ i ]]`                    | 第 i 行                               |
|          | `m[[ i ]] = a`                | 重新设置第 i 行的所有元素为 a         |
|          | `m[[ i ]] = {a1, a2, …}`      | 重新设置第 i 行的各个元素为 {a1,a2,…} |
| 矩阵的列 | `m[[ All, j ]]`               | 第 j 列                               |
|          | `m[[ All, j ]] = a`           | 重新设置第 j 列的所有元素为 a         |
|          | `m[[ All, j ]] = {a1, a2, …}` | 重新设置第 j 列的各个元素为 {a1,a2,…} |



#### 1.2.3  提取范围

| 提取范围 | 操作                  | 说明                                           |
| -------- | --------------------- | ---------------------------------------------- |
| 双分号   | `m[[i0 ;; i1]]`       | 第 i0 行到第 i1 行的元素                       |
|          | `m[[i0;;i1;;k]]`      | 步长为 k                                       |
|          | `m[[i0 ;;]]`          | 第 i0 行到最后一行的元素                       |
|          | `m[[;; i1]]`          | 第一行到第 i1 行的元素                         |
|          | `m[[i0;;i1, j0;;j1]]` | 第 i0 行到第 i1 行，第 j0 列到第 j1 列的子矩阵 |
| 列表下标 | `m[[{i1, i0...}]]`    | 交换顺序为 i1、i0...                           |



### 1.3  基础运算

以 `A = {{1, 2}, {3, 4}}`  为例，

#### 1.3.1  逐元素运算

1. 加法

```mathematica
Plus[A, B]
A + B		(* 矩阵加法, 对应元素相加 *)
A + {1, 2}	(* 前两行元素分别加 1、2 *)
A + 1		(* 所有元素 + 1 *)
```

2. 减法

```mathematica
Subtract[A, B]
A - B
A - {1, 2}
A - 1
```

3. 乘法

```mathematica
Times[A, B]
A * B			(* 逐元素相乘 *)
A * {1, 2}		(* 第一行乘 1, 第二行乘 2 *)
A * 3			(* 所有元素乘 3 *)
```

4. 除法

```mathematica
Divide[A, B]	(* 逐元素相减 *)
A / B
A / {1, 2}
A / 3
```

5. 次方

```mathematica
Power[A, 2]
A ^ B
A ^ {1, 2}
A ^ -1
```



#### 1.3.2  矩阵的运算

1. 点乘（矩阵乘法）

```mathematica
Dot[A, B]
A . B			(* 矩阵乘法 *)
A . {1, 2}		(* 矩阵乘向量 *)
A . 3			(* 错误的写法, 这相当于 A * 0.3 *)
{1, 2} . {1, 2}	(* 点乘 *)
```

2. 直积（Kronecker 积）：`KroneckerProduct[A, B]`

3. 求逆：`Inverse[A]`

4. 转置：`Transpose[A]`
5. 共轭：`Conjugate[A]`
6. 共轭转置：`ConjugateTranspose[A]`
7. 次幂：`MatrixPower[A, n]`
8. 叉积：`Cross[v1, v2]`



#### 1.3.3  其他的函数

1. 行列式：`Det[A]`
2. 迹：`Tr[A]`
3. 秩：`MatrixRank[A]`
4. 求和

```mathematica
Total[A]		(* 按列求和, 所有行相加, 即 Total[A, 1] *)
Total[A, 2]		(* 第一维求和后第二维求和, 即所有元素之和 *)
Total[A, {2}]	(* 按行求和, 第二维求和, 即所有列相加 *)
```

5. 范数

```mathematica
Norm[a]		(* 实数的绝对值, 即 Abs[a] *)
Norm[z]		(* 复数的模长, 即 Abs[z] *)

(* 向量的模长 *)
Norm[v]				(* 欧氏范数, 即 Sqrt[Conjugate[v].v], 即 Norm[v, 2] *)
Norm[v, p]			(* p-范数, 即 Total[Abs[v]^p]^(1/p) *)
Norm[v, Inifity]	(* 无穷范数, 即 Max[Abs[v]] *)

(* 矩阵的范数 *)
Norm[m]					(* 谱范数, 即 Norm[m, 2] *)
Norm[m, 1]				(* 列范数, 即 Max[Total[m]] *)
Norm[m, Infinity]		(* 行范数, 即 Max[Total[A, {2}]] *)
Norm[m, "Frobenius"]	(* F 范数, 即 Sqrt[Tr[Transpose[A] . A]], 或 Sqrt[Total[A^2, 2]] *)
```

6. 特征值

```mathematica
{lambda, xi} = Eigensystem[A]
(* 验证 *)
lambda[[1]]*xi[[1]] // Simplify
A . xi[[1]] // Simplify
```



## 2  线性方程组

### 2.1  线性求解

#### 2.1.1  `LinearSolve`

- 使用方法
  - `LinearSolve[m, b]`
  - `LinearSolve[m]`
  - `LinearSolve[m][b]`
- 应用范围
  - 数值矩阵
  - 符号矩阵
  - 稀疏矩阵
- 未确定的系统
  - 矩阵可以不是方阵.
  - `LinearSolve` 返回一个可能的特解.
  - `Solve` 返回通解.



#### 2.1.2  精确和符号矩阵

**符号矩阵求解**

```mathematica
LinearSolve[{{r, s}, {t, u}}, {y, z}]		(* 符号求解 *)
{{r, s}, {t, u}} . % == {y, z} // Simplify	(* 验证 *)
```

**数值矩阵求解**

```mathematica
m = {{1, 2}, {3, 4}};
b = {{5, 6}, {7, 8}};	(* b 可以有多行 *)
LinearSolve[m, b] // MatrixForm
```



| 精确求解的方法             | 说明                        |
| -------------------------- | --------------------------- |
| "CofactorExpansion"        | 拉普拉斯 cofactor 展开      |
| "DivisionFreeRowReduction" | 不可除行化简的 Bareiss 方法 |
| "OneStepRowReduction"      | 标准行化简                  |



#### 2.1.3  近似解数值矩阵

| 近似求解的方法 | 说明                                |
| -------------- | ----------------------------------- |
| "Banded"       | 带状矩阵求解器                      |
| "Cholesky"     | 正定 Hermitian 矩阵的 Cholesky 方法 |
| "Krylov"       | 迭代 Krylov 稀疏求解器              |
| "Multifrontal" | 直接稀疏 LU 分解                    |
| "Pardiso"      | 并行直接稀疏求解器                  |



### 2.2  矩阵分解

#### 2.2.1  LU 分解

**求解算法**

```mathematica
(* 以数值矩阵为例 *)
matA = {{2, 1, 1}, {1, 3, 2}, {1, 2, 2}};
arrb = {4, 6, 5};
(* 选主元的 LU 分解 *)
{lu, p, c} = LUDecomposition[matA];
l = LowerTriangularize[lu, -1] + IdentityMatrix[Length[matA]];
u = UpperTriangularize[lu];
(* 求解线性方程组 *)
x = Inverse[u] . Inverse[l] . arrb[[p]] // MatrixForm
(* 重构原矩阵 *)
l.u == m[[p]]
```

**任意精度**

```mathematica
MatrixForm /@ LUDecomposition[
	RandomReal[5, {3, 3},
	WorkingPrecision -> 10
]
```



#### 2.2.2  Cholesky 分解

**求解算法**

```mathematica
(* 矩阵输入与验证 *)
matA = {{2, 1}, {1, 2}}
HermitianMatrixQ[matA]			(* 实数可直接使用 SymmetricMatrixQ[matA] *)
PositiveDefiniteMatrixQ[matA]	(* 正定矩阵 *)

(* Cholesky 分解 *)
u = CholeskyDecomposition[matA]				(* 分解 *)
x = Inverse[u] . Inverse[Transpose[u]] . b	(* 求解 *)
(* 验证 *)
ConjugateTranspose[u] . u == matA			(* 重构 *)
matA . x == b
```

**任意精度**

```mathematica
(* 任意精度 *)
RandomVariate[WishartMatrixDistribution[
	7, {{1, 1/2, 0}, {1/2, 2, -1/2}, {0, -1/2, 1}}], 
	WorkingPrecision -> 15
]
```









































**参考资料**

- [ ] Mathematica 官网
  - [ ] [矩阵和线性代数—Wolfram 语言参考资料](https://reference.wolfram.com/language/guide/MatricesAndLinearAlgebra.html).
- [ ] Mathematica 语法
  - [x] [mathematica 矩阵基础操作+绘图（施工中...） - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/453075140).
  - [ ] [Mathematica 中特殊符号的使用规则 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/165180358).
- [ ] 线代
  - [ ] [代数基础 | Kronecker积 (zhihu.com)](https://www.zhihu.com/tardis/zm/art/139335389?source_id=1005).
- [ ] 