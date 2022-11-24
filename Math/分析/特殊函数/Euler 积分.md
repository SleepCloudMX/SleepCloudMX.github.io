<h1 align="center">Euler 积分</h1>

$$
% 字符
\newcommand{\e}{\textup{e}}
\newcommand{\i}{\textup{i}}
\newcommand{\j}{\mathrm{j}}
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
\newcommand{\dr}{\dd{r}}

% 如果只使用 \dd{x}\dd{y} 的话, 中间会有多余的间隔.
\newcommand{\df}{\dd}
\newcommand{\ddf}[2]{\,\mathrm{d}#1\mathrm{d}#2}	% 微分形式
\newcommand{\dddf}[3]{\,\mathrm{d}#1\mathrm{d}#2\mathrm{d}#3}

\newcommand{\dxdy}{\ddf{x}{y}}
\newcommand{\dydz}{\ddf{y}{z}}
\newcommand{\dzdx}{\ddf{z}{x}}
\newcommand{\dudv}{\ddf{u}{v}}
\newcommand{\drdt}{\ddf{r}{\theta}}
\newcommand{\dxdydz}{\dddf{x}{y}{z}}



% 函数名
\DeclareMathOperator{\diam}{diam}
\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator{\span}{span}



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
\newcommand{\knsum}{\dsum_{k=1}^n}

\newcommand{\dprod}{\displaystyle\prod}
\newcommand{\nprod}{\displaystyle\prod_{n=1}^\infty}
\newcommand{\noprod}{\dprod_{n=0}^\infty}
\newcommand{\inprod}{\dprod_{i=1}^n}

\newcommand{\liml}{\lim\limits}
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

**注**	这份笔记是对 [数学分析笔记 (3)](../陈纪修数分/数学分析笔记 (3).pdf) 中 Euler 积分与 [概统笔记附录](../../概统/概统笔记附录.pdf) 中常用积分的整理与补充.

---

#### 基础部分

- Beta 函数: $ \Beta(p, q) = \dint_0^1 x^{p-1} (1-x)^{q-1} \dx \quad (p, q > 0) $.

  - 连续性.
  - 对称性: $ B(p, q) = B(q, p) $.
  - 递推公式
    - $ \Beta(p+1, q) = \dfrac{p}{p+q} \Beta(p, q) $.
    - $ \Beta(p, q) = \dfrac{(p-1)(q-1)}{(p+q-1)(p+q-2)} \Beta(p-1, q-1) $.
  - 其它形式
    - $ \Beta(p, q) = 2\dint_0^{\tfrac{\pi}{2}} \cos^{2p-1}\theta \sin^{2q-1}\theta \dd{\theta} $.
    - $ \Beta(p, q) = \intoi \dfrac{t^{p-1}}{(1+t)^{p+q}} \dt $.
    - $ \Beta(p, q) = \dint_0^1 \dfrac{t^{q-1} + t^{q-1}}{(1+t)^{p+q}} \dt $.
  - 特殊值
    - $ \Beta(p, 1) = \dfrac{1}{p} $.
    - $\Beta (s, s) = \dint_0^1 \bqty{
      	\dfrac{1}{4} - \pqty{\dfrac{1}{2} - x}^2
      }^{s-1} \dx
      = \dfrac{B\pqty{\cfrac{1}{2}, s}}{2^{2s-1}}$.

- Gamma 函数: $ \Gamma(s) = \intoi \e^{-x} x^{s-1} \dx \quad (s > 0) $.

  - 连续任意阶可导: $ \Gamma^{(n)}(s) = \intoi \e^{-x}x^{s-1} \ln^n x \dx $.

  - 递推公式: $ \Gamma(s+1) = s\Gamma(s) $.

    注: Bohr-Mollerup 定理指出, 满足上述函数方程的所有函数中, 只有 Gamma 函数是对数凸的, 即 $\displaystyle \ln{\Gamma}{\left( z\right)}$ 是凸函数.

  - 其它形式: $ \Gamma(s) = \alpha^s \intoi t^{s-1} \e^{-\alpha t} \dt $.

  - 特殊值

    - $ \Gamma(n+1) = \Pi(n) = n! $.
    - $ \Gamma\pqty{n + \dfrac{1}{2}} = \dfrac{(2n-1)!!}{2^n} \sqrt{\pi} $.

- Euler 积分的换元

$$
\begin{align}
& \int_0^1 x^a (1-x^b)^c \dx
= \dfrac{1}{b} \Beta\pqty{
	\dfrac{a+1}{b}, c+1
} & \pqty{
	a > -1,\, b > 0,\, c > -1
} \\
& \intoi \dfrac{x^a \dx}{(1+x^b)^c}
= \dfrac{1}{\vqty{b}} \Beta\pqty{
	c - \dfrac{a+1}{b}, \dfrac{a+1}{b}
} & \begin{pmatrix}
	a > -1,\, b > 0,\, c > \dfrac{a+1}{b} & 或 \\
	a < -1,\, b < 0,\, c > \dfrac{a+1}{b} &
\end{pmatrix}
\\
& \intoi x^n \e^{-ax^p} \dd{x} = \dfrac{
	\Gamma\pqty{\cfrac{n+1}{p}}
}{
	\vqty{p} a^{\tfrac{n+1}{p}}
} & \begin{pmatrix}
	a > 0,\, p > 0,\, n > -1 & 或\\
	a > 0,\, p < 0,\, n < -1 & 
\end{pmatrix}
\\
& \intoi \dfrac{\ln^n t}{t^{1+a}} \dt
= \dfrac{\Gamma(n+1)}{a^{n+1}}
& (a>0,\, n>-1)
\end{align}
$$

---

#### 变换的形式

**Mellin 变换**	$ \Bqty{\mathcal{M} f}(s) = \varphi(s) = \intoi x^{s-1} f(x) \dx $.

**Mellin 逆变换**	$ [\mathcal{M}(\varphi)] = f(x) = \dfrac{1}{2\pi\i} \dint_{c-\i\infty}^{c+\i\infty} x^{-s} \varphi(s) \ds $.

- Euler 积分
  - $ \Gamma(s) = \intoi \e^{-x}x^{s-1} \dx = \mathcal{M}(\e^{-x}) $.
  - $ \Beta(p, q) = \intoi \dfrac{t^{p-1}}{(1+t)^{p+q}} \dt = \mathcal{M}[(1+t)^{-(p+q)}] $.

- Cahen-Mellin 积分
  - $ \e^{-x} = \dfrac{1}{2\pi \i} \dint_{c-\i\infty}^{c+\i\infty} \Gamma(s) x^{-s} \ds $.

- 双边 Laplace 变换 $ \Bqty{\mathcal{B}f}(s) = \inti \e^{-st} f(t) \dt $.

  - $ \Bqty{\mathcal{B} f}(s) = \Bqty{\mathcal{M} f(-\ln{x})}(s) $.
  - $ \Bqty{\mathcal{M}f}(s) =\Bqty{\mathcal{B}f(\e^{-x})}(s)  $.

- 傅里叶变换 $ \mathcal{F}[f](\omega) = \hat{f}(\omega) = \inti f(x) \e^{-\i \omega x} \dx $.
  - $ \Bqty{\mathcal{F}f}(-s) = \Bqty{\mathcal{B}f}(-\i s) = \Bqty{\mathcal{M} f(-\ln{x})}(-\i s) $.
  - $ \Bqty{\mathcal{M}f}(s) = \Bqty{\mathcal{B}f(\e^{-x})}(s) = \Bqty{\mathcal{F}f(\e^{-x})}(-\i s) $.

- Laplace 变换 $ \mathcal{L}[f(t)] = F(s) = \dint_{0-}^{+\infty} f(t) \e^{-st} \dt $.

  Laplace 逆变换 $ f(t) = \mathcal{L}\inv [F(s)] = \dfrac{1}{2\pi\i} \liml_{T\to\infty} \dint_{\gamma - \i T}^{\gamma + \i T} \e^{st} F(s) \ds $.

  - 时间域的函数 → 复频域的复变函数.
  - $F(s)$ 称为 $f(t)$ 的象函数, $f(t)$ 称为 $F(s)$ 的原函数.
  - $\e^{-st}$ 称为收敛因子.
  - $ s = \sigma + \omega \i $ 为复频率.

  更多的可参考

  - [公式墙(1)——Laplace Transform(拉普拉斯变换) - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/152647974)
  - [拉普拉斯变换的那些事儿——定义、性质与Airy常微分方程 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/128812880)

---

#### 相关公式

**Dirichlet 公式**	$ \Beta(p, q) = \dfrac{\Gamma(p)\Gamma(q)}{\Gamma(p+q)} $.

**广义 Dirichlet 公式**
$$
\begin{align}
\Beta(\bm \alpha)
&= \Beta(\soneto{\alpha}{n})
:= \int \cdots \int
\prod_{i=1}^n{
	x_i^{a_i - 1}
} \dd{\bm x}
& \pqty{
	\insum x_i = 1
}
\\
&= \dfrac{
	\Gamma(\alpha_1) \Gamma(\alpha_2) \cdots \Gamma(\alpha_n)
}{
	\Gamma(\splus{\alpha}{n})
} = \dfrac{
	\Gamma(\alpha_1) \cdots \Gamma(\alpha_n)
}{\Gamma(a_0)}
& \pqty{
	a_0 = \dsum_{i=1}^n a_n
}
\end{align}
$$
其中 $d\ (d \in \N^+)$ 维积分域是一个开放的 $d-1$ 维正单纯形, 由顶点 $ (1, 0, \cdots, 0), (0, 1, \cdots, 0), \cdots, (0, 0, \cdots, 1) $ 围成.

---

**点火公式推广**	$ \dint_0^{\tfrac{\pi}{2}} \sin^m x \cos^n x \dx = \dfrac{(m-1)!!(n-1)!!}{(m+n)!!} \cdot s,\quad (m, n \in \N) $, 其中 $m, n$ 都为偶数时, $ s = \dfrac{\pi}{2} $, 否则 $s=1$.

**Wallis 公式**	$ \nlim \dfrac{(2n)!!^2}{(2n-1)!!(2n+1)!!} = \dfrac{\pi}{2} $.

- 推论 1: $ \nlim \dfrac{(n!)^2 2^{2n}}{(2n)! \sqrt{n}} = \sqrt{\pi} $.
- 推论 2: $ \dfrac{(2n)!!}{(2n-1)!!} = \dfrac{(n!)^2 2^{2n}}{(2n)!} \sim \sqrt{\pi n} $.

**Stirling 公式**	$\Gamma(s+1) = \sqrt{2\pi s} \pqty{\dfrac{s}{\e}}^s \e^{\tfrac{\theta}{12s}}, \quad s > 0,\, 0 < \theta < 1$. (等价无穷大的证明见后文)

---

**Euler-Gauss 乘积公式**
$$
\Gamma(s) = \dfrac{\Gamma(s+n+1)}{
	s(s+1) \cdots (s+n)
} = \nlim \dfrac{n^s n!}{
	s(s+1) \cdots (s+n)
}.
$$

- 注: 不能由左式直接得到右式, 应证明:

  1. $ \nlim \vqty{\intoi \e^{-t} t^{s-1} \dt - \int_0^n \pqty{1 - \dfrac{t}{n}}^n t^{s-1} \dt} = 0 $.
  2. $ \Gamma(s) = \nlim \dint_0^n \pqty{1 - \dfrac{t}{n}}^n t^{s-1} \dt = \nlim n^s \Beta(s, n+1) $.

- 可借助上述将 $\Gamma(s)$ 的定义拓展至复平面上 (除原点和负整数点以外), 且倒数 $\Gamma(s) \inv$ 在 $\C$ 上解析.
  
- 由 Stirling 公式得:
  $$
  \dfrac{(s+n)!}{n!} \equiv \dfrac{\Pi(s+n)}{\Pi(n)} \sim n^s.
  $$

---

**Weierstrass 公式**	$ \dfrac{1}{\Gamma(s)} = \e^{\gamma s} s \dprod_{n \ge 1} \pqty{1 + \dfrac{s}{n}} \e^{-\tfrac{s}{n}} $.

- 推论 $ \Gamma(s) = \dfrac{1}{s} \nprod \dfrac{\pqty{1 + \cfrac{1}{n}}^s}{1 + \cfrac{s}{n}} $.

**余元公式**	$\Beta(s, 1-s) = \Gamma(s) \Gamma(1-s) = \dfrac{\pi}{\sin\pi s},\quad 0<s<1$.

- 证法一: 由 Euler-Gauss 乘积公式和 $ \nprod \pqty{1 - \dfrac{s^2}{n^2}} = \dfrac{\sin\pi s}{\pi s} $ 即得.
- 证法二: 由 $ \dint_0^1 \dfrac{x^{s-1} + x^{-s}}{1+x} \dx $ 幂级数展开与 $\cos{x}$ 的 Fourier 展开式即得.

**Legendre 倍量公式**	$\Gamma(s) \Gamma\pqty{s+\dfrac{1}{2}}
= \dfrac{\sqrt{\pi}}{2^{2n-1}} \Gamma(2s), \quad s>0$.

- 证明: 由 $ \Beta(s, s) = 2^{1-2s} \Beta\pqty{s, \dfrac{1}{2}} $ 展开即得.

---

**引理 1 (三角恒等式)**	$ \dprod_{k=1}^{n-1} \sin\dfrac{k\pi}{n} = \dfrac{n}{2^{n-1}} $.

**证明**	由 $ \dsum_{k=0}^{n-1} z^k = \dfrac{z^n-1}{z-1} = \dprod_{k=1}^{n-1} \pqty{1 - \e^{\i\tfrac{2k\pi}{n}}} $ 令 $z = 1$ 得:
$$
\begin{align}
n &= \dprod_{k=1}^{n-1} \pqty{
	1 - \cos\dfrac{2k\pi}{n} - \i \sin\dfrac{2k\pi}{n}
} \\
&= \dprod_{k=1}^{n-1} 2\sin\dfrac{k\pi}{n} (-\i) \pqty{
	\cos\dfrac{k\pi}{n} + \i\sin\dfrac{k\pi}{n}
} \\
&= 2^{n-1} \dprod_{k=1}^{n-1} \sin\dfrac{k\pi}{n}
\end{align}
$$

- 注: $ \dprod_{k=1}^{n-1} \sin\pqty{\dfrac{k\pi}{n} + \theta} \ne \dfrac{n}{2^{n-1}}\ (\theta \ne k_0\pi,\, k_0 \in \Z) $.

---

**引理 2**	$ \dprod_{k=1}^{n-1} \Gamma\pqty{\dfrac{k}{n}}
= \sqrt{\prod_{k=1}^{n-1}{
	\Gamma\pqty{\dfrac{k}{n}}
	\Gamma\pqty{1 - \dfrac{k}{n}}
}} = \dfrac{
	(2\pi)^{\tfrac{n-1}{2}}
}{\sqrt{n}} $.

**证明**	由余元公式与引理 1 即得.

**引理 3**	$ \dprod_{k=0}^{n-1} \Gamma\pqty{m+1+\dfrac{k}{n}} = m!^n \dfrac{(mn+n-1)!}{n^{mn+n-1}} \cdot \dfrac{(2\pi)^{\tfrac{n-1}{2}}}{\sqrt{n}} $.

**证明**	由递推公式与引理 2 即得.

**Gauss-Legendre 倍元公式推广**	$ \dprod_{k=0}^{n-1} \Gamma\pqty{x + \dfrac{k}{n}} = \dfrac{\Gamma(nx)}{n^{nx}} \sqrt{n} (2\pi)^{\tfrac{n-1}{2}} $.

**证明**	由高斯定理与引理 3 即得.

---

**引理**	
$$
\begin{align}
\dint_0^\pi \ln\sin x\dx &= \int_0^{\pi} \ln\pqty{2\sin\dfrac{x}{2}\cos\dfrac{x}{2}} \dx
\\
&= \pi \ln 2 + 2 \int_0^\pi \ln\sin x\dx
\\
&= -\pi \ln 2
\end{align}
$$
**Raabe 积分**	$ R(a) = \dint_a^{a+1} \ln\Gamma(x) \dx = a(\ln{a} - 1) + \dfrac{1}{2} \ln2\pi $.

**证明**

1. $ R'(a) = \ln\Gamma(a+1) - \ln\Gamma(a) = \ln a $.
2. $ R(0) = \dfrac{1}{2} \dint_0^1 \ln\Gamma(x)\Gamma(1-x) \dx = \dfrac{1}{2} \ln2\pi $.

---

**Dobinski 公式**

1. $ 1 - \dfrac{1}{n!} \dint_0^n t^n \e^{-t} \dt = \e^{-n} \dsum_{k=0}^n \dfrac{n^k}{k!} $.
2. $  \nlim \dfrac{1}{n!} \dint_0^n t^n \e^{-t} \dt = \dfrac{1}{2} $.

**证明**

1. 分布积分数归易得. (或利用二项式定理与 Gamma 函数定义)
2. 设随机变量 $X_i$ 独立同分布 $P(1)$, 则 $ X = \splus{X}{n} \sim P(n) $, 于是由中心极限定理得

$$
\begin{align}
\nlim \e^{-n} \sum_{k=0}^n \dfrac{n^k}{k!}
= \nlim P\Bqty{X \le n}
= \nlim P\Bqty{\dfrac{X-n}{\sqrt{n}} \le 0} = \dfrac{1}{2}
\end{align}
$$

---

**引理 (Laplace 方法)**	设 $ f \in \C^2[a, b],\, x_0 \in (a, b) $ 是 $f$ 唯一的极大值点, $ f''(x_0) = -\lambda < 0 $, 则
$$
\int_a^b \e^{M f(x)} \dx \sim \e^{M f(x_0)} \sqrt{\dfrac{2\pi}{M\lambda}} \quad (M \to +\infty)
$$

- 推论: $ \dint_a^b \e^{Mf(x)} \dx \approx \int_a^b \e^{M f(x_0) - M\lambda \tfrac{(x-x_0)^2}{2}} \dx $.
- 若 $[a, b]$ 为无穷区间, 则还需两个充分条件:
  1. $ \exist \eta > 0,\, \forall (\vqty{x-x_0} \ge \delta) \and (x \in [a, b]) : f(x) \le f(x_0) - \eta $.
  2. $ \exist M_0 > 0: \dint_a^n \e^{M_0 f(x)} \dx < +\infty $.

**Stirling 公式**	$ n! \sim \sqrt{2\pi n} \pqty{\dfrac{n}{\e}}^n, \quad n \to +\infty $. (由 Laplace 方法即得)

---

#### Digamma 函数

$$
\psi(s) = \ddv{s} \ln \Gamma(s) = \dfrac{\Gamma'(s)}{\Gamma(s)}\ (s>0)
$$

- 导数回顾: $ \Gamma^{(n)}(s) = \intoi \e^{-x} x^{s-1} \ln^n x \dx\ (s>0) $.

- Polygamma 函数: $ \psi^{(n)} $.

- 函数方程 $ \psi(s+1) = \psi(s) + \dfrac{1}{s} $.

- 余元公式 $ \psi(1 - s) - \psi(s) = \pi \cot \pi x $.

- 级数表示
  - $ \psi(s + 1) = -\gamma + \dsum_{n\ge1} \pqty{\dfrac{1}{n} - \dfrac{1}{n+s}} $. (由 Weierstrass 公式即得)
  - $ \psi(n + 1) = -\gamma + H_n $. (由上式或函数方程即得)
  
- 特殊值
  - $ \psi(1) = -\gamma $.
  - $ \psi\pqty{\dfrac{1}{2}} = -\gamma - 2 \ln2 $.
  
- 高阶导数 $ \psi^{(n)}(s) = \dsum_{k \ge 0} \dfrac{n!(-1)^{n+1}}{(k+s)^{n+!}} $. (由级数表示求导即得)

- Taylor 展开 $ \psi(s + 1) = - \gamma + \dsum_{n \ge 1} (-1)^{n+1} \zeta(n+1) s^n $. (由高阶导数即得)

- 极限表示 $ \psi(a) = \clim{b}\bqty{\Gamma(b) - \Beta(a, b)} $. (由关系式即得)

- 积分表示
  $$
  \begin{align}
  \psi(s) &= \intoi \dfrac{\e^{-x} - (1+x)^{-s}}{x} \dx
  = \intoi \pqty{
  	\dfrac{\e^{-x}}{x} - \dfrac{\e^{(1-s)x}}{\e^x - 1}
  } \dx. \\
  \psi(1) &= \intoi \pqty{
  	\dfrac{\e^{-x}}{x} - \dfrac{\e^{-x}}{1 - \e^{-x}}
  } \dx = -\gamma.
  \end{align}
  $$

---

#### 不完全 Euler 积分

#### Gamma 分布, Beta 分布, Dirichlet 分布

---

#### Riemann zeta 函数

**Riemann zeta 函数**	$ \zeta(s) = \dsum_{n\ge1} \dfrac{1}{n^s} $.

**Dirichlet eta 函数**	$ \eta(s) = \dsum_{n\ge1} \dfrac{(-1)^{n+1}}{n^s} = (1 - 2^{1-s}) \zeta(s) $.

**Dirichlet beta 函数**	$ \beta(s) = \dsum_{n\ge0} \dfrac{(-1)^n}{(2n+1)^s} $.

**积分表达式**	对 $s>0$ 有
$$
\begin{align}
\zeta(s) \Gamma(s) &= \intoi \dfrac{x^{s-1}}{\e^x - 1} \dx
\\
\eta(s) \Gamma(s) &= \intoi \dfrac{x^{s-1}}{\e^x + 1} \dx
\\
&= \int_0^1 \int_0^1 \dfrac{
	[-\ln(xy)]^{s-2}
}{1 + xy} \dxdy
\\
\beta(s) \Gamma(s)
&= \int_0^1 \int_0^1 \dfrac{
	[-\ln(xy)]^{s-2}
}{1 + x^2y^2} \dxdy
\end{align}
$$

**函数方程**	(未)
$$
\begin{align}
\zeta(1 - s) &= \dfrac{2}{(2\pi)^s}
\cos \dfrac{\pi s}{2} \Gamma(s) \zeta(s)
\\
\beta(1 - s) &= \pqty{\dfrac{2}{n}}^s
\sin \dfrac{\pi s}{2} \Gamma(s) \beta(s)
\end{align}
$$
......

---

[分数阶微积分 (zmx0142857.github.io)](https://zmx0142857.github.io/note/#math/analysis/23)

