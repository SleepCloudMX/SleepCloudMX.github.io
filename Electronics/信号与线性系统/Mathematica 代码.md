<h1 align="center">信号与系统 Mathematica 代码</h1>



[TOC]

## 第 1 章  信号变换与运算

### 1.1	常用信号

```mathematica
(* 
   mathematica 代码比 matlab 好写, 而且软件还挺轻便
   1 指数
   1.1 指数信号
*)
Plot[E^t, {t, -1, 3}]
(* E^t 也可改为 Exp[t] *)

(* 1.2 单边指数信号 *)
Plot[E^t UnitStep[t], {t, -1, 3}]
(*
	UnitStep[t] 是单位阶跃函数;
	单位阶跃函数的输入可以是向量;
*)

Plot[E^t Boole[t > 0], {t, -1, 3}]
(* 
	简单的表达式用 UnitStep 很方便；
	复杂的表达式用 Boole 很方便.
*)

(* 1.3 复指数信号 *)
Plot[Re[E^((-1 + 10 I) t)], {t, -1, 3}]
Plot[Im[E^((-1 + 10 I) t)], {t, -1, 3}]
Plot[Abs[E^((-1 + 10 I) t)], {t, -1, 3}]
Plot[Arg[E^((-1 + 10 I) t)], {t, -1, 3}]

(* 2 正弦 *)
(* 2.1 正弦信号 *)
Plot[Sin[2*Pi*t + Pi/6], {t, 0, 2 Pi}]

(* 4.2 单位阶跃信号 *)
Plot[
	UnitStep[t], {t, -1, 3},
	GridLines -> {Automatic, Automatic}
] (* 绘制网格线 *)
(* 
	HeavisideTheta[t] 也可以表示单位阶跃函数
	HeavisideLambda[t] 是一个周期的三角分布
	HeavisidePi[t] 表示矩形脉冲
*)

(*
	4.3 单位冲激信号
	理论上是这样的, 不过从图像上看不出来.
	也可以用 UnitStep'[t] 表示
*)
Plot[DiracDelta[t], {t, -1, 3}]
```

### 1.2	信号变换

```mathematica
f1[t_] := t^2
(* f1[t_] := . 可以取消定义*)
f2[t_] := f1[3 - 2 t]

Plot[f2[t], {t, -1, 3}]
```

### 1.3	信号分解

```mathematica
f[t_] := Cos[t] + Sin[t] + 1

(* 分解为直流分量与交流分量 *)
fd[t_] := Integrate[t1 f[t1], {t1, -Pi, Pi}]
fa[t_] := f[t] - fd[t]
Plot[fd[t], {t, -Pi, Pi}]
Plot[fa[t], {t, -Pi, Pi}]

(* 分解为奇分量与偶分量 *)
Plot[(f[t] - f[-t])/2, {t, -Pi, Pi}]
Plot[(f[t] + f[-t])/2, {t, -Pi, Pi}]
```



## 第 2 章  连续时域分析

### 2.1	系统响应

```mathematica
(* 似乎无法求解冲激响应, 如直接使用 DiracDelta, 则结果恒为零 *)
solution = DSolve[{
	2 y''[t] + y'[t] + 8 y[t] == UnitStep[t],
	y[0] == 0, y'[0] == 0
}, y[t], t]
r[t_] := y[t] /. solution[[1]]
Plot[r[t], {t, 0, 25}, PlotRange -> All]
```

### 2.2	函数卷积

```mathematica
(* 以一个周期的三角波为例, 首先定义信号, 也可以直接使用 HeavisideLambda[t] *)
f[t_] := Which[-1 <= t <= 0, 1 + t, 0 < t <= 1, 1 - t]

(* 法一: 利用卷积定义 *)
Integrate[f[x]*f[t - x], {x, -1, 1}]
Plot[%, {t, -2, 2}]

(* 法二: 利用卷积函数 *)
Plot[Convolve[f[x], f[x], x, t], {t, -2, 2}]
```

### 2.3	卷积的逆

