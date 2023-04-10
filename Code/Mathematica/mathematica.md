<h1 align="center">Mathematica</h1>



- 按键

  - 运行: Shift + Enter
  - 矩阵换行: Ctrl + Enter
  - 换行: Alt + Enter

- 大小写

  - 区分大小写.
  - 首字母大写, 如 `Sin[x]`, `I`, `E`.

- 括号

  - 函数用<span style="color: red">中括号</span>, 中括号前可以有空格.
  - 指定优先级一律使用小括号.

- 函数

  - `F[f]` 等价于 `f // F` 
  - `F[x, t]` 等价于 `x // F[#, t] &`

- 符号

  - 末位加分号: 不显示输出结果.
  - 逗号前也可以加分号.

- 注释

  - ```mathematica
    (* 注释 *)
    (*
    注释
    *)
    ```

  - Alt + /

- 帮助文档

  ```mathematica
  ?Simplify
  Options[Simplify]
  ```

- 清空输入

  - 法一: Ctrl + A 然后 Delete.

  - 法二: 运行下述代码

    ```mathematica
    cls := (SelectionMove[InputNotebook[], All, Notebook];
    FrontEndExecute[
    FrontEndToken["Clear"]]);
    Save[FindFile["init.m"], cls];
    ```

    删除 cls 函数

    ```mathematica
    SystemOpen[FindFile["init.m"]]
    ```

