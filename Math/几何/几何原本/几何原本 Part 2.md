<h1 align="center">几何原本 Part 2</h1>

$$
\renewcommand{\parallel}{\mathrel{/\mskip-2.5mu/}}
\newcommand{\vector}[1]{\overrightarrow{#1}}

\DeclareMathOperator{\Rt}{Rt}
\newcommand{\Rtt}{\Rt\triangle}

\newcommand{\qed}{\quad\square}

\newcommand{\ra}{\rightarrow}
\newcommand{\RA}{\Rightarrow}
\newcommand{\RLA}{\Leftrightarrow}

\newcommand{\QRA}{\quad\RA\quad}
\newcommand{\QRLA}{\quad\RLA\quad}
$$

[TOC]

### 6.3.12	共边定理

> 若 $AB$ 交 $CD$ 于点 $E$, 则 $ \dfrac{S_{\triangle{ABC}}}{S_{\triangle{ABD}}} = \dfrac{CE}{DE} $.

<center class="half">
    <img src="image\6.3.12.case1.png" width=250>
    <img src="image\6.3.12.case2.png" width=250>
</center>

<center class="half">
    <img src="image\6.3.12.case3.png" width=250>
    <img src="image\6.3.12.case4.png" width=250>
</center>

**证明**	由面积法即得.

**注**	左下图的情况即燕尾定理.

---

### 6.3.13	共角定理

> 在 $\triangle{ABC}$ 和 $\triangle{A'B'C'}$ 中, 若 $ \angle{A} = \angle{A'} $ 或 $ 180^\circ - \angle{A'} $, 则
> $$
> \dfrac{S_{\triangle{ABC}}}{S_{\triangle{A'B'C'}}} = \dfrac{AB \cdot AC}{A'B' \cdot A'C'}.
> $$

**证明**	由正弦定理即得.

---

**推论**	若四边形 $ABCD$ 和 $DEFG$ 都是正方形, 则 $ S_{\triangle{ADG}} = S_{\triangle{DCE}} $.

<img src="image\6.3.13.cor.png" width=400>

---

### 6.3.14	帕普斯定理

> 直线 $l_1$ 上有点 $A$, $B$, $C$, 直线 $l_2$ 上有点 $D$, $E$, $F$, 设 $ AE \cap BD = G $, $ BF \cap CE = H $, $ AF \cap CD = I $, 则 $G$, $H$, $I$ 三点共线.

<img src="image\6.3.14.png" width=400>

**证明**

连接 $GH$, 设 $ AF \cap GH = I' $, $ CD \cap GH = I'' $, 则
$$
\begin{align}
\dfrac{GI'}{HI'} \cdot \dfrac{HI''}{GI''}
&= \dfrac{S_{\triangle{AFG}}}{S_{\triangle{AFH}}} \cdot \dfrac{S_{\triangle{CDH}}}{S_{\triangle{CDG}}}
\\
&= \dfrac{S_{\triangle{AFG}}}{S_{\triangle{ADG}}} \cdot \dfrac{S_{\triangle{CFH}}}{S_{\triangle{AFH}}} \cdot \dfrac{S_{\triangle{CDH}}}{S_{\triangle{CFH}}} \cdot \dfrac{S_{\triangle{ADG}}}{S_{\triangle{CDG}}}
\\
&= \dfrac{EF}{ED} \cdot \dfrac{BC}{BA} \cdot \dfrac{ED}{EF} \cdot \dfrac{BA}{BC} = 1,
\end{align}
$$
故 $I'$ 与 $I''$ 重合, 即 $ AF \cap CD = I'' = I' = I $, 即 $G$, $H$, $I$ 三点共线.

证毕.

---

### 6.3.15	帕斯卡定理

> 圆锥曲线内接六边形三对边的交点共线.

#### 1	证明

<img src="image\6.3.15.method1.png" width=300>

##### 1.1	面积法

设 $ AB \cap DE = G,\, BC \cap EF = I,\, CD \cap AF = H $,

$ AF \cap GI = H',\, CD \cap GI = H'' $, 则
$$
\begin{align}
\dfrac{GH'}{IH'} \cdot \dfrac{IH''}{GH''}
&= \dfrac{S_{\triangle{AGF}}}{S_{\triangle{AIF}}} \cdot
\dfrac{S_{\triangle{CID}}}{S_{\triangle{CGD}}}
\\
&= \dfrac{S_{\triangle{AGF}}}{S_{\triangle{CIF}}} \cdot
\dfrac{S_{\triangle{ADG}}}{S_{\triangle{AIF}}} \cdot
\dfrac{S_{\triangle{CID}}}{S_{\triangle{ADG}}} \cdot
\dfrac{S_{\triangle{CIF}}}{S_{\triangle{CGD}}}
\\
&= \dfrac{AG \cdot AF}{CI \cdot CF} \cdot
\dfrac{DG \cdot DA}{FI \cdot FA} \cdot
\dfrac{CI \cdot CD}{AG \cdot AD} \cdot
\dfrac{FI \cdot FC}{DG \cdot DC} = 1,
\end{align}
$$
故 $ I'' = I' = I $, 即 $G$, $H$, $I$ 三点共线.

证毕.

---

<img src="image\6.3.15.method2.png" width=400>

##### 1.2	位似法

作圆 $HCF$ 交 $BC$ 于点 $J$, 交 $EF$ 于点 $K$, 则

$ \angle{DEF} = \angle{DCF} = \angle{HKF} \QRA GE \parallel HK $,

$ \angle{ABC} = \angle{AFC} = \angle{HJC} \QRA GB \parallel HJ $,

$ \angle{BEF} = \angle{BCF} = \angle{JKF} \QRA BE \parallel JK $,

故 $\triangle{GBE}$ 与 $\triangle{HJK}$ 位似, $G$, $H$, $I$ 三点共线.

证毕.

---

##### 1.3	梅涅劳斯定理证法

##### 1.4	角元塞瓦定理证法