```mathematica
(* 离散的傅里叶变换及其逆变换 *)
x = {1, 1, 2, 2, 1, 1, 0, 0}
X = Fourier[x]
InverseFourier[X] (* 可能有误差 *)

(* 连续的傅里叶变换及其逆变换 *)
F = FourierTransform[Sin[t]/t, t, \[Omega]]
f = InverseFourierTransform[F, \[Omega], t]

(* 已知 f2 和 f 根据 f = f1 * f2 求 f1 *)
f1 = UnitStep[t];
f2 = t UnitStep[t];
f = Convolve[f1, f2, t, x]
f1Test = InverseFourierTransform[
	FourierTransform[f, x, \[Omega]] /
	FourierTransform[f2, x, \[Omega]],
	\[Omega], x
] (* 理论上应该是这样的, 但是实测无法化简 *)
```

### 2.4  可视化卷积

```mathematica
DynamicModule[{f, g, h},
 f[x_] := UnitBox[x/2];
 g[x_] := UnitBox[x];
 h[y_] = Convolve[f[x], g[x], x, y];
 Manipulate[
  GraphicsRow[{
    Plot[{f[x], g[y - x]}, {x, -5/2, 5/2}, Sequence[
     Filling -> Axis, PlotRange -> {-1, 1.5}, Exclusions -> None, 
      Ticks -> {Automatic, {0, 1}}, AxesLabel -> Automatic, 
      PlotLabel -> Style["f(x), g(y-x)", Italic], Epilog -> {
Arrowheads[Small], 
Arrow[{{y, -0.75}, {y, -0.1}}], 
Text[
Style["y", Italic], {y + 0.4, -0.75}]}]],
    Plot[f[x] g[y - x], {x, -5/2, 5/2}, Sequence[
     Filling -> Axis, PlotRange -> {-1, 1.5}, Exclusions -> None, 
      Ticks -> {Automatic, {0, 1}}, AxesLabel -> Automatic, 
      PlotLabel -> Style["f(x)\[CenterDot]g(y-x)", Italic]]],
    Plot[h[x], {x, -5/2, y}, Sequence[
     Filling -> Axis, PlotRange -> {{-(5/2), 5/2}, {-1, 1.5}}, 
      Ticks -> {Automatic, {0, 1}}, AxesLabel -> {
Style["y", Italic], None}, PlotLabel -> Style["(f*g)(y)", Italic]]]}, 
   ImageSize -> 480], {{y, -0.8, Style["y", Italic]}, -2, 2}]]
```





## 第 3 章  连续频域分析

### 3.1  周期信号的频谱

#### 3.1.1  周期矩形脉冲

```mathematica
(* 例 3.13: 周期矩形脉冲的双边频谱 (由于结果为实数, 直接绘出频谱) *)
A = 1; T = 4;
FnPoints = Table[
	{n, Integrate[
		A HeavisidePi[t] E^(-I*2 n Pi*t/T),
		{t, -1, 1}
	] / T},
	{n, -20, 20}
] (* 不能分开写 Fn = Integrate[...], 否则结果无法代入 n = 0. *)
ListPlot[FnPoints, PlotRange -> All, Filling -> Axis]

(* 或者这样写 *)
A = 1; T = 4;
FnPoints = Table[
	{n, FourierCoefficient[
		A HeavisidePi[t], t, n,
		FourierParameters -> {1, 2 Pi/T}
	]}, {n, -20, 20}
];
ListPlot[FnPoints, PlotRange -> All, Filling -> Axis]
```

#### 3.1.2  周期三角波信号

```mathematica
(* 例 3.14: 周期三角波信号的双边频谱 *)
f[t_] := Which[
	-1 <= t <= -0.5, -2 t - 2,
	-0.5 < t <= 0.5, 2 t,
	0.5 < t <= 1, 2 - 2 t
] (* 周期三角波 *)

AbsFnPoints = Table[
	{n, Abs[FourierCoefficient[
		f[t], t, n,
		FourierParameters -> {1, 2 Pi/2}
	]]}, {n, -10, 10}
]; (* 傅里叶系数的模长 *)
ListPlot[AbsFnPoints, PlotRange -> All, Filling -> Axis]

ArgFnPoints = Table[
	{n, Arg[FourierCoefficient[
		f[t], t, n,
		FourierParameters -> {1, 2 Pi/2}
	]]}, {n, -10, 10}
]; (* 傅里叶系数的幅角 *)
ListPlot[ArgFnPoints, PlotRange -> All, Filling -> Axis]
```

### 3.2  非周期信号的频谱

#### 3.2.1  单边指数信号

