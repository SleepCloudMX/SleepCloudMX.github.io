<h1 align="center">Euclidea 附录</h1>

$$
\renewcommand\parallel{\mathrel{/\mskip-2.5mu/}}
\newcommand{\qed}{\quad\square}

\newcommand{\RA}{\Rightarrow}
\newcommand{\RLA}{\Rightleftarrow}

\newcommand{\QRA}{\quad\RA\quad}
\newcommand{\QRLA}{\quad\RLA\quad}
$$

# A	附录

## A.1	命题

### 4.2.1

> 设圆 $A$ 与 圆 $B$ 交于点 $C$ 与 $D$, 延长 $AD$ 交圆 $B$ 于点 $E$, 延长 $BD$ 交圆 $A$ 于点 $F$, 则 $ A, C, B, E, F $ 五点共圆.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.1.png" width=450>

**证明**

$ \angle{A} = 180^\circ - 2\angle{CDA} = 2\angle{CDE} - 180^\circ = 180^\circ - \angle{B} $, 故 $ A, C, B, E $ 四点共圆. 同理 $ A, C, B, E, F $ 五点共圆. 证毕.

**注**	当两圆相切时, 退化为四点共线 (广义圆).

---

### 4.2.2

> 圆 $A$ 上有一点 $B$, 以 $B$ 为圆心, $BA$ 为半径作圆, 交圆 $A$ 于点 $C,D$. 取圆 $B$ 上另一点 $E$, 以 $E$ 为圆心, $EC$ 为半径作圆, 交圆 $A$ 于点 $F$, 交圆 $B$ 于点 $G$, 则 $A, F, G$ 三点共线.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.2.png" width=450>

**证明**

设 $AF$ 交圆 $E$ 于点 $G'$, 则由命题 4.2.1 知 $ACEG'$ 四点共圆. 而点 $ A, C, E $ 都在圆 $B$ 上, 故点 $G'$ 也在圆 $B$ 上, 即 $G'$ 是圆 $B$ 与圆 $E$ 的交点, 故 $G'$ 与 $G$ 重合, 即 $AFG$ 三点共线. 证毕.

**推论**	同理 $ E, F, D $ 三点共线, 由此可得 $ AF \cdot FG = EF \cdot FD $ 等.

---

### 4.2.3

> 同 4.2.2 条件, 作直线 $BE$, 交 $AG$ 于点 $H$, 交圆 $B$ 于点 $I$, 交圆 $A$ 于点 $J$. 则 $ \angle{AHI} = 60^\circ $.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.3.png" width=450>

**证明**

$ \triangle{ABC} $ 是等边三角形, 故 $ \angle{CGA} = \dfrac{1}{2} \angle{CFA} = 30^\circ $.

$ CG \perp EB $, 故 $ \angle{AHI} = \angle{GHE} = 90^\circ - \angle{CFA} = 60^\circ $.

证毕.

**注**	即 4E 作法.

---

### 4.2.4

> 同命题 4.2.3 条件, $AH$ 是 $CJ$ 的中垂线.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.4.png" width=450>

**证明**

$ \angle{AHC} = 2\angle{AGC} = 60^\circ = \angle{AHJ} $, 故 $ AH $ 是 $CJ$ 是中垂线. (严谨的证明可以连接 $CJ$ 交 $AH$ 于点 $K$, 证明 $ \triangle{HCA} \cong \triangle{HJA},\, \triangle{HCK} \cong \triangle{HJK} $.)

证毕.

**注**	即 3L 作法.

---

### 4.2.5

> 同命题 4.2.3 条件, $ \triangle{ECF} $ 是等边三角形.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.5.png" width=450>

**证明**

由 4.2.2 知: $ D, E, F $ 三点共线.

$ \angle{CED} = \angle{AEC} + \angle{AED} = \dfrac{1}{2}(\angle{ABC} + \angle{ABD}) = 60^\circ,\, EC = EF $,

故 $ \triangle{ECF} $ 是等边三角形. 证毕.

