PN 结的电流方程:
$$
\def\e{\mathrm{e}}
\newcommand{\inv}{^{-1}}
\newcommand{\i}{\mathrm{i}}
\newcommand{\j}{\mathrm{j}}

\newcommand{\DD}{\Delta}
\newcommand{\DV}[2]{\dfrac{\DD#1}{\DD#2}}
\newcommand{\nDV}[3]{\dfrac{\DD^{#1}#2}{\DD#3^{#1}}}

\newcommand{\RA}{\Rightarrow}
\newcommand{\RLA}{\Leftrightarrow}

\newcommand{\QRA}{\quad\RA\quad}
\newcommand{\QRLA}{\quad\RLA\quad}

\renewcommand{\parallel}{\mathrel{/\mskip-2.5mu/}}

i = I_s \pqty{\e^{\tfrac{qu}{kT}} - 1} = I_s \pqty{\e^\tfrac{u}{U_\text{T}} - 1}.
$$
其中 $I_s$ 为反向饱和电流. 常温下 ($ T = 300 \text{ K} $)，$ U_\text{T} = 26 \text{ mV} $，称为温度的电压当量.

**推导**

$p_{_\text{P0}}$: P 区平衡空穴浓度.

$ n_{_\text{P0}} $: P 区平衡电子浓度.

$p(x)$: 耗尽层空穴浓度.

$E(x)$: 耗尽层场强.

$D_P$: 空穴的扩散系数.

$\mu_{_P}$: 空穴的迁移率，即单位场强下空穴的平均漂移速率.
$$
\begin{cases}
	J_1 = q \cdot D_p \cdot \dv{p(x)}{x} \quad\text{(扩散电流密度)}
	\\
	J_2 = q \cdot p(x) \cdot \mu_p \cdot E(x) \quad\text{(漂移电流密度)}
	\\
	J_1 = J_2 \qq{(平衡条件)}
	\\
	\dfrac{\mu}{D} = \dfrac{q}{kT} \quad\text{(由爱因斯坦方程)}
\end{cases}
\QRA
\begin{align}
	\dfrac{\dd{p(x)}}{p(x)} &= \dfrac{\mu_{_P}}{D_P} \cdot E(x) \dd{x}
	\\
	&= - \dfrac{q}{kT} \cdot \dd{u(x)}
\end{align}
$$
由 $ p_{_\text{P}}n_{_\text{P}} = n_{_\text{N}}p_{_\text{N}} $，积分得
$$
\dfrac{n_{_\text{P0}}}{n_{_\text{N0}}}
= \dfrac{p_{_\text{P0}}}{p_{_\text{N0}}}
= \e^\tfrac{qU_\text{ho}}{kT}.
$$
外加电压时，耗尽层边界上多子的浓度基本不变，故
$$
\begin{align}
\dfrac{p_{_\text{P0}}}{p_{_\text{N}}(x_{_\text{N}})}
&= \dfrac{n_{_\text{N0}}}{n_{_\text{P}}(x_{_\text{P}})}
= \e^\tfrac{q(U_\text{ho}-u)}{kT},
\\
p_{_\text{N}}(x_{_\text{N}})
&= p_{_\text{P0}} \e^\tfrac{-q(U_\text{ho}-u)}{kT}
=p_{_\text{N0}} \e^{\tfrac{qu}{kT}}
\end{align}
$$
如果空穴浓度按 $X_{\text{N}}$ 处的斜率直线下降，经扩散长度 $L_\text P$ 后达到 $ p_{_\text{N0}} $，那么
$$
\begin{align}
J_\text{P} &= qD_\text{P} \left.\dv{p(x)}{x}\right|_{x=x_{_\text{N}}}
= \dfrac{qD_\text{P}}{L_\text{P}}\bqty{p_{_\text{N}}(x_{_\text{N}}) - p_{_\text{N0}}}
\\
&= \dfrac{qD_{_\text{P}}p_{_\text{N0}}}{L_\text{P}}  \pqty{\e^\tfrac{qu}{kT} - 1}
\\
J_\text{N} &= \dfrac{qD_{_\text{N}}n_{_\text{P0}}}{L_\text{N}}  \pqty{\e^\tfrac{qu}{kT} - 1}
\\
J &= J_\text{P} + J_\text{N}
= J_\text{S} \pqty{\e^\tfrac{qu}{kT} - 1}
\\
i &= JA = I_S \pqty{\e^\tfrac{qu}{kT} - 1}
= I_S \pqty{\e^\tfrac{u}{U_\text{T}} - 1}
\end{align}
$$