```mathematica
(* 例 3.15: 单边指数信号的傅里叶变换 *)
F = FourierTransform[
	E^(-3 t) UnitStep[t], t, \[Omega],
	FourierParameters -> {1, -1}
] (* 傅里叶变换 *)
Plot[Abs[F], {\[Omega], -6, 6}, GridLines -> Automatic]
Plot[Arg[F], {\[Omega], -6, 6}, GridLines -> Automatic]
```

#### 3.2.2  门信号的频谱

```mathematica
F = FourierTransform[
	HeavisidePi[t/2], t, \[Omega],
	FourierParameters -> {1, -1}
]
Plot[
	HeavisidePi[t/2], {t, -2, 2},
	GridLines -> Automatic
] (* 门信号 *)
Plot[
	F, {\[Omega], -30, 30},
	GridLines -> Automatic,
	PlotRange -> All
] (* 门信号的频谱 *)
```

### 3.3  傅里叶变换的性质

#### 3.3.1  对称性质

```mathematica
Plot[
	FourierTransform[
		Sinc[t]/Pi, t, \[Omega],
		FourierParameters -> {1, -1}
	], {\[Omega], -2, 2},
	GridLines -> Automatic
] (* Sa 函数的傅里叶变换 *)
Plot[
	FourierTransform[
		HeavisidePi[t/2]/2, t, \[Omega], 
		FourierParameters -> {1, -1}
	], {\[Omega], -20, 20}, 
	GridLines -> Automatic,
	PlotRange -> All
] (* 门函数的傅里叶变换 *)
```

#### 3.3.2  卷积定理

```mathematica
Plot[
	FourierTransform[
		HeavisideLambda[2 t], t, \[Omega], 
		FourierParameters -> {1, -1}
	], {\[Omega], -30, 30}, 
	GridLines -> Automatic,
	PlotRange -> All
] (* 直接计算三角波信号的傅里叶变换 *)

Plot[
	Convolve[2HeavisidePi[2x], HeavisidePi[2x], x, t],
	{t, -2, 2}
] (* 验证门函数的卷积是三角波 *)

Plot[
	2 FourierTransform[
		HeavisidePi[2t], t, \[Omega], 
		FourierParameters -> {1, -1}
	] * FourierTransform[
		HeavisidePi[2t], t, \[Omega],
		FourierParameters -> {1, -1}
	], {\[Omega], -30, 30}, 
	GridLines -> Automatic,
	PlotRange -> All
] (* 门函数傅里叶变换的乘积, 就是三角波信号的傅里叶变换 *)
```

### 3.4  信号的采样过程

```mathematica
F[t_] := Which[
	t < -5 Pi, F[t + 10 Pi],
	-5 Pi <= t <= 5 Pi, FourierTransform[
		HeavisideLambda[2 Subscript[x, temp]],
		Subscript[x, temp], t
	],
    t > 5 Pi, F[t - 10 Pi]
] (* 注意不能使用 F[Subscript[x, temp]] (所以我才用了这么个变量名) *)
Plot[F[t], {t, -24 Pi, 24 Pi}]
```

### 3.5  系统的频率特性

#### 3.5.1  低通滤波器的频率响应

```mathematica
H = 1/(0.08 (I \[Omega])^2 + 0.4 (I \[Omega]) + 1);
Plot[Abs[H], {\[Omega], 0, 50}, GridLines -> Automatic]
Plot[Arg[H], {\[Omega], 0, 50}, GridLines -> Automatic]
```

#### 3.5.2  连续 LTI 系统的频率响应

```mathematica
H = (10 I \[Omega] + 5)/(
	(I \[Omega])^3 + 10 (I \[Omega])^2 + 8 I \[Omega] + 5
);
Plot[Abs[H], {\[Omega], -8, 8}, GridLines -> Automatic]
Plot[Arg[H], {\[Omega], -8, 8}, GridLines -> Automatic]
```



## 第 4 章  连续复频域分析

> 平时一直用的 mathematica，这里就不再写代码了.

### 4.0  复频域常用函数

### 4.1  拉普拉斯变换

### 4.2  与傅氏变换关系

### 4.3  拉普拉斯逆变换

### 4.4  系统函数零极点图

### 4.5  系统的复频域分析

### 4.6  系统的频率响应图



## 第 5 章  离散时域分析

### 5.1  常用函数与功能

#### 5.1.1  离散时间序列的绘图

```mathematica
DiscretePlot[DiscreteDelta[n - 1], {n, -2, 2}]
```



#### 5.1.2  离散序列卷积和的求解