**推论**	点 $ C, E, J $ 都在以 $F$ 为圆心的圆上.

---

### 4.2.6

> 同命题 4.2.3 条件, 延长 $FA$ 交圆 $A$ 于点 $L$, 则 $ \triangle{CIL} $ 是等边三角形.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.6.png" width=450>

**证明**

由 4.2.5 知: $ \triangle{ECF} $ 是等边三角形.

$ \angle{ICL} = \angle{FCL} - \angle{CFI} = \angle{ECI} - \angle{FCI} = \angle{ECF} = 60^\circ,\, IC = IL $,

故 $ \triangle{CIL} $ 是等边三角形. 证毕.

**推论**	点 $ C, L, G $ 都在以 $I$ 为圆心的圆上.

---

### 4.2.7

> 同命题 4.2.6 条件, 则 $AE$ 垂直平分 $CF$, $BL$ 垂直平分 $CI$.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.7.png" width=450>

**证明**

由 4.2.5 和 4.2.6 知: $ \triangle{ECF} $ 和 $ \triangle{CIL} $ 是等边三角形.

$ BI = BC = AC = AF $, 故有题述垂直平分关系. 证毕.

**注**	至此可以得到许多全等或相似关系, 如 $ \triangle{ECB} \cong \triangle{FCA} $, $ \triangle{ECI} \cong \triangle{FCI} $, $ \triangle{ECA} \cong \triangle{LCB} $ 等.

---

### 4.2.8

> 同命题 4.2.6 条件, 设 $AE$ 交 $BL$ 于点 $M$, 则四边形 $ECLM$ 是平行四边形.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.8.png" width=450>

**证明**

由 4.2.7 知:

$AE$ 垂直平分 $CF$, 故 $ \angle{EAG} = \dfrac{1}{2}\angle{CAG} = \angle{CLG} $, 即 $ CL \parallel EM $.

$BL$ 垂直平分 $CI$, 故 $ \angle{CEI} = \dfrac{1}{2}\angle{CBI} = \angle{LBI} $, 即 $ EC \parallel ML $.

故四边形 $ECLM$ 是平行四边形. 证毕.

**推论**	设 $EL$ 交 $CM$ 于点 $O$, 则 $ OE = OL $, $ OC = OM $, 且 $O$ 是 $ L, E, D $ 三点所在圆的圆心, 故 $ OE = OL= OD $.

---

### 4.2.9

> 同命题 4.2.6 条件, $FB$ 垂直平分 $EC$, $IA$ 垂直平分 $CL$.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.9.png" width=450>

**证明**

由 4.2.8 知: 四边形 $ECLM$ 是平行四边形.

$FL$ 是直径, 故 $ FB \perp BL $, 而 $ BL \parallel EC $, 故 $FB$ 垂直平分 $EC$.

$EI$ 是直径, 故 $ IA \perp AE $, 而 $ AE \parallel CL $, 故 $IA$ 垂直平分 $CL$.

证毕.

**推论**	$ AI \parallel CF $, 设 $IA$ 交 $CL$ 于点 $A_1$, 则四边形 $ CMAA_1 $ 是矩形. 同理 $ IC \parallel BF $ 并且也构成一个矩形.

---

### 4.2.10

> 同命题 4.2.6 条件, 则 $ D, I, L $ 三点共线.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.10.png" width=450>

**证明**

由 4.2.7 知: $BL$ 垂直平分 $CI$.

$ \angle{BLI} = \dfrac{1}{2}\angle{CLI} = 30^\circ = \dfrac{1}{2}\angle{BAD} = \angle{BLD} $,

故 $ D, I, L $ 三点共线. 证毕.

**推论**	$ DL \perp DE $.

**注**	连接 $CH$ 可以得到对称的 $60^\circ$ 角、等比三角形和三点共线.

---

### 4.2.11

> 同命题 4.2.6 条件, 则 $ G, D, J $ 三点共线.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.11.png" width=450>

**证明**

