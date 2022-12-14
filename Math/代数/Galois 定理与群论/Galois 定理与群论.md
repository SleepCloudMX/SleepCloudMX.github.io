<h1 align="center">Galois 定理与群论</h1>

$$
\newcommand{\aqty}[1]{\expval{#1}}

\newcommand{\F}{\mathbb{F}}
$$

## 普及篇

**元数**: 即群的阶数.

**不变子群 (Invarient Subgruop)**: 即正规子群.

**极大不变真子群**: 类比于极大理想.

**组合因数 (Composition Factors)**: 设 $ G_{i+1} $ 是 $ G_i $ 的极大不变真子群, 则 $ \vqty{G_i}/\vqty{G_{i+1}} $ 称为 $ G = G_0 $ 的组合因数.

- 一个群分成一列极大不变真子群的分法可能不唯一, 但所得的组合因数是不变的.

**可解群 (Solvable Group)**: 如果一个群的组合因数都是质数, 那么这个群称为可解群.

**正规置换群 (Regular Substitution Group)**

**伽罗瓦函数**: $ V = m_1x_1 + m_2x_2 + \cdots + m_nx_n $,

一定可以选择 $m$, 使得 $x$ 的每种置换都改变函数的值, 将其记为 $ V_1, V_2, \cdots, V_{n!} $, 令
$$
P(y) \equiv (y-V_1)(y-V_2)\cdots(y-V_{n!}),
$$
展开后在数域 $\F$ 中分解因数, 其中不可约的部分设为
$$
(y-V_1)(y-V_2) = y^2 - (V_1+V_2)y + V_1V_2,
$$
则使之结果不变的置换构成群 $ S_{n-2} \oplus \Z_2 $, 称为 **方程在数域 $\F$ 中的群**.

假设这个不可约部分记作 $G(y)$, 则 $ G(y) = 0 $ 称为 **伽罗瓦分解式**.

---

求方程在一个数域中的群的方法:

:star: 若方程的<u>根的任意一个有理函数的值</u>在一个数域中, 且有理函数的系数也在这个数域中, 那么<u>方程在这个数域中的群</u>的一切置换不改变这个有理函数的值. 否则至少有一个置换可以改变其值.

---

- $ x^3 + cx + d = 0 $ 在有理数域中的群是 $ \aqty{(123), (132)} = S_3 $.

---

如果方程在一个数域中的群是元数为素数的循环正规置换群, 则此方程有根式解.
$$
x_1 + \rho^k x_2 + \rho^{2k}x_3 + \cdots + \rho^{(n-1)k} x_n = \gamma_k.
$$

---

辅助方程式的取法: $ y^2 = (x_1-x_2)^2(x_2-x_3)^2\cdots(x_{n-1}-x_n)^2 $ (判别式), 当 $n=2$ 时, $ (x_1-x_2)^2 = b^2 - 4ac $.

---

**抽象群**: 所有同构的群是同一个抽象群.



## 基础篇

### 道路群

**拓扑等价** (**同伦**): 若一条道路可以通过连续的变化变成另一条道路, 则称这两条道路拓扑等价, 或同伦.

- 道路的运算是结合的.

**流形**

- 同伦于道路 $p$ 的道路类: $ [p] $.

例子:

1. 一个圆周: $ \aqty{[a]} \approx \Z $.

2. 两个不环连的圆周: $ \aqty{[a], [b]} $ (不交换).

3. 两个环连的圆周: $ \aqty{[a], [b]} \approx \Z \oplus \Z $ (交换).

   $ [ab] = [a][b] = [b][a] = [ba] $.



