```mathematica
x[t_] := Switch[t,
  0, 1,
  1, 0,
  2, 3,
  Default, 0
];

y[t_] := Switch[t,
  0, 1,
  1, -2,
  Default, 0
];

result = DiscreteConvolve[x[m], y[m], m, n];
Table[result /. n -> i, {i, 0, 3}]
```



#### 5.1.3  卷积求解过程的图像绘制

```mathematica
f[n_] := UnitBox[n/7];
g[n_] := 2 UnitBox[n/3 + 1];
GraphicsRow@
 Table[DiscretePlot[{f[x], g[x - i]}, {x, -10, 10}, ImageSize -> 110, 
   Ticks -> None, PlotRange -> All], {i, -1, 2}]
```



#### 5.1.4  十分有趣的交互式动画

```mathematica
DynamicModule[{f, g, h},
 f[n_] := (3/4)^n UnitStep[n];
 g[n_] := UnitBox[n/5];
 h[n_] = DiscreteConvolve[f[m], g[m], m, n];
 Manipulate[
  GraphicsRow[{DiscretePlot[{f[m], g[n - m]}, {m, -5, 12}, Sequence[
     PlotRange -> {-1, 1.5}, Ticks -> {Automatic, {0, 1}}, 
      AxesLabel -> Automatic, PlotStyle -> PointSize[0.04], 
      PlotLabel -> Text[
Style["f[m], g[n-m]", Italic]], Epilog -> {
Arrowheads[Medium], 
Arrow[{{n, -1}, {n, -0.1}}], 
Text[
Style["n", Italic], {n + 1.5, -0.9}]}]],
    DiscretePlot[f[m] g[n - m], {m, -5, 12}, Sequence[
     PlotRange -> {-1, 1.5}, Ticks -> {Automatic, {0, 1}}, 
      AxesLabel -> Automatic, PlotStyle -> PointSize[0.04], 
      PlotLabel -> Text[
Style["f[m]\[CenterDot]g[n-m]", Italic]]]],
    DiscretePlot[h[m], {m, -5, n}, Sequence[
     PlotRange -> {{-5, 12}, {-1, 4}}, Ticks -> {Automatic, {0, 2, 4}},
       AxesLabel -> {
Text[
Style["n", Italic]], None}, PlotStyle -> PointSize[0.04], 
      PlotLabel -> Text[
Style["(f*g)[n]", Italic]]]]}, ImageSize -> 480], {{n, 1}, -4, 11, 
   1}]]
```



#### 5.1.5  导出卷积和的演示动画

```mathematica
DynamicModule[{f, g, h},
	f[n_] := (3/4)^n UnitStep[n];
	g[n_] := UnitBox[n/5];
	h[n_] = DiscreteConvolve[f[m], g[m], m, n];
	
	frames = Table[GraphicsRow[{
		DiscretePlot[
			{f[m], g[n - m]}, {m, -5, 12}, 
			PlotRange -> {-1, 1.5},
			Ticks -> {Automatic, {0, 1}}, 
			AxesLabel -> Automatic,
			PlotStyle -> PointSize[0.04], 
			PlotLabel -> Text[Style["f[m], g[n-m]", Italic]], 
			Epilog -> {
				Arrowheads[Medium],
				Arrow[{{n, -1}, {n, -0.1}}], 
				Text[Style["n", Italic], {n + 1.5, -0.9}]
			} (*Epilog 用于绘制箭头*)
		],
		DiscretePlot[
			f[m] g[n - m], {m, -5, 12},
			PlotRange -> {-1, 1.5},
			Ticks -> {Automatic, {0, 1}},
			AxesLabel -> Automatic, 
			PlotStyle -> PointSize[0.04], 
			PlotLabel -> Text[Style["f[m]\[CenterDot]g[n-m]", Italic]]
		], 
		DiscretePlot[
			h[m], {m, -5, n},
			PlotRange -> {{-5, 12}, {-1, 4}},
			Ticks -> {Automatic, {0, 2, 4}}, 
			AxesLabel -> {Text[Style["n", Italic]], None}, 
			PlotStyle -> PointSize[0.04], 
			PlotLabel -> Text[Style["(f*g)[n]", Italic]]
		]
	}], {n, -4, 11}];
    Export[
    	"image/DiscreteConvolve.gif", frames,
    	"DisplayDurations" -> 0.5
    ];
];
```