$ \angle{BDG} = \angle{BGJ} = \angle{BCJ} = 180^\circ - \angle{BDJ} $,

故 $ G, D, J $ 三点共线. 证毕.

**注**	至此我们已得到四组非平凡三点共线: $ EFD,\, AFG,\, GIL,\, GDJ $. 同理, 对称的还有四组非平凡三点共线.

---

### 4.2.12

> 同命题 4.2.6 条件, 则 $ E, F, H, C $ 四点共圆, $ H, C, L, I $ 四点共圆.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.12.png" width=450>

**证明**

$ \angle{CHE} = 60^\circ = \angle{CFE} $, 故 $ E, F, H, C $ 四点共圆;

$ \angle{CHL} = 60^\circ = \angle{CIL} $, 故$ H, C, L, I $ 四点共圆.

证毕.

---

### 4.2.13

> 同命题 4.2.6 条件, 设 $ E, F, H, C $ 所在圆的圆心为 $O_1$, $ H, C, L, I $ 所在圆的圆心为 $O_2$, 则有四组三点共线: $ AO_1E,\, BO_2L,\, O_1BF,\, O_2AI $.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.13.png" width=450>

**证明**

由 4.2.7 知: $AE$ 垂直平分 $CF$, $BL$ 垂直平分 $CI$.

故 $ A, O_1, E$ 三点共线, $ B, O_2, L $ 三点共线.

由 4.2.9 知: $FB$ 垂直平分 $EC$, $IA$ 垂直平分 $CL$.

故 $ O_1, B, F $ 三点共线, $ O_2, A, I $ 三点共线.

证毕.

---

### 4.2.14

> 同命题 4.2.13 条件, 则 $ A, B, O_1, O_2 $ 四点共圆.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.14.png" width=450>

**证明**

由 4.2.13 知: $ O_1, B, F $ 三点共线, $ O_2, A, I $ 三点共线.

$ \angle{AO_1F} = 180^\circ - \angle{EO_1F} = 60^\circ = \angle{BHF} $, 故 $ A, B, O_1, O_2 $ 四点共圆.

证毕.

**推论**

1. $ O_1, O_2, O_3 $ 共线, 即 $O_1O_2$ 是圆 $O_3$ 的直径.
2. $ \triangle{FBH} \backsim \triangle{FAO_1} $.
3. $ \triangle{BO_1M} \backsim \triangle{AO_2M} $.
4. $ \triangle{IHA} \backsim \triangle{IO_2B} $.

---

### 4.2.15

> 同命题 4.2.8 条件, 设 $BF$ 交 $AI$ 于点 $N$, 则 $ A, M, B, N $ 四点共圆, $ M, D, N $ 三点共线.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.15.png" width=450>

**证明**

$ \angle{MBN} = \angle{MAN} = 90^\circ $, 故 $ A, M, B, N $ 四点共圆.

$ MN $ 为直径, 故 $ M, D, N $ 三点共线.

证毕.

**推论**	$ DA = DB $, 故 $D$ 为圆心, 且 $ DM = DN = DA = DB = AB = BC = CA $.

---

### 4.2.16

> 同命题 4.2.3 条件, 则 $ DF = AI $, $ BF = ID $.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.16.png" width=450>

**证明**

作 $ AA_2 \perp FD $ 交 $FD$ 于点 $A_2$, 则 $ \angle{FAA_2} = \angle{DAA_2} $.

$ E, F, D $ 三点共线, $IE$ 为直径, 故 $ ID \perp FD $, $ ID \parallel AA_2 $.

故 $ \angle{ABI} = 2\angle{ADI} = 2\angle{DAA_2} = \angle{FAD} $,

又 $ AF = AD = BA = BI $, 故 $ \triangle{ABI} \cong \triangle{DAF} $, $ DF = AI $.

同理 $ BF = ID $. 证毕.

**推论**	$ \triangle{AEI} \cong \triangle{DLF} $, $ AE = DL $. $ \triangle{BFD} \cong \triangle{DIA} $.

---

### 4.2.17

