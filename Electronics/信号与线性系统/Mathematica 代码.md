<h1 align="center">信号与系统 Mathematica 代码</h1>



[TOC]

## 第一章

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
	HeavisideTheta[t] 也可以表示单位阶跃函数
	HeavisideLambda[t] 是一个周期的三角分布
	HeavisidePi[t] 表示矩形脉冲
*)

(* 1.3 复指数信号 *)
Plot[Re[E^((-1 + 10 I) t)], {t, -1, 3}]
Plot[Im[E^((-1 + 10 I) t)], {t, -1, 3}]
Plot[Abs[E^((-1 + 10 I) t)], {t, -1, 3}]
Plot[Arg[E^((-1 + 10 I) t)], {t, -1, 3}]

(* 2 正弦 *)
(* 2.1 正弦信号 *)
Plot[Sin[2*Pi*t + Pi/6], {t, 0, 2 Pi}]

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



## 第二章

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

