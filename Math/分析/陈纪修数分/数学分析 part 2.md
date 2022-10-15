<h1 align="center">数学分析 part 2</h1>

$$
% 字符
\newcommand{\e}{\textup{e}}
\newcommand{\i}{\textup{i}}
\newcommand{\ve}{\varepsilon}
\newcommand{\inv}{^{-1}}
\newcommand{\trans}{^\mathrm{T}}
\newcommand{\D}{\mathbb{D}}
\newcommand{\E}{\mathbb{E}}
\newcommand{\F}{\mathbb{F}}

\newcommand{\eqs}{\quad\;}



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



% 函数名
\DeclareMathOperator{\diam}{diam}



% 运算符
\newcommand{\dint}{\displaystyle\int}
\newcommand{\inti}{\int_{-\infty}^{+\infty}}
\newcommand{\intoi}{\int_0^{+\infty}}

\newcommand{\intl}{\displaystyle\int\limits}
\newcommand{\iintl}{\displaystyle\iint\limits}
\newcommand{\iiintl}{\displaystyle\iiint\limits}

\newcommand{\dsum}{\displaystyle\sum}
\newcommand{\nsum}{\dsum_{n=1}^\infty}
\newcommand{\nosum}{\dsum_{n=0}^\infty}
\newcommand{\insum}{\dsum_{i=1}^n}

\newcommand{\dprod}{\displaystyle\prod}
\newcommand{\nprod}{\displaystyle\prod_{n=1}^\infty}