> 同命题 4.2.8 条件, 则 $ \triangle{MIF} $ 是等边三角形.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.17.png" width=450>

**证明**

$FL$, $DE$ 和 $EI$ 是直径, 故 $ AE \perp AM,\, BL \perp BN,\, DE \perp DL $.

$ \angle{MBA} = \angle{MBF} - \angle{ABD} - \angle{DBF} = 30^\circ - \angle{DBF} = \angle{FDB} $,

$ \angle{MAB} = 180^\circ - \angle{BMA} - \angle{MBA} = 30^\circ - \angle{MBA} = \angle{FBD} $,

又 $ AB = BD $, 故 $ \triangle{AMB} \cong \triangle{BFD} \cong \triangle{DIA} $.

故 $ MB = FD = IA,\, BF = DI = AM $, 而 $ \angle{MBF} = \angle{FDI} = \angle{IAM} = 90^\circ $,

故 $ \triangle{MBF} \cong \triangle{FDI} \cong \triangle{IAM} $, $ MF = FI = IM $,

即 $ \triangle{MIF} $ 是等边三角形. 证毕.

**注**	由 4.2.7 知: $AE$ 垂直平分 $CF$, $BL$ 垂直平分 $CI$, 故 $ FM = MC = MI $. 由此可以知道 $ \triangle{MIF} $ 是等腰三角形, 但是难以得知其它条件.

---

### 4.2.18

> 同命题 4.2.15 条件, $ \triangle{MLE} $ 是等边三角形.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.18.png" width=450>

**证明**

由 4.2.17 知: $ MB = FD = IA$,

又 $ MN = FL = IE $, $ \angle{MBN} = \angle{FDL} = \angle{IAE} = 90^\circ $,

故 $ \triangle{MBN} \cong \triangle{FDL} \cong \triangle{IAE} $, $ BN = DL = AE $.

由 4.2.17 知: $ BF = DI = AM $,

又 $ FL = IE = MN $, $ \angle{LBF} = \angle{EDI} = \angle{NAM} = 90^\circ $,

故 $ \triangle{LBF} \cong \triangle{EDI} \cong \triangle{NAM} $, $ LB = ED = NA $.

又 $ \angle{LBN} = \angle{EDL} = \angle{NAE} = 90^\circ $,

故 $ \triangle{LBN} \cong \triangle{EDL} \cong \triangle{NAE} $, $ LN = EL = NE $,

即 $ \triangle{MLE} $ 是等边三角形, 证毕.

**注**	$ \angle{ANB} = 30^\circ,\, \angle{AMB} = 150^\circ $.

---

### 4.2.19

> 同命题 4.2.15 条件, $ \triangle{MIF} $, $ \triangle{MLE} $ 和 $ \triangle{ABD} $ 有着相同的几何中心.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.19.png" width=450>

**证明**

由前两个命题的证明过程及对称性可知. (严谨的证明可以通过设其中一个三角形的外心, 并证明它也是另外两个三角形的外心.) 证毕.

**注**	这张图里有着许多全等三角形, 如 $ \triangle{AMF} \cong \triangle{BFI} $, 不再一一列出.

---

### 4.2.20

> 同命题 4.2.13 和 4.2.15 条件, 则 $ \triangle{MIF} $ 与 $ \triangle{MLE} $ 的外心 $O_4$ 落在圆 $O_3$ 上.

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.20.png" width=450>

**证明**

由 4.2.14 知: $ A, B, O_1, O_2 $ 四点共圆, 故 $ O_3A = O_3B = O_4A = O_4B $.

又 $ \angle{AO_4B} = 2\angle{ADB} = 120^\circ $, 故 $ \triangle{O_3O_4A} $ 和 $ \triangle{O_3O_4B} $ 都是等边三角形,

$ O_3O_4 = O_4B $, 故外心 $O_4$ 落在圆 $O_3$ 上.

**推论**	$AB$ 与 $O_3O_4$ 相互垂直平分.

---

附一张含有以上所有结论的图 (不包含辅助线)