- 清楚全局变量

  ```mathematica
  Clear["Global`*"]
  ```
  
- 转为近似值

  ```mathematica
  N[1/3]
  ```
  
- 逻辑运算

  - If 作为一个函数, 第二个参数为正确时的返回值, 第三个参数为错误时的返回值.
  - 非零数字不代表 True, 0 不代表 False.

  ```mathematica
  If [t > 1 && t > 2, 1, 2]
  ```
  
- Esc 键: 数学 2D 格式.

- 百分号

  ```mathematica
  %		(* 引用上一次结果 *)
  %%		(* 引用上上一次结果 *)
  %5		(* 引用第 5 次结果 *)
  ```

- 格式排版: Alt + 1-7

---

- 1-4 次方程

  ```mathematica
  Solve[a x^2 + b x + c == 0, x]
  
  Factor[a x^2 + b x + c]
  Expand[(a + 1)(a - 2)]
  ```

- 方程组

  ```mathematica
  Solve[{
  	a t^2 + m t + c == 0,
  	m^2 - 1 == 0
  }, {t, m}]
  ```

- 求导

  ```mathematica
  D[Log[t] * E^(t^2 + Sin[t^t]), t]
  ```

- 积分 (注意是 `Integrate`, 不是 `Integral`)

  ```mathematica
  Integrate[1 / (a t^2 + b t + c), t]
  ```

- 泰勒展开

  在 0 处展开前十项

  ```mathematica
  Series[1 / (1 - x), {x, 0, 10}]
  Series[1 / (1 - x), {x, 0, 10}] // InputForm
  ```

- 求极限

  ```mathematica
  Limit[Sin[x] / x, x -> 0]
  ```

- 定义函数

  ```mathematica
  fun[t_] := t^2 - t
  ```

- 解微分方程

  ```mathematica
  DSolve[D[f[x], x] + x^2 - x + f[x] == 0, f[x], x]
  ```

  ```mathematica
  DSolve[{
  	D[f[x], x] + x^2 - x + f[x] == 0
  }, f[x], x]
  ```

- 列表与矩阵

  - 创建

    ```mathematica
    A = Table[
       3 i + j - 3,
       {i, 1, 3},
       {j, 1, 3}
    ]
    (* A = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}} *)
    M = A // MatrixForm
    
    B = {{9, 8, 7}, {6, 5, 4}, {3, 2, 1}}
    ```

    $$
    M = \begin{pmatrix}
    	1 & 2 & 3 \\
    	4 & 5 & 6 \\
    	7 & 8 & 9
    \end{pmatrix}
    $$

  - 例子

    - 列表每行的元素的个数可以不同, 也可以是多维数组.

      ```mathematica
      test = Table[
      	i + j + k,
      	{i, 1, 4},
      	{j, 1, i},
      	{k, 1, 3}
      ]
      ```

    - 使用函数来更方便地定义:

      ```mathematica
      Table[
      	If[i == j + 1 || i == j - 1, 1, 0],
      	{i, 1, 10}, {j, 1, 10}
      ] // MatrixForm
      ```

      $$
      \left(
      \begin{array}{cccccccccc}
       0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\
       1 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\
       0 & 1 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 \\
       0 & 0 & 1 & 0 & 1 & 0 & 0 & 0 & 0 & 0 \\
       0 & 0 & 0 & 1 & 0 & 1 & 0 & 0 & 0 & 0 \\
       0 & 0 & 0 & 0 & 1 & 0 & 1 & 0 & 0 & 0 \\
       0 & 0 & 0 & 0 & 0 & 1 & 0 & 1 & 0 & 0 \\
       0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 1 & 0 \\
       0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 1 \\
       0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 \\
      \end{array}
      \right)
      $$

      

  - 指标

    ```mathematica
    A[[1]]			(* {1, 2, 3} *)
    A[[1]][[2]]  	(* 2 *)
    M[[1]]			(* 即 A *)
    M[[1]][[2]]		(* {4, 5, 6} *)
    
    A[[1, 2]]		(* 2 *)
    A[[;;, 3]]		(* {3, 6, 9} *)
    (* 在 matlab 里是 A[;, 3] *)
    ```

  - 长度

    ```mathematica
    A // Length				(* 矩阵有 3 行 *)
    A[[1]] // Length		(* 一行有 3 列 *)
    A[[1]][[1]] // Length 	(* 0, 单个元素非列表 *)
    M // Length				(* 有 1 个元素, 即 A *)
    M[[1]][[1]] // Length 	(* 一行有 3 列 *) 
    ```

  - 运算

    ```mathematica
    A.B		(* 矩阵乘法 *)
    Eigenvalues[A]	(* 特征值 *)
    Det[A]			(* 行列式 *)
    Transpose[A]	(* 转置 *)
    Inverse[A]		(* 逆矩阵 *)
    ```

- 替换

  ```mathematica
  test = Table[c[i + j], {i, 1, 3}, {j, 1, 3}]
  test /. c -> f
  test /. c[p_] -> p
  test /. {c[2] -> 2, c[3] -> 3}
  test //. c[x_] -> If[x < 3, c[x + 1] + b[x], b[x]]
  
  ReplaceAll[test, c[p_] -> p]
  ```

  ```mathematica
  y[1, c, 3, c, 51, 3] /. y[n__] -> {n}
  y[1, c, 3, c, 51, 3] /. y[n1__, c, n2__] -> y[n1, n2]
  y[1, c, 3, c, 51, 3] /. y[n1___, c, n2___] -> y[n1, n2]
  ```

- 输入输出

  ```mathematica
  SetDirectory[NotebookDirectory[]];	(* 设置目录为当前笔记本的目录 *)
  Export["../t.m", t]		(* 将 t 的值输出到上一级目录的 t.m 文件中 *)
  x = Import["../t.m", t]		(* 导入数据, 并赋给 x *)
  ```

  ```mathematica
  Do[
  	t[i] = i;
  	t[i] = t[i // Mod[#, 3] &] - t[i];
  , {i, 0, 3}]
  Table[t[i], {i, 0, 3}]
  
  SetDirectory[NotebookDirectory[]];
  Do[
  	Export["t" <> ToString[i] <> ".m", t[i]];
  	Print[{i, t[i]}]
  , {i, 0, 3}]
  ```

- 图像

  ```mathematica
  plot sin x	(* 自由格式输入 *)
  
  Plot[Sin[x], {x, 0, 10}]
  ```

- 分式操作

  ```mathematica
  Denominator[F[x] / G[x]]	(* 提取分式的分母 *)
  Numerator[F[x] / G[x]]		(* 提取分式的分子 *)
  ExpandDenominator[F[x] / G[x]]	(* 展开分母 *)
  ExpandNumerator[F[x] / G[x]]	(* 展开分子 *)
  Expand[F[x] / G[x]]		(* 展开整个分式 *)
  Apart[F[x] / G[x]]		(* 化为部分分式 *)
  
  ```