\newcommand{\xlim}{\lim\limits_{x\to x_0}}
\newcommand{\nlim}{\lim\limits_{n\to\infty}}
\newcommand{\clim}[1]{\lim\limits_{#1\to\infty}}
\newcommand{\ulim}{\overline\lim\limits_{n\to\infty}}
\newcommand{\dlim}{\underline\lim\limits_{n\to\infty}}



% 缩写
\newcommand{\bm}[1]{\boldsymbol{#1}}
\newcommand{\d}{\displaystyle}

\newcommand{\RLA}{\Leftrightarrow}
\newcommand{\LA}{\Leftarrow}
\newcommand{\RA}{\Rightarrow}

\newcommand{\QRLA}{\quad\RLA\quad}
\newcommand{\QRA}{\quad\RA\quad}
\newcommand{\QLA}{\quad\LA\quad}

\newcommand\ddv{\displaystyle\dv}
\newcommand\dpdv{\displaystyle\pdv}
$$

## 第 12 章	多元函数的微分学

### 定理

**定理 12.1.1**	设 $D \subset \R^2$ 为开集, $(x_0, y_0) \in D$ 为一顶点. 如果函数 $z = f(x, y), (x, y) \in D$ 在 $(x_0, y_0)$ 可微, 那么对于任一方向 $ \bm v = (\cos\alpha, \sin\alpha) $, $f$ 在 $(x_0, y_0)$ 点沿方向 $\bm v$ 的方向导数存在, 且
$$
\pdv{f}{\bm v} (x_0, y_0) = \pdv{f}{x} (x_0, y_0) \cos\alpha + \pdv{f}{y} (x_0, y_0)\sin\alpha.
$$
**定理 12.1.2**	设函数 $z = f(x, y)$ 在 $(x_0, y_0)$ 点的某个邻域上存在偏导数, 并且偏导数在该点连续, 那么 $f$ 在该点可微.

---

方向导数的梯度表述
$$
\pdv{f}{\bm v} (x_0, y_0) = \grad f \cdot \bm v = \norm{\grad f(x_0, y_0)} \cdot \cos(\grad f, \bm v).
$$
**梯度的性质**

1. $ \grad c = 0 $.
2. $ \grad (\alpha f + \beta g) = \alpha\grad f + \beta \grad g $.
3. $ \grad (f\cdot g) = f \cdot \grad g + g \cdot \grad f $.
4. $ \grad \pqty{\dfrac{f}{g}} = \dfrac{g\cdot\grad f - f \cdot \grad g}{g^2} $.

**定理 12.1.3**	如果函数 $z = f(x, y)$ 的两个混合偏导数 $f_{xy}$ 和 $f_{yx}$ 在点 $(x_0, y_0)$ 连续, 那么 $ f_{xy}(x_0, y_0) = f_{yx}(x_0, y_0) $.

---

向量值函数 $\bm f$ 在 $\bm x^0$ 点的 **Jacobi 矩阵**: $\bm f'(\bm x^0) \equiv \mathrm{D} \bm f(\bm x^0) \equiv \bm J_\bm f(\bm x^0) = \pqty{\dpdv{f_i}{x_j}(\bm x^0)}_{m\cp n}$.

$ \dd{\bm x} = (\soneto{\dd{x}}{n})\trans $.

**定理12.1.4**	向量值函数 $\bm f$ 在 $\bm x^0$ 点可微的充要条件是它的坐标分量函数 $ f_i(\soneto{x}{n})\; (i = \oneto{m}) $ 都在 $\bm x^0$ 点可微. 此时成立微分公式
$$
\dd{\bm y} = \bm f'(\bm x^0) \dd{\bm x}.
$$

- 向量值函数连续、可导和可微，等价于它的每一个坐标分量函数连续、可导、可微.

---

**定理 12.2.1&2&3 (链式法则)**	设 $\bm{g}$ 在 $\bm x^0 \subset D_g$ 点可导, $f$ 在 $ \bm y^0 = \bm g(\bm x^0) $ 点可微, 则复合函数及其偏导数为
$$
\begin{align}
z &= f \circ \bm g = f[
	y_1(\soneto{x}{n}), y_2(\soneto{x}{n}), \cdots, y_m(\soneto{n})
]
\\ \\
\bm J_z(\bm x^0) &= \pqty{
	\pdv{z}{x_1}, \pdv{z}{x_2}, \cdots, \pdv{z}{x_n}
}_{\bm x = \bm x^0}
\\
&= \pqty{
	\pdv{z}{y_1}, \pdv{z}{y_2}, \cdots, \pdv{z}{y_m}
}_{\bm y = \bm y_0}
\begin{pmatrix}
	\dpdv{y_1}{x_1} & \dpdv{y_1}{x_2} & \cdots & \dpdv{y_1}{x_n} \\
	\dpdv{y_2}{x_1} & \dpdv{y_2}{x_2} & \cdots & \dpdv{y_2}{x_n} \\
	\vdots & \vdots && \vdots \\
	\dpdv{y_m}{x_1} & \dpdv{y_m}{x_2} & \cdots & \dpdv{y_m}{x_n} \\
\end{pmatrix}
\end{align}
$$

更一般地：
$$
(\bm f \circ \bm g)'(\bm x) = \bm f'(\bm g(\bm x)) \cdot \bm g'(\bm x).
$$

---

一阶全微分的形式不变性.

**凸区域**	$ \forall \bm x_0, \bm x_1 \in D, \forall \lambda \in [0, 1]: \bm x_0 + \lambda(\bm x_1 - \bm x_0) \in D $.

**定理 12.3.1 (中值定理)** :star:	若二元函数在凸区域可微, 则
$$
\exist \theta \in (0, 1): f(x_0 + \Delta x, y_0 + \Delta y) - f(x_0, y_0) = f_x(x_0+\theta\Delta x, y_0 + \theta\Delta y) \Delta x + f_y(x_0+\theta\Delta x, y_0 + \theta\Delta y) \Delta y.
$$
**推论 12.3.1**	如果二元函数在某区域 (无需凸区域) 的偏导恒为零, 则在此区域为常值函数.

**定理 12.3.2 (n 元函数的中值定理)**

**定理 12.3.3 (Taylor 公式)** :star:	设函数 $f(x, y)$ 在点 $(x_0, y_0)$ 的邻域 $ U = O((x_0, y_0), r) $ 上具有 $k+1$ 阶连续偏导, 则对于 $U$ 内每一点 $ (x_0 + \Delta x, y_0 + \Delta y) $ 都成立
$$
\begin{align}
	f(x_0 + \Delta x, y_0 + \Delta y) &= f(x_0, y_0) + \pqty{
		\Delta x \pdv{x} + \Delta y \pdv{y}
	} f(x_0, y_0) +
	\\
	&\eqs \dfrac{1}{2!} \pqty{
		\Delta x \pdv{x} + \Delta y \pdv{y}
	}^2 f(x_0, y_0) + \cdots +
	\\
	&\eqs \dfrac{1}{k!} \pqty{
		\Delta x \pdv{x} + \Delta y \pdv{y}
	}^k f(x_0, y_0) + R_k,
\end{align}
$$
其中 $ R_k = \dfrac{1}{(k+1)!} \pqty{
		\Delta x \dpdv{x} + \Delta y \dpdv{y}
	}^p f(x_0 + \theta\Delta x, y_0 + \theta\Delta y) $$ \quad (0<\theta<1) $ 称为 **Lagrange 余项**.

注: 构造辅助函数 $ \varphi(t) = f(x_0 + t\Delta x, y_0 + t \Delta y) $, 通过一元函数的泰勒公式推导.

**推论 12.3.2**	带 **Peano 余项**的 Taylor 公式, 即余项为 $ o\pqty{\pqty{\sqrt{\Delta x^2 + \Delta y^2}}^k} $.

---

**中心差商** :star:
$$
\begin{align}
\pdv{f}{x} (x, y) &\approx \dfrac{
	f\pqty{x + \dfrac{h}{2}, y} - f\pqty{x - \dfrac{h}{2}, y}
}{h}
\\ \\
\pdv[2]{f}{x}\ (x, y) &\approx \dfrac{1}{h} \bqty{
	\pdv{f}{x} \pqty{x + \dfrac{h}{2}, y} -
	\pdv{f}{x} \pqty{x - \dfrac{h}{2}, y}
}
\\
&\approx \dfrac{
	f(x+h, y) - 2f(x, y) + f(x-h, y)
}{h^2}
\end{align}
$$
**五点差分公式** :star:
$$
\begin{align}
&\eqs \pqty{
	\pdv[2]{x} + \pdv[2]{y}
} f(x, y)
\approx \Delta_h f(x, y)
\\
&\equiv \dfrac{
	f(x+h, y) + f(x, y+h) + f(x-h, y) + f(x, y-h) - 4f(x, y)
}{h^2}.
\end{align}
$$
其截断误差为 $ O(h^2) $.

**定理 12.3.4**	$n$ 元函数的 Taylor 公式.

---

**定理 12.4.1 (一元隐函数存在定理)**	若二元函数 $F(x, y)$ 满足条件:

1. $ F(x_0, y_0) = 0 $.
2. 在闭矩形 $ D = \Bqty{(x, y) \mid \vqty{x-x_0} \le a, \vqty{y-y_0} \le b} $ 上, $F(x, y)$ 连续, 且具有连续偏导.
3. $ F_y(x_0, y_0) \ne 0 $.

那么

1. 在点 $(x_0, y_0)$ 附近可从函数方程 $F(x, y)=0$ 中唯一确定隐函数 $y=f(x)$, 它满足 $ F(x, f(x)) = 0,\, y_0 = f(x_0) $.
2. 隐函数 $y=f(x)$ 在 $ x \in O(x_0, \rho) $ 上连续.
3. 隐函数 $y=f(x)$ 在 $ x \in O(x_0, \rho) $ 上具有连续的导数, 且

$$
\dv{y}{x} = - \dfrac{F_x(x, y)}{F_y(x, y)}.
$$

---

**定理 12.4.2 (多元隐函数存在定理)**

**定理 12.4.3 (多元向量值隐函数存在定理)**
$$
\begin{cases}
	F(x, y, u, v) = 0, \\
	G(x, y, u, v) = 0.
\end{cases}
\QRA
\dbinom{u}{v} = \dbinom{f(x, y)}{g(x, y)}
$$

$$
\begin{pmatrix}
	\dpdv{u}{x} & \dpdv{u}{y} \\
	\dpdv{v}{x} & \dpdv{v}{y} \\
\end{pmatrix}
= - \begin{pmatrix}
	F_u & F_v \\
	G_u & G_v \\
\end{pmatrix}\inv
\begin{pmatrix}
	F_x & F_y \\
	G_x & G_y \\
\end{pmatrix}
$$

**定理 12.4.4**	$m$ 个 $n+m$ 元函数确定的 $n$ 个隐函数的偏导公式.

---

**Jacobi 行列式**	$ \dpdv{(x, y)}{(u, v)} $.

**定理 12.4.5 (逆映射定理)**

**推论** :star:	一元函数反函数求导公式的推广.
$$
\pdv{(x, y)}{(u, v)} \cdot \pdv{(u, v)}{(x, y)} = 1.
$$
**定理 12.4.6** :star:	设 $D$ 为 $\R^2$ 中的开集, 且映射 $ \bm f: D \to \R^2 $ 在 $D$ 上具有连续导数. 如果 $\bm f$ 的 Jacobi 行列式在 $D$ 上恒不为零, 那么 $D$ 的像集 $\bm f(D)$ 是开集.

---

空间曲线的参数方程, 光滑曲线, 切向量, 法平面, 张成的平面

**定理 12.5.1**	曲线 $ \begin{cases} F(x, y, z) = 0, \\ G(x, y, z) = 0. \end{cases} $ 在 $P_0$ 点的法平面就是 $ \grad F(P_0) $ 和 $ \grad G(P_0) $ 张成的过 $P_0$ 的平面.

---

<h4>无条件极值</h4>

**定理 12.6.1 (必要条件)**	设 $\bm x_0$ 为函数 $f$ 的极值点, 且 $f$ 在 $\bm x_0$ 点可偏导, 则 $f$ 在 $\bm x_0$ 点的各个一阶偏导数都为零, 即
$$
f_{x_1}(\bm x_0) = f_{x_2}(\bm x_0) = \cdots f_{x_n}(\bm x_0) = 0.
$$
**定理 12.6.2 (极值点判别法)**	设 $(x_0, y_0)$ 为 $f$ 的驻点, $f$ 在 $(x_0, y_0)$ 附近具有二阶连续偏导数, 记
$$
A = f_{xx}(x_0, y_0),\, B = f_{xy}(x_0, y_0),\, C = f_{yy}(x_0, y_0),
\\
H = \begin{vmatrix}
	A & B \\
	B & C \\
\end{vmatrix}
= AC - B^2.
$$

1. 当 $H>0$ 时, $A>0$ 则取到极小值, $A<0$ 则取到极大值.
2. 当 $H<0$ 时, 非极值.

**定理 12.6.3 (多元函数极值点判别法)**	当二次型
$$
g(\zeta) = \sum_{i, j = 1}^n f_{x_ix_j} (\bm x_0) \zeta_i \zeta_j
$$

1. 正定时, $f(\bm x_0)$ 为极小值;
2. 负定时, $f(\bm x_0)$ 为极大值;
3. 不定时, $f(\bm x_0)$ 不是极值.

**推论 12.6.1**	记 $a_{ij} = f_{x_ix_j}(\bm x_0)$, 定义 $f$ 的 $k$ 阶 **Hessian 矩阵**
$$
A_k = \begin{pmatrix}
	a_{11} & a_{12} & \cdots & a_{1n} \\
	a_{21} & a_{22} & \cdots & a_{2n} \\
	\vdots & \vdots && \vdots \\
	a_{k1} & a_{k2} & \cdots & a_{kk} \\
\end{pmatrix}
$$

1. 若 $ \det \bm A_k > 0\; (k = \oneto{n}) $, 则二次型 $g(\xi)$ 是正定的, 此时为极小值;
2. 若 $ (-1)^k \det \bm A_k > 0\; (k = \oneton) $, 则二次型 $g(\xi)$ 是负定的, 此时为极大值.

---

最小二乘法, 拟合曲线 (经验公式), "牧童" 经济模型.

条件极值, 目标函数, 约束条件, Lagrange 函数与乘数, Lagrange 乘数法

**定理 12.7.1 (条件极值的必要条件)**	若点 $ \bm x_0 = (\soneto{x^0}{n}) $ 为函数 $f(\bm x)$ 满足约束条件的条件极值点, 则必存在 $m$ 个常数 $ \soneto{\lambda}{m} $, 使得在 $\bm x_0$ 点成立
$$
\grad f = \lambda_1 \grad g_1 + \lambda_2 \grad g_2 + \cdots + \lambda_m \grad g_m.
$$
构造 Lagrange 函数
$$
L(\soneto{x}{n}, \soneto{\lambda}{m}) = f(\soneto{x}{n}) - \sum_{i=1}^m \lambda_i g_i(\soneto{x}{n}).
$$
则条件极值点就在
$$
\begin{cases}
\d \pdv{L}{x_k} = \pdv{f}{x_k} - \sum_{i=1}^m \lambda_i \pdv{g_i}{x_k} = 0, \\
g_l = 0.
\end{cases}
$$
的所有解对应的点中.

**定理 12.7.2**	当且仅当下述方阵为正定 (负定) 矩阵时, $\bm x_0$ 为满足约束条件的条件极小 (大) 值点.
$$
\pqty{
	\pdv{L}{x_k}{x_l}\ (\bm x_0, \soneto{\lambda}{m})
}_{m \cp m}.
$$

---



### 笔记

<h4>注意事项</h4>

- 求导过程中可以不展开某些变量, 但要注意变量与其它变量==是否有关系==.

<h4>基本概念的相互关系</h4>

- 可微
  - 连续, 且可偏导.
  - 方向偶数存在.
  - 链式法则成立.
- 偏导连续
  - 可微.
- 混合偏导连续
  - 混合偏导相等.

---

<h4>计算思路</h4>

- **求曲线的切线与法平面**
  - 参数方程 $ (x, y, z) = (x(t), y(t), z(t)) $.
    - $ \vb*{s} = (x'(t), y'(t), z'(t)) $.
  - 平面交线 $ F(x, y, z) = G(x, y, z) = 0 $.
    - 利用 $ \vb*{s} \perp \grad F,\, \vb*{s} \perp \grad G $.
    - $ \vb*{s} = \pqty{\d\pdv{(F, G)}{(y, z)}, \pdv{(F, G)}{(z, x)}, \pdv{(F, G)}{(x, y)}} $. :star:
- **求曲面的法线与切平面**
  - 一般方程 $ F(x, y, z) = 0 $.
    - $ \vb*{s} = (F_x, F_y, F_z) $.
  - 参数方程 $ \begin{cases} x = x(u, v), \\ y = y(u, v), \\ z = z(u, v). \end{cases} $
    - 利用 $ z = z(u(x, y), v(x, y)) $.
    - $ \vb*{s} = \pqty{\d\pdv{(y, z)}{(u, v)}, \pdv{(z, x)}{(u, v)}, \pdv{(x, y)}{(u, v)}} $. :star:

<h4>特殊曲面</h4>

- **证明曲面为柱面**
  - 证明思路
    - 在任意一点的切平面平行于一条特定直线.
    - 在任意一点的法向量垂直于一个定向量. :star:
  - 例子
    - $ f(a_1x+b_1y+c_1z, a_2x+b_2y+c_2z) = 0 $.
    - 特别的, $ f(ax+by+cz) = 0 $ 退化为平面, 且与 $(a, b, c)$ 垂直.
- **曲面过顶点**
  - 若 $F$ 为 $k$ 次齐次方程, 即 $ F(tx, ty, tz) = t^k F(x, y, z) $, 则 $ F(x, y, z) = 0 $ 过原点.
  - 推论: $ G\pqty{\dfrac{y}{x}, \dfrac{z}{x}} = 0 $ 或 $ G^*\pqty{\dfrac{y}{x}, \dfrac{z}{y}, \dfrac{x}{z}} $ 过原点.

<h4>一些结论</h4>

- **相交椭圆面积**
  $$
  \begin{cases}
  	Ax + By + Cz = 0, \\
  	\dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} + \dfrac{z^2}{c^2} = 1.
  \end{cases}
  \QRA S = \pi abc \sqrt{\dfrac{
  	A^2 + B^2 + C^2
  }{
  	A^2 a^2 + B^2 b^2 + C^2 c^2
  }}.
  $$

- **求极值**

  - 设 $ a>0,\, a_i>0\; (i = \oneton) $, 则 $ f(\soneto{x}{n}) = x_1^{a_1} x_2^{a_2} \cdots x_n^{a_n} $ 在约束条件 $ \splus{x}{n} = a $ 下的最大值为
    $$
    \prod_{i=1}^n \pqty{
    	\dfrac{aa_i}{\splus{a}{n}}
    }^{a_i}
    = \dfrac{
    	a_1^{a_1} a_2^{a_2} \cdots a_n^{a_n}
    }{
    	\pqty{
    		\frac{\splus{a}{n}}{a}
    	}^{\splus{a}{n}}
    }
    $$
    

---

 $k$ 次齐次方程 $ f(\soneto{ax}{s}) = a^n f(\soneto{x}{n}) $ 的欧拉公式为
$$
\sum_{\alpha}^s \pdv{f}{x_\alpha} \cdot x_\alpha = nf.
$$
且其逆命题成立.

推论: 每一项的偏导数都是 $n-1$ 次齐次函数, 即
$$
\sum_{\beta=1}^s \pdv{x_\beta} \pdv{f}{x_\alpha} \cdot x_\beta = (n-1) \pdv{f}{x_\alpha}.
$$

---

**Hadamard 公式**	设 $n$ 元函数 $f$ 具有连续偏导数, 则有
$$
f(\bm y) - f(\bm x) = \sum_{i=1}^n \int_0^1 (y_i - x_i) \pdv{f}{x_i} (\bm x + t(\bm y - \bm x)) \dd{t}.
$$
注: 利用 $ F(t) \equiv f(\bm x + t(\bm y - \bm x)),\, F(1) - F(0) = \int_0^1 F'(t)\dd{t} $.

---

变换变量
$$
\pdv[2]{f}{x} + \pdv[2]{f}{y} = \pdv[2]{f}{r} + \dfrac{1}{r^2} \pdv[2]{f}{\theta} + \dfrac{1}{r} \pdv{f}{r}.
$$

$$
A\pdv[2]{f}{x} + 2B\pdv{f}{x}{y} + C\pdv[2]{f}{y} = 0 \QRLA \pdv{f}{u}{v} = 0,
\quad \begin{cases}
	u = x + \lambda y, \\
	v = x + \mu y.
\end{cases}
$$

---



### 例题

1. $ \dd{^k f(ax+by+cz)} = f^{(k)}(ax+by+cz)(a\dd{x} + b\dd{y} + c\dd{z})^k $.

2. 设 $y = f(x, t)$, 其中 $t$ 是由 $F(x, y, t)=0$ 所确定的隐函数, 且 $f$ 和 $F$ 都具有连续偏导数, 则
   $$
   \dv{y}{x} = \dfrac{
   	\d \pdv{f}{x} \pdv{F}{t} - \pdv{f}{t} \pdv{F}{x}
   }{
   	\d \pdv{f}{t} \pdv{F}{y} + \pdv{F}{t}
   }.
   $$







## 第 13 章	重积分

### 定理

划分, 零边界区域

**定理 13.1.1**	有界点集 $D$ 是可求面积的充要条件是它的边界 $\partial D$ 的面积为 $0$. 即零边界区域是可求面积的.

- Dirichlet 函数形成的平面点集 $ S = \Bqty{(x, y) \mid 0 \le x \le 1,\, 0 \le y \le D(x)} $ 的边界为 $ \partial S = [0, 1] \times [0, 1] $, 面积为 $1$, 故 $S$ 是不可求面积的.

**性质 1**	若在已有的划分上添加有限条曲线进一步划分, 则 Darboux 大和不增, Darboux 小和不减.

**性质 2**	任何一个 Darboux 小和都不大于任何一个 Darboux 大和. 因此, 若记
$$
\begin{align}
& M_i = \sup f(x, y),\quad m_i = \inf f(x, y),\quad (x, y) \in \Delta D_i.
\\
& S = \sum_{i=1}^n M_i \Delta \sigma_i,\quad s = \sum_{i=1}^n m_i \Delta \sigma_i
\\
& I^* = \inf\Bqty{S},\quad I_* = \sup\Bqty{s}
\end{align}
$$
则有
$$
s \le I_* \le I^* \le S
$$
**性质 3**	$f(x, y)$ 在 $D$ 上可积的充要条件是
$$
\lim_{\lambda \to 0} (S-s) = \lim_{\lambda \to 0} \sum_{i=1}^n \omega_i \Delta \sigma_i = 0.
$$
其中 $ \omega_i = M_i - m_i $ 是 $f(x, y)$ 在 $\Delta D_i$ 上的 **振幅**. 此时成立
$$
\lim_{\lambda \to 0} s = \lim_{\lambda \to 0} S = \iint\limits_D f(x, y) \dd{\sigma}.
$$
**定理 13.1.2**	若 $f(x, y)$ 在零边界区域 $D$ 上连续, 那么它在 $D$ 上可积.

- 条件可放宽至==有界==, 但至多在==有限条==面积为零的曲线上不连续.

---

质心坐标.

**Peano 曲线**.

---

**性质 1 (线性性)**	$ \dint_\Omega (\alpha f + \beta g) \dd{V} = \alpha \int_\Omega f\dd{V} + \beta \int_\Omega g\dd{V} $.

**性质 2 (区域可加性)**	$ \dint_\Omega f\dd{V} = \int_{\Omega_1} f\dd{V} + \int_{\Omega_2} f\dd{V} $.

**性质 3**	$ \dint_{\Omega} \dd{V} = \Omega $ 的体积.

**性质 4 (保序性)**	$ f \le g \RA \dint_\Omega f\dd{V} \le \int_\Omega g\dd{V} $.

**性质 5**	$ mV \le \dint_\Omega f\dd{V} \le MV $.

**性质 6 (绝对可积性)**	$ \vqty{\dint_\Omega f\dd{V}} \le \dint_\Omega \vqty{f} \dd{V} $.

**性质 7 (乘积可积性)**

**性质 8 (积分中值定理)**	$ \dint_\Omega f \cdot g\dd{V} = f(\xi) \dint_\Omega g\dd{V} $.

---

**定理 13.2.1**	设二元函数 $f(x, y)$ 在闭矩形 $ D = [a, b] \times [c, d] $ 上可积. 若积分
$$
h(x) = \int_c^d f(x, y) \dd{y}
$$
对于每个 $ x \in [a, b] $ 存在, 则 $h(x)$ 在 $[a, b]$ 上可积, 并有等式
$$
\iint_D f(x, y) \dxdy = \int_a^b h(x) \dx = \int_a^b \pqty{
	\int_c^d f(x, y) \dy
} \dx = \int_a^b \dx \int_c^d f(x, y) \dy.
$$
**定理 13.2.2**	多重积分的上述公式.

**n 维单纯形** :star:	$ T_n =  \Bqty{(\soneto{x}{n}) \mid \soneto{x}{n} \ge 0,\, \splus{x}{n} \le h} $.

- $ V_n(a) = \dfrac{a^n}{n!} $.

---

<h4>重积分的变量代换</h4>

**定理 13.3.1 (二重积分变量代换公式)**

**定义 13.3.1**	形如
$$
\begin{align}
&T_x: x = x(u, v) = u,\, y = (u, v),
\\
&T_y: x = x(u, v),\, y = y(u, v) = v.
\end{align}
$$
的映射称为 **本原映射**.

**引理 13.3.1**	设 $T$ 为本原映射, 则对于每个属于 $B_n$ 的小矩形 $R$, 等式
$$
mT(R) = \vqty{
	\dpdv{(x, y)}{(u, v)}
}_{(\tilde{u}, \tilde{v})} mR.
$$
成立, 其中 $(\tilde{u}, \tilde{v})$ 为 $R$ 上某一点, $mT(R)$ 为其面积.

**引理 13.3.2**
$$
\iint\limits_{T(D)} f(x, y) \dxdy = \iint\limits_D f(x(u, v), y(u, v)) \vqty{
	\dpdv{(x, y)}{(u, v)}
} \ddd{u}{v}.
$$
**引理 13.3.3**	若 $T$ 满足定理 13.3.1 的假设, 则对于 $ \forall Q_0 = (u_0, v_0) \in U $, $T$ 在 $Q_0$ 附近可以表成两个具有连续导数的、一对一的本原映射的复合.

**定理 13.3.2 (n 重积分的变量代换)**

---

<h4>反常重积分</h4>

记 $ d(\Gamma) = \inf\Bqty{\sqrt{x^2+y^2} \mid (x,y) \in \Gamma} $ 为 $\Gamma$ 到原点的距离.

**引理 13.4.1**	设 $f(x, y)$ 为无界区域 $D$ 上的非负函数.如果 $ \Bqty{\Gamma_n} $ 是一列曲线, 它们割出的 $D$ 的有界子区域 $ \Bqty{D_n} $ 满足
$$
D_1 \subset D_2 \subset \cdots \subset D_n \subset \cdots,\quad
\nlim d(\Gamma(\gamma_n)) = +\infty.
$$
则反常积分 $ \d \iint_D f(x, y) \dxdy $ 在 $D$ 上收敛的充要条件: 数列 $ \Bqty{\d\iint_{D_n} f(x, y) \dxdy} $ 收敛, 且在收敛时成立
$$
\iint_D f(x, y) \dxdy = \nlim \iint_{D_n} f(x, y) \dxdy.
$$
**定理 13.4.1 (比较判别法)**

**定理 13.4.2** :star:	设 $D$ 为 $\R^2$ 上具有分段光滑边界的无界区域, 则 $f(x, y)$ 在 $D$ 上可积的==充要条件==是: $ \vqty{f(x, y)} $ 在 $D$ 上可积.

**推论 13.4.1 (Cauchy 判别法)**	设 $D$ 为用极坐标表示的区域
$$
D = \Bqty{(r, \theta) \mid 0 < a \le r < +\infty,\, \alpha \le \theta \le \beta,\, \alpha, \beta \in [0, 2\pi]}.
$$
其中 $ r = \sqrt{x^2+y^2} $. $f(x, y)$ 为定义在 $D$ 上的函数. 则

1. 如果存在正常数 $M$, 使得在 $D$ 上成立 $ \vqty{f(x, y)} \le \dfrac{M}{r^p} $, 则当 $p>2$ 时, $ \iint_D f(x, y) \dxdy $ 收敛.
2. 如果存在正常数 $m$, 使得在 $D$ 上成立 $ \vqty{f(x, y)} \ge \dfrac{m}{r^p} $, 则当 $p \le 2$ 时, $ \iint_D f(x, y) \dxdy $ 发散.

**定理 13.4.2**	设 $f(x, y)$ 在 $ D = \bpqty{a, +\infty} \times \bpqty{c, +\infty} $ 上连续, 且 $ \d \int_a^{+\infty} \dd{x} \int_c^{+\infty} f(x, y) \dd{y} $ 和 $ \d \int_a^{+\infty} \dd{x} \int_c^{+\infty} \vqty{f(x, y)} \dd{y} $ 都存在, 则 $f(x, y)$ 在 $D$ 上可积, 且等于累次积分.

**定理 13.4.4**	变量代换公式亦然成立, 且可由此推出积分==收敛==.

---

<h4>微分形式</h4>

:star: 有向面积, **外积**:
$$
\bm a \and \bm b = \begin{vmatrix}
	a_1 & a_2 \\
	b_1 & b_2 \\
\end{vmatrix}.
$$
**外积的性质**

1. 反称性: $ \bm a \and \bm b = - \bm b \and \bm a $.

   推论: $ \bm a \and \bm a = 0 $.

2. 双线性 (分配律)

   1. $ \bm a \and (\bm b + \bm c) = \bm a \and \bm b + \bm a \and \bm c $.
   2. $ (\bm a + \bm b) \and \bm c = \bm a \and \bm c + \bm b \and \bm c $.
   3. $ (\lambda \bm a) \and \bm b = \bm a \and (\lambda \bm b) = \lambda (\bm a \and \bm b) $.

**变量代换的微元关系**
$$
\begin{align}
\dxdy &= \vqty{\pdv{(x, y)}{(u, v)}} \dudv
\\
\dd{x} \and \dd{y} &= \pdv{(x, y)}{(u, v)} \dd{u} \and \dd{v}
\end{align}
$$
**一次微分形式** (**1-形式**) 全体记为 $ \Lambda ^1(U) $.
$$
a_1(\bm x) \dd{x_1} + a_2(\bm x) \dd{x_2} + a_n(\bm x) \dd{x_n},\quad
a_i(\bm x) \in C^1(U).
$$
**二次微分形式** (**2-形式**) 全体记为 $ \Lambda^2(U) $. 下式为其标准形式.
$$
\sum_{1 \le i < j \le n} g_{ij}(\bm x) \dd{x_i} \and \dd{x_j}.
$$
$k-$形式的标准形式为
$$
\sum_{1 \le \ssto{i}{k}{\lt} \le n} g_{\soneto{i}{k}} (\bm x)
$$
**微分形式的外积** :star:
$$
\begin{align}
\omega &= a_1(\bm x) \dd{x_1} + a_2(\bm x) \dd{x_2} + \cdots + a_n(\bm x) \dd{x_n},
\\
\eta &= b_1(\bm x) \dd{x_1} + b_2(\bm x) \dd{x_2} + \cdots + b_n(\bm x) \dd{x_n},
\\
\omega \and \eta &= \sum_{i, j = 1}^n a_i(\bm x) b_j(\bm x) \dd{x_i} \and \dd{x_j}
\\
&= \sum_{1 \le i < j \le n} \pqty{
	a_i(\bm x) b_j(\bm x) - a_j(\bm x) b_i(\bm x)
} \dd{x_i} \and \dd{x_j}
\\
&= \sum_{1 \le i < j \le n} \begin{vmatrix}
	a_i(\bm x) & a_j(\bm x) \\
	b_i(\bm x) & b_j(\bm x) \\
\end{vmatrix} \dd{x_i} \and \dd{x_j}.
\end{align}
$$

记 $ \Lambda = \Lambda^0 + \Lambda^1 + \cdots + \Lambda^n $, 其中元素的一般形式为 $ \omega = \splus{\omega}{n} $, $ \omega_i \in \Lambda^i $.

对于 $ \dd{x_I} = \dd{x_{i1}} \and \dd{x_{i2}} \and \cdots \and \dd{x_{ip}} $ 和 $ \dd{x_{J}} = \dd{x_{j1}} \and \dd{x_{j2}} \and \cdots \and \dd{x_{jq}} $, 定义外积
$$
\dd{x_I} \and \dd{x_J} = \dd{x_{i1}} \and \dd{x_{i2}} \and \cdots \and \dd{x_{ip}} \and \dd{x_{j1}} \and \dd{x_{j2}} \and \cdots \and \dd{x_{jq}}.
$$
对于 $ \omega = \dsum_{I} g_I(\bm x) \dd{x_I} $ 和 $ \eta = \dsum_J h_J(\bm x) \dd{x_J} $, 定义外积
$$
\omega \and \eta = \sum_{I, J} g_I(\bm x) h_J(\bm x) \dd{x_I} \and \dd{x_J}.
$$
对于 $0-$形式 $f$, 补充定义
$$
f\omega = f \and \omega = \sum_I f(\bm x) g_I(\bm x) \dd{x_I},\quad \omega \in \Lambda^p.
$$
**外积的性质**

**性质 1**	设 $ \omega \in \Lambda^p,\, \eta = \Lambda^q $, 则当 $ p+q>n $ 时, $ \omega \and \eta = 0 $.

**性质 2**	设 $ \omega \in \Lambda^p,\, \eta = \Lambda^q $, 则 $ \omega \and \eta = (-1)^{pq} \eta \and \omega $.

**推论 13.5.1**	设 $ \omega \in \Lambda^p $, 则当 $p$ 为奇数时, $ \omega \and \omega = 0 $.

**性质 3**	$ \forall \omega, \eta, \sigma \in \Lambda $, 成立分配律和结合律:

1. $ (\omega + \eta) \and \sigma = \omega \and \sigma + \eta \and \sigma $.

   $ \sigma \and (\omega + \eta) = \sigma \and \omega + \sigma \and \eta $.

2. $ (\omega \and \eta) \and \sigma = \omega \and (\eta \and \sigma) $.

**变量代换公式**
$$
T: y_1 = y_1(\soneto{x}{n}),\, y_2 = y_2(\soneto{x}{n}),\, \cdots,\, y_n = y_n(\soneto{x}{n}).
\\
\dd{y_1} \and \dd{y_2} \and \cdots \and \dd{y_n} = \dpdv{(\soneto{y}{n})}{(\soneto{x}{n})} \dd{x_1} \and \dd{x_2} \and \cdots \and \dd{x_n}.
$$
实际上, 对于 1-形式 $ \omega_j = \insum a_{ij} \dd{x_i} $, 有
$$
\ssto{\omega}{n}{\and} = \det(a_{ij}) \ssto{\dd{x}}{n}{\and}.
$$



### 笔记

<h4>特殊积分</h4>

- **Poisson 积分**: $ \dint_0^{+\infty} \e^{-x^2} \dd{x} = \dfrac{\sqrt{\pi}}{2} $.

- $ \dint\limits_{\splus{x^2}{n} \le 1} \dfrac{\dd x_1 \dd x_2 \cdots \dd x_n}{\sqrt{1 - \ssto{x^2}{n}{-} }} = \begin{cases} \dfrac{\pi^{m+1}}{m!}, & n = 2m+1, \\ \dfrac{2^m}{(2m-1)!!}, & n = 2m. \end{cases} $.

  注: 累次积分一次后, 即高维球的体积.

<h4>函数转积分</h4>

- $ \dfrac{\arctan{x}}{x} = \dint_0^1 \dfrac{\dd{y}}{1 + x^2y^2} $.



### 例题







## 第 14 章	曲线积分、曲面积分与场论

### 定理

**性质 1 (线性性)**

**性质 2 (路径可加性)**

**定理 14.1.1**	设 $L$ 为光滑曲线, 函数 $f(x, y, z)$ 在 $L$ 上连续, 则 $f(x, y, z)$ 在 $L$ 上的第一类曲线积分存在, 且
$$
\int_L f(x, y, z) \ds = \int_\alpha^\beta f(x(t), y(t), z(t)) \sqrt{x'^2(t) + y'^2(t) + z'^2(t)} \dt.
$$
**简单曲面**: 具有分段光滑边界的有界闭区域.
$$
\bm r = x(u, v) \bm i + y(u, v) \bm j + z(u, v) \bm k.
\\
S = \iint_D \norm{
	\bm r_u(u, v) \cp \bm r_v(u, v)
} \dudv.
$$
**定理 14.1.2** :star:	记曲面的 **Gauss 系数** 为
$$
\begin{align}
E &= \bm r_u \cdot \bm r_u = x_u^2 + y_u^2 + z_u^2,
\\
F &= \bm r_u \cdot \bm r_v = x_u x_v + y_u y_v + z_u z_v,
\\
G &= \bm r_v \cdot \bm r_v = x_v^2 + h_v^2 + z_v^2.
\end{align}
$$
则曲面的面积为 $ S = \d\iint_D \sqrt{EG-F^2} \dudv $.

- 注意到 $\d EG - F^2 = \bqty{\pdv{(y, z)}{(u, v)}}^2 + \bqty{\pdv{(z, x)}{(u, v)}}^2 + \bqty{\pdv{(x, y)}{(u, v)}}^2 = \norm{\bm r_u \cp \bm r_v}^2$.

**Schwarz 的例子**	可以将光滑曲线的弧长定义为内接折线长度的极限, 但不能推广到光滑曲面的面积定义. (如圆柱)

---

**第二类曲线积分**	令单位切向量为 $ \bm \tau = (\cos\alpha, \cos\beta, \cos\gamma) $, 则 $ \dint_L \bm f \cdot \bm \tau \dd{s} = \int_L \bm f \cdot \dd{\bm s} $.
$$
\int_L P \dd{x} + Q \dd{y} + R \dd{z} = \int_L \pqty{
	P\cos\alpha + Q\cos\beta + R\cos\gamma
} \ds
$$
**性质 1 (方向性)**

**性质 2 (线性性)**

**性质 3 (路径可加性)**

---

双侧曲面, 定向曲面, Mobius 带, 单侧曲面

**第二类曲面积分**	令单位法向量为 $ \bm n = (\cos\alpha, \cos\beta, \cos\gamma) $, $ \d\iint_\sum \bm f \cdot \bm n \dd{S} $.

**性质 1 (方向性)**

**性质 2 (线性性)**

**性质 3 (曲面可加性)**
$$
\dxdy := \dd{x} \and \dd{y} = a\cos\alpha \dd{S}
$$
**参数方程的曲面积分**
$$
\begin{align}
\iint_\sum \bm f \cdot \dd{\bm S}
&= \iint_\sum P \dd{y} \and \dd{z} + Q \dd{z} \and \dd{x} + R \dd{x} \and \dd{y}
\\
&= \iint_\sum P \dydz + Q \dzdx + R \dxdy
\\
&= \iint_\sum \pqty{
	P \cos\alpha + Q\cos\beta + R\cos\gamma
} \dd{S}
\\
&= \pm \iint_D \bqty{
	P \pdv{(y, z)}{(u, v)} + Q \pdv{(z, x)}{(u, v)} + R \pdv{(x, y)}{(u, v)}
} \dudv
\end{align}
$$

$$
\iint_\sum R(x, y, z) \dxdy = \pm \iint_{D_{xy}} R(x, y, z(x, y)) \dxdy.
$$

---

**简单闭曲线** (**Jordan 曲线**)	$t_1 \ne t_2 \RA \bm r(t_1) \ne \bm r(t_2)$.

**单连通区域**, **复连通区域**. **标准区域**, 

**定理 14.3.1 (Green 公式)**	设 $D$ 为平面上由光滑或分段光滑的简单闭曲线所围成的==单连通闭区域==. 如果函数 $P(x, y)$ 和 $Q(x, y)$ 在 $D$ 上具有连续偏导数, 那么
$$
\int\limits_{\partial D} P\dd{x} + Q\dd{y}
= \iint\limits_D \pqty{
	\pdv{Q}{x} - \pdv{P}{y}
} \dxdy,
$$
其中 $\partial D$ 取正向, 即 **诱导定向**.

---

:star: 取单位切向量为 $\bm\tau$, 单位外法向量为 $\bm n$, 那么
$$
\begin{align}
\iint\limits_D \pqty{\pdv{F}{x} + \pdv{G}{y}}\dxdy
&= \int\limits_{\partial D} F\dy - G\dx
= \int\limits_{\partial D} \bqty{
	F \sin(\bm \tau, x) - G \cos(\bm \tau, x)
} \ds
\\
&= \int\limits_{\partial D} \bqty{
	F\cos(\bm n, x) + G\cos(\bm n, y)
} \ds.
\end{align}
$$

---

:star: 求平面图形面积
$$
S = \int\limits_{\partial D} x\dy
= - \int\limits_{\partial D} y\dx
= \dfrac{1}{2} \int\limits_{\partial D} x\dy - y\dx.
$$

---

**定理 14.3.2 (Green 定理)**	设 $D$ 为平面上的单连通区域, $P(x, y),\, Q(x, y)$ 在 $D$ 上具有连续的偏导, 则下面的四个面体等价:

1. 对于 $D$ 内任意一条分段光滑的闭曲线 $L$ 有 $ \dint\limits_{L} P\dx + Q\dy = 0 $.
2. 曲线积分 $\dint\limits_L P\dx + Q\dy$ 与路径无关.
3. $ \exist U(x, y) \in D: \dd{U} = P\dx + Q\dy $.
4.  在 $D$ 内成立等式 $ \dpdv{P}{y} = \dpdv{Q}{x} $.

**定理 14.3.3**	曲线积分 $\dint\limits_L P\dx + Q\dy$ 与路径无关的充要条件是, 存在原函数 $U(x, y)$ 使得
$$
\int\limits_{\stackrel\frown{AB}} P\dx + Q\dy = U(x_B, y_B) - U(x_A, y_A).
$$
**定理 13.4 (Gauss 公式)**	下式 $\partial \Omega$ 的定向为外侧, 称为其 **诱导定向**.
$$
\iiint\limits_\Omega \pqty{\pdv{P}{x} + \pdv{Q}{y} + \pdv{R}{z}} \dxdydz
= \iint\limits_{\partial \Omega} P\dydz + Q\dzdx + R\dxdy.
$$

---

:star: 计算体积
$$
V = \iiint\limits_\Omega \dxdydz
= \iint\limits_{\partial \Omega} x\dydz
= \iint\limits_{\partial \Omega} y\dzdx
= \iint\limits_{\partial \Omega} z\dxdy
= \dfrac{1}{3} \iint\limits_{\partial \Omega} x\dydz + y\dzdx + z\dxdy.
$$

---

**定理 14.3.5 (Stokes 公式)**
$$
\begin{align}
\int\limits_{\partial \sum} P\dx + Q\dy + R\dz
&= \iint\limits_\sum 
\pqty{\pdv{R}{y} - \pdv{Q}{z}} \dydz +
\pqty{\pdv{P}{z} - \pdv{R}{x}} \dzdx +
\pqty{\pdv{Q}{x} - \pdv{P}{y}} \dxdy
\\
&= \iint\limits_\sum \bqty{
	\pqty{\pdv{R}{y} - \pdv{Q}{z}} \cos\alpha +
	\pqty{\pdv{P}{z} - \pdv{R}{x}} \cos\beta + 
	\pqty{\pdv{Q}{x} - \pdv{P}{y}} \cos\gamma
} \dd{S}.
\end{align}
$$

- 上式可用三阶行列式的记号表示, 不再列出.

---

<h4>外微分</h4>

**外微分例子**
$$
\begin{align}
\omega &= P(x, y) \dx + Q(x, y) \dy
\\
\dd{\omega} &= \pqty{
	\pdv{P}{x} \dx + \pdv{P}{y} \dy
} \and \dx + \pqty{
	\pdv{Q}{x} \dx + \pdv{Q}{y} \dy
} \and \dy
\\
&= \pqty{
	\pdv{Q}{x} - \pdv{P}{y}
} \dx \and \dy
\end{align}
$$

$$
\begin{align}
\omega &= P(x, y, z) \dx + Q(x, y, z) \dy + R(x, y, z) \dz
\\
\dd{\omega} &=
\pqty{\pdv{R}{y} - \pdv{Q}{z}} \dy \and \dz +
\pqty{\pdv{P}{z} - \pdv{R}{x}} \dz \and \dx +
\pqty{\pdv{Q}{x} - \pdv{P}{y}} \dx \and \dy
\end{align}
$$

$$
\begin{align}
\omega &= P(x, y, z) \dy \and \dz + Q(x, y, z) \dz \and \dx + R(x, y, z) \dx \and \dy
\\
\dd{\omega} &= \pqty{\pdv{P}{x} + \pdv{Q}{y} + \pdv{R}{z}} \dxdydz
\end{align}
$$

**外微分性质**

**性质 1**	设 $\omega$ 为 $k-$形式, $\eta$ 为 $l-$形式, 则
$$
\dd(\omega \and \eta)
= \dd{\omega} \and \eta + \dd{\eta} \and \omega
= \dd{\omega} \and \eta + (-1)^k \omega \and \dd{\eta}.
$$

- 设 $f \in \Lambda^0$ 为 $0-$形式, 则 $ \dd{^2 f} = 0 $.

**性质 2**	$ \forall \omega \in \Lambda: \dd{^2 \omega} = 0 $.

**Stokes 公式** :star:	$ \dint\limits_{\partial M} \omega = \int\limits_{M} \dd{\omega} $.

---

<h4>场论初步</h4>

数量场, 向量场; 稳定场, 不稳定场.

**梯度**	$\grad f = f_x \bm i + f_y \bm j + f_z \bm k$.

**方向导数**	$\dpdv{f}{\bm l} = \grad f \cdot \bm l$.

**单位法向量上**	$\dpdv{f}{\bm n} = \norm{\grad f}$.

**梯度的另一种表示**	$\grad f = \dpdv{f}{\bm n} \cdot \bm n$.

由数量场 $f$ 产生的向量场 $\grad f$ 称为 **梯度场**.

---

**通量**	$ \varPhi = \d\iint\limits_\sum \bm a \cdot \dd{\bm S} $.

**散度**	$ \div \bm a = \dpdv{P}{x} + \dpdv{Q}{y} + \dpdv{R}{z} $.

**定理 14.5.1**	散度是通量关于体积的变化率, 即穿出单位体积边界的通量, 即
$$
\div \bm a(M) = \lim_{V \to M}
\d\iint\limits_{\sum} \dfrac{
	\bm a \cdot \dd{\bm S}
}{mV}.
$$
由向量场 $\bm a$ 产生的数量场 $\div \bm a$ 称为 **散度场**.

**Gauss 公式**	$ \d\iiint\limits_\Omega \div \bm a \dd{V} = \iint\limits_{\partial \Omega} \bm a \vdot \dd{\bm S} $.

**电场的高斯定理**	$ \iintl_\sum \bm E \cdot \dd{\bm S} = \dfrac{q}{\ve_0} $.

---

**向量线** (**流线**)
$$
\dfrac{\dx}{P(x, y, z)} = \dfrac{\dy}{Q(x, y, z)} = \dfrac{\dz}{R(x, y, z)}.
$$

---

**环量与旋度**

流体在旋涡中心附近的速度 $ \bm v = \bm v_0 + \bm \omega \cp \bm r $.

定义向量 $ \bm B = \pqty{
	\dpdv{v_z}{y} - \dpdv{v_y}{z}
} \bm i + \pqty{
	\dpdv{v_x}{z} - \dpdv{v_z}{x}
} \bm j + \pqty{
	\dpdv{v_y}{x} - \dpdv{v_x}{y}
} \bm k = 2 \bm \omega $.

则 $ \dint\limits_\Gamma \bm v \cdot \dd{\bm s} = \iint\limits_\sum \bm B \cdot \dd{\bm S} $.

**环量**	$ \dint\limits_\Gamma \bm a \cdot \dd{\bm s} $.

**旋度**	$\curl \bm a(M) = \begin{pmatrix}
	\bm i & \bm j & \bm k \\
	\dpdv x & \dpdv y & \dpdv z \\
	P & Q & R
\end{pmatrix}_M$.

由向量场 $\bm a$ 产生的向量场 $\curl a$ 称为 **旋度场**.

若 $ \curl \bm a \equiv \bm 0 $, 则称 $\bm a$ 为 **无旋场**.

**Stokes 公式**	$ \d\iint\limits_{\sum} \curl \bm a \cdot \dd{\bm S} = \int\limits_{\partial \sum} \bm a \cdot \dd{\bm s} $.

**环量面密度**	$ \lim\limits_{\sum \to M} \intl_{\partial \sum} \dfrac{\bm a \cdot \dd{\bm s}}{m\sum} = \curl \bm a \cdot \dfrac{\bm n}{\norm{\bm n}} $.

**定理 14.5.2**	$\bm a$ 在 $M$ 点处沿旋度方向的环量面密度最大, 且最大值为 $ \norm{\curl \bm a(M)} $.

- 流体速度场中, 在与 $\curl \bm a$ 垂直的平面上, 沿单位面积边缘的环量最大, 达到角速度的模的两倍.

**磁场的安培环路定律**	$ \intl_\Gamma \bm B \cdot \dd{\bm s} = \mu_0 I $.

---

<h4>Hamilton 算子</h4>

梯度、散度、旋度的 Hamilton 算子表示.

**Laplace 算子**	$\Delta = \div\grad = \dpdv[2]{x} + \dpdv[2]{y} + \dpdv[2]{z}$, 具体有两种含义:

1. $ \Delta f = \dpdv[2]{f}{x} + \dpdv[2]{f}{y} + \dpdv[2]{f}{z} $.
2. $ \Delta \bm a = \dpdv[2]{P}{x} + \dpdv[2]{Q}{y} + \dpdv[2]{R}{z} $.

满足 **Laplace 方程** $ \Delta u(x, y, z) = 0 $ 的函数叫做 **调和函数**.

**Gauss 公式**	$ \iintl_{\partial \Omega} \bm a \cdot \dd{\bm S} = \iiintl_\Omega \div \bm a \dd{V} $.

**Stokes 公式**	$ \intl_{\partial \sum} \bm a \cdot \dd{\bm s} = \iintl_{\sum} (\curl \bm a) \cdot \dd{\bm S} $.

**Green 第一公式** :star:	由 $ \div(g \grad f) = \grad g \cdot \grad f + g\Delta f $ 得:
$$
\iiintl_\Omega \pqty{
	\grad f \cdot \grad g + f \Delta g
} \dd{V} = \iintl_{\partial \Omega} f \pdv{g}{\bm n} \dd{S}
\\
\iiintl_\Omega \pqty{
	\grad g \cdot \grad f + g \Delta f
} \dd{V} = \iintl_{\partial \Omega} g \pdv{f}{\bm n} \dd{S}
$$
**Green 第二公式** :star:	由上两式相减即得:
$$
\iiintl_\Omega (f\Delta g - g\Delta f) \dd{V}
= \iintl_{\partial \Omega} \pqty{
	f\pdv{g}{\bm n} - g\pdv{f}{\bm n}
} \dd{S}
$$
**Hamilton 算子的性质**

以下 $f$ 为数量场函数, $\bm a$ 为向量场函数, $\bm c$ 为常向量.

1. $ \div(\lambda \bm a + \mu \bm b) = \lambda(\div \bm a) + \mu(\div \bm b) $.

2. $ \curl (\lambda \bm a + \mu \bm b) = \lambda (\curl \bm a) + \mu(\curl \bm b) $.

3. $ \div(f\bm a) = f\div \bm a + \grad f \cdot \bm a $.

4. $ \curl(f\bm a) = f \curl a + \grad f \times \bm a $.

5. $ \div (\bm a \cp \bm b) = (\curl \bm a) \cdot \bm b - \bm a \cdot (\curl \bm b) $.

6. $ \curl (\grad f) = \bm 0 $.

7. $ \div (\curl \bm a) = 0 $.

8. $ \div(g \grad f) = \grad g \cdot \grad f + g\Delta f $.

9. $ \Delta \bm a = \grad (\div \bm a) - \curl (\curl \bm a) $.

   ---

10. $ \div (\bm c \cp \bm r) = 0 $.

11. $ \curl (\bm c \cp \bm r) = 2\bm c $.

12. $ \div (\bm r^2 \bm c) = 2\bm r \cdot \bm c $.

---

由性质 3, $ f\div \bm a = \div (f\bm a) - \grad f \cdot \bm a $, 积分即得 "分部" 积分公式
$$
\iiintl_\Omega f\div a \dd{V} = \iintl_{\partial \Omega} f\bm a \cdot \dd{\bm S} - \iiintl_\Omega \grad f \cdot \bm a \dd{V}.
$$

---

**定义 14.5.3**	若 $ \exist U(x,y,z): \bm a = \grad U $, 则称向量场 $\bm a$ 为 **有势场**, 并称函数 $V = -U$ 为 **势函数**.

- 有势场是梯度场, 一个场的势函数有无穷多个.

**定义 14.5.4**	**保守场**

**单连通区域**

- 空心球是单连通区域, 但不是二维单连通的.
- 环面内部是二维单连通的, 但不是单连通的.

**定理 14.5.3**	设 $\Omega \in \R^3$ 为单连通区域, 在 $\Omega$ 上定义了向量场
$$
\bm a(x, y, z) = P(x, y, z) \bm i + Q(x, y, z) \bm j + R(x, y, z) \bm k,\quad (x, y, z) \in \Omega,
$$
并且各分量具有连续偏导, 则以下四个命题等价:

1. 沿 $\Omega$ 内任意闭曲线的积分值为零.
2. $\bm a$ 是保守场.
3. $\bm a$ 是有势场.
4. $\bm a$ 是无旋场.

**定理 14.5.4**	原函数与三维的牛顿 - 莱布尼茨定理.

---

电力线, 等势线.

---

<h4>热传导模型</h4>

$$
\begin{align}
\dd{Q} &= -k\dt \iintl_{\partial \Omega} \pdv{U}{\bm n} \dd{S}
= -k\dt \iintl_{\partial \Omega} (\grad U) \cdot \bm n \dd{S}
= -k\dt \iintl_{\partial \Omega} \grad U \cdot \dd{\bm S}
\\
&= -k\dt \iiintl_{\Omega} \div\grad U \dd{V}
= -k\dt \iiintl_{\Omega} \grad^2 U\dd{V}
= -k\dt \iiintl_{\Omega} \Delta U \dd{V}
\\
\dd{Q} &= \iiintl_{\Omega} c\dd{U} \rho \dd{V}
= \dt \iiintl_\Omega c\rho \pdv{U}{t} \dd{V}
\end{align}
$$

$$
\pdv{U}{t} = \dfrac{k}{c\rho} \Delta U \equiv a^2 \Delta U.
$$

当温度场是稳定场时, 上述方程即 Laplace 方程 $ \Delta U = 0 $, 即 $U$ 是调和函数.

==无热源==的稳定温度场 $U$ 满足以下条件:
$$
\begin{cases}
	\Delta U = 0, & \text{在 } \Omega \text{ 中}, \\ \\
	\iintl_{\partial \Omega} \dpdv{U}{\bm n} = 0, & \text{在 } \partial \Omega \text{ 上}.
\end{cases}
$$

---




### 笔记

<h4>曲线长度</h4>

- $ \bm r = x(t) \bm i + y(t) \bm j + z(t) \bm k $.

  $\d \int_L f(x, y, z) \ds = \int_\alpha^\beta f(x, y, z) \sqrt{x'^2 + y'^2 + z'^2} \dt$.

<h4>曲面面积</h4>

- $\bm r = x(u, v) \bm i + y(u, v) \bm j + z(u, v) \bm k$.

  $ S = \d\iint_D \sqrt{EG-F^2} \dudv $.

  $ \d\iint_\sum f(x,y,z) \dd{S} = \d\iint_D f(x(u, v), y(u, v), z(u, v)) \sqrt{EG-F^2} \dudv $.

- $ z = f(x, y) $.	即 $ \bm r = x\bm i + y \bm j + f(x, y) \bm k $, 使用上述公式

  $  \d S = \iint_D \sqrt{1+f_x^2 + f_y^2} \dxdy $.

- $  H(x, y, z) = 0 $.	假设 $ z = f(x,y) $, 使用上述公式.

  $ S = \d\iint_D \dfrac{\norm{\grad H}}{H_z} \dxdy $.



### 例题

1. 卫星电波覆盖地球的面积 $ S = 4\pi R^2 \sin^2\dfrac{\alpha}{2} = 4\pi R^2 \cdot \dfrac{h}{2(R+h)} $.

2. 设 $ \omega = \dsum_{i,j=1}^n a_{ij} \dx_i \and \dx_j\; (a_{ij} = -a_{ji},\, i, j = \oneton) $ 是 $\R^n$ 上的 $2-$形式, 则
   $$
   \d{\omega} = \dfrac{1}{3} \dsum_{i,j,k=1}^n \pqty{
   	\pdv{a_{ij}}{x_k} + \pdv{a_{jk}}{x_i} + \pdv{a_{ki}}{x_j}
   } \dx_i \and \dx_j \and \dx_k.
   $$

3. 

未做前三节习题.