<img src="E:/Notes/Math/几何/Euclidea/image/4.2.appendix.png" width=450>

---



## A.2	引用

### A.2.1	$\alpha$

1. Let no one ignorant of geometry enter here.

   — Plato

2. Education is what remains after one has forgotten everything he learned in school.

   — Albert Einstein

3. Without geometry, life would be pointless.

   — Joke

4. You can't fit a round peg in a square hole.

   — American proverb

5. Without mathematics there is no art.

   — Luca Pacioli

6. Nature is an infinite sphere of which the center is everywhere and the circumference nowhere.

   — Blaise Pascal

7. Where there is matter, there is geometry.

   — Johannes Kepler

### A.2.2	$\beta$

1. The description of right lines and circles, upon which geometry is founded, belongs to mechanics. Geometry does not teach us to draw these lines, but requires them to be drawn.

   — Isaac Newton

2. Have the courage to use your own reason.

   — Immanuel Kant

3. Inspiration is needed in geometry, just as much as in poetry.

   — Alexander Pushkin

4. Contradiction is not a sign of falsity, nor the lack of contradiction a sign of truth.

   — Blaise Pascal

5. Measure twice, cut once!

   — Proverb

6. The knowledge of which geometry aims is the knowledge of the eternal.

   — Plato

7. What we know is not much. What we do not know is immense.

   — Pierre-Simon Laplace

8. If a man's wit be wandering, let him study the mathematics.

   — Francis Bacon

9. Intellectual labor in math lessons is the touchstone of thinking.

   — Vasili Sukhomlinsky

10. The mathematician's patterns, like the painter's or the poet's must be beautiful; the ideas like the colours or the words, must fit together in a harmonious way.

    — Godfrey Hardy

### A.2.3	$\gamma$

1. The study of the mathematics, like the Nile, begins in minuteness, but ends in magnificence.

   — Charles Colton

2. A mathematician is a machine for turning coffee into theorems.

   — Alfred Rényi

3. Knowledge exists to be imparted.

   — Ralph Emerson

4. All knowledge degenerates into probability.

   — David Hume

5. Knowledge comes, but wisdom lingers.

   — Alfred Tennyson

6. If there is a God, he is a great mathematician.

   — Paul Dirac

7. He is unworthy of the name of man who is ignorant of the fact that the diagonal of a square is incommensurable with its side.

   — Plato

8. To think deeply of simple things.

   — Arnold Ross

9. There is geometry in the humming of the strings.

   — Pythagoras

### A.2.4	$\delta$

1. A mathematical truth is neither simple nor complicated in itself, it is.

   — Emile Lemoine

2. The best angle from which to approach any problem is the try-angle.

   — Author Unknown

3. Logic is the anatomy of thought.

   — John Locke

4. We do not choose mathematics as our profession; it chooses us.

   — Yuri Manin

5. Mathematics is the most reliable form of prophecy.

   — Wilhelm Schwebel

6. The square root of 2 is also known as Pythagoras' constant.

   — Wikipedia

7. The square root of 3 is also known as Theodorus' constant.

   — Wikipedia

8. If we know anything we know it by mathematics.

   — Pierre Gassendi

9. For the first condition to be fulfilled in Mathematics is to be exact; the second is to be as clear and simple as possible.

   — Lazare Carnot

10. Thinking is the hardest work there is, which is probably the reason so few engage in it.

    — Henry Ford

11. The essential idea or method is always grasped intuitively long before any rational argument for the conclusion is devised.

    — Moriis Kline

### A.2.5	$\varepsilon$

1. It is ignorance alone that could lead anyone to try to prove the axiom.

   — Aristotle

2. Logic is invincible, because in order to combat logic it is necessary to use logic.

   — Pierre Boutroux

3. Mathematics is a tool for reasoning.

   — Richard Feynman

4. Mathematics is the science of those things that are clear in and of themselves.

   — Carl Jacobi

5. No other science than mathematics strengthens so much our faith in the power of the human mind.

   — Hugo Steinhaus

6. Geometry is the real life.

   — Oscar Zariski

7. Most people would die sooner than think — in fact they do so.

   — Bertrand Russell

8. A round man cannot be expected to fit in a square hole right away. He must have time to modify his shape.

   — Mark Twain

9. If you wish to learn swimming you have to go into the water and if you wish to become a problem solver you have to solve problems.

   — George Pólya

10. As long as algebra and geometry have been separated, their progress have been slow and their uses limited; but when these two sciences have been united, they have lent each mutual forces, and have marched together towards perfection.

    — Joseph Louis Lagrange

### A.2.6	$\zeta$

1. Symmetry is one of the ideas by which man through the ages has tried to comprehend and create order, beauty, and perfection.

   — Hermann Weyl

2. Symmetry is what we see at a glance; based on the fact that there is no reason for any difference...

   — Blaise Pascal

3. Let no man who is not a Mathematician read the elements of my work.

   — Leonardo da Vinci

4. I would live to study, and not study to live.

   — Francis Bacon

5. There is nothing strange in the circle being the origin of any and every marvel.

   — Aristotle

6. Mathematics is a game played according to certain rules with meaningless marks on paper.

   — David Hilbert

7. One geometry cannot be more true than another; it can only be more convenient.

   — Henri Poincaré

8. The subject of mathematics is so serious that nobody should miss an opportunity to make it a little bit entertaining.

   — Blaise Pascal

9. Mathematics is the language with which God wrote the universe.

   — Galileo Galilei

10. Archimedes will be remembered when Aeschylus is forgotten, because languages die and mathematical ideas do not.

    — Godfrey Hardy

11. I would rather discover a single demonstration [in geometry] than become king of the Persians.

    — Democritus

### A.2.7	$\eta$

1. The whole is greater than the sum of its parts.

   — Aristotle

2. We must know, we will know!

   — David Hilbert

3. The human mind has first to construct forms, independently, before we can find them in things.

   — Albert Einstein

4. Mathematics is gymnastics of thinking.

   — Alexander Suvorov

5. Life is good for only two things, discovering mathematics and teaching mathematics.

   — Simeon Poisson

6. I should almost therefore put forward the proposal that the third hypothesis (angle sum of a triangle less than two right angles) holds on the surface of an imaginary sphere.

   — Johann Lambert

7. Circles to square and cubes to double would give a man exercise trouble.

   — Matthew Prior

8. There are things which seem incredible to most men who have not studied Mathematics.

   — Archimedes

9. Do not worry about your difficulties in Mathematics: I can assure you mine are far greater.

   — Albert Einstein

10. There are two ways to do great mathematics. The first is to be smarter than everybody else. The second way is to be stupider than everybody else — but persistent.

    — Raoul Bott

11. It is easy to go from the house of reality to the forest of mathematics, but only few know how to go back.

    — Hugo Steinhaus

### A.2.8	$\theta$

1. He became a poet, he lacked imagination for a mathematician.

   — David Hilbert

2. If I feel unhappy, I do mathematics to become happy. If I am happy, I do mathematics to keep happy.

   — Alfred Rényi

3. I am ever more convinced that the necessity of our (Euclidean) geometry cannot be proved — at least not by human reason for human reason.

   — Carl Friedrich Gauss

4. The essence of mathematics is its freedom.

   — Georg Cantor

5. Good things, when short, are twice as good.

   — Baltasar Gracian

6. Could a dissertation of 2 lines deserve and get a Fellowship? In mathematics the answer is yes.

   — John Littlewood

7. Mathematics may, like poetry or music, 'promote and sustain a lofty habit of mind', and so increase the happiness of mathematicians and even of other people.

   — Godfrey Hardy

8. Math is not about following directions, it's about making new directions.

   — Paul Lockhart

9. Truth is ever to be found in simplicity, and not in the mutiplicity and confusion of things.

   — Isaac Newton

10. The art of doing mathematics consists of finding that special case which contains all the germs of generality.

    — David Hilbert

### A.2.9	$\iota$

1. Geometry is frozen music.

   — Johann Goethe

2. Everything around us is geometry.

   — Le Corbusier

3. Mathematics is less knowledge than skill.

   — Philip Davis

4. It is not enough to have a good mind. The main thing is to use it well.

   — Rene Descartes

5. Everything should be made as simple as possible, but not simpler.

   — Albert Einstein

6. It is hard to convince a high-school student that he will encounter a lot of problems more difficult than those of algebra and geometry.

   — Edgar Watson Howe

7. The roots of education are bitter, but the fruit is sweet.

   — Aristotle

8. Geometry is knowledge of the eternally existent.

   — Pythagoras

9. I think, therefore I am.

   — Rene Descartes

10. Neither thirty years, nor thirty centuries, affect the clearness, or the charm, of Geometrical truths.

    — Charles Dodgson

### A.2.10	$\kappa$

1. Nothing is more important than to see the sources of invention which are, in my opinion more interesting than the inventions themselves.

   — Gottfried Leibniz

2. It is the glory of geometry that from so few principles, fetched from without, it is able to accomplish so much.

   — Isaac Newton

3. Imagination is more important than knowledge.

   — Albert Einstein

4. Imagination decides everything.

   — Blaise Pascal

5. Science is simply common sense at its best.

   — Thomas Huxley

6. Three Rules of Work: Out of clutter find simplicity; From discord find harmony; In the middle of difficulty lies opportunity.

   — Albert Einstein

7. Beauty is the first test: there is no permanent place in the world for ugly mathematics.

   — Godfrey Hardy

8. Mathematics is the door and key to the sciences.

   — Roger Bacon

9. Knowledge is power.

   — Francis Bacon

10. Knowledge is light and ignorance is darkness.

    — Proverb

11. Education is the best provision for the journey to old age.

    — Aristotle

12. It is not once nor twice but times without number that the same ideas make their appearance in the world.

    — Aristotle

### A.2.11	$\lambda$

1. Mathematics is concerned only with the enumeration and comparison of relations.

   — Friedrich Gauss

2. Mathematics is the part of physics where experiments are cheap.

   — Vladimir Arnold

3. The Golden ratio has inspired thinkers of all disciplines like no other number in the history of mathematics.

   — Mario Livio

4. The scientist is not a person who gives the right answers, he's one who asks the right questions.

   — Claude Levi-Strauss

5. It is impossible to be a mathematician without being a poet in soul.

   — Sofia Kovalevskaya

6. The mathematical sciences particularly exhibit order symmetry and limitations; and these are the greatest forms of the beautiful.

   — Aristotle

7. Mathematics is a language plus reasoning; it is like a language plus logic.

   — Richard Feynman

8. Mighty is geometry; joined with art, resistless.

   — Euripides

9. In any special doctrine of nature there can be only as much proper science as there is mathematics therein.

   — Immanuel Kant

10. In mathematics the art of proposing a question must be held of higher value than solving it.

    — Georg Cantor

### A.2.12	$\mu$

1. "Obvious" is the most dangerous word in mathematics.

   — Eric Bell

2. You are the only person on earth who can use your ability. It's an awesome responsibility.

   — Zig Ziglar

3. One quickly realizes that simplicity and geometry are the language of timelessness and universality.

   — Paul Rand

4. Music is the arithmetic of sounds as optics is the geometry of light.

   — Claude Debussy

5. There are no sects in geometry.

   — Voltaire

6. A mathematical proof should resemble a simple and clear-cut constellation, not a scattered cluster in the Milky Way.

   — Godfrey Hardy

7. Beauty is geometry.

   — Joanne Rowling

8. Neglect of mathematics works injury to all knowledge, since he who is ignorant of it cannot know the other sciences or the things of this world.

   — Roger Bacon

9. The best way to make mathematics interesting to students and laymen is to approach it in a spirit of play.

   — Martin Gardner

10. A good mathematical joke is better, and better mathematics, than a dozen mediocre papers.

    — John Littlewood
