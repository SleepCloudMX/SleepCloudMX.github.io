<p align="center">FPGA</p>

$$
% 设置
\newcommand{\aneg}[1]{\hspace{-0.75em}&#1&\hspace{-0.75em}}
\newcommand{\aneq}{\aneg{=}}
% 上述指令用于在使用 array 环境时调整等号左右间距
\newcommand{\noeq}{&\hspace{1.3em}}
% 上述指令用于 align 环境中, 类似与 &= 但不显示等号.
\renewcommand{\d}{\displaystyle}

% 字符
\renewcommand{\i}{\mathrm{i}}
\renewcommand{\j}{\mathrm{j}}
\renewcommand{\k}{\mathrm{k}}
\newcommand{\e}{\textup{e}}
\newcommand{\ve}{\varepsilon}
\newcommand{\Beta}{\mathrm{B}}
\newcommand{\omicron}{\mathit{o}}
\newcommand{\Omicron}{\mathit{O}}

% 原本的定义为:
% \newcommand{\cal}[1]{\mathcal{#1}}
\newcommand{\bm}[1]{\boldsymbol{#1}}
\renewcommand{\cal}[1]{\mathcal#1}
\renewcommand{\scr}[1]{\mathscr#1}
\renewcommand{\frak}[1]{\mathfrak#1}
\newcommand{\bb}[1]{\mathbb#1}

% 数集
\newcommand{\D}{\mathbb{D}}
\newcommand{\E}{\mathbb{E}}
\newcommand{\F}{\mathbb{F}}
\newcommand{\J}{\mathbb{J}}
\newcommand{\K}{\mathbb{K}}
\renewcommand{\L}{\mathbb{L}}

% 上下标
\newcommand{\trans}{^\mathrm{T}}
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

% 求和
\newcommand{\dsum}{\displaystyle\sum}
\newcommand{\csum}[1]{\dsum_{#1=1}^\infty}
\newcommand{\nsum}{\csum{n}}
\newcommand{\nsuminf}{\dsum_{n=-\infty}^{+\infty}}
\newcommand{\ksum}{\csum{k}}
\newcommand{\nosum}{\dsum_{n=0}^\infty}
\newcommand{\insum}{\dsum_{i=1}^n}
\newcommand{\knsum}{\dsum_{k=1}^n}

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
$$

[TOC]

## 第 1 章  Verilog 的基本知识

- 电路结构在 5000 门以上：
  - 软核：Verilog HDL 模型
  - 固核：电路结构编码文件
  - 硬核：电路结构版图掩膜
- 设计过程
  - 编写 Verilog 模块
  - 综合（synthesis）



## 第 2 章  Verilog 语法的基本概念

### 2.1  Verilog 模块的基本概念

```verilog
// 例 2.1：二选一（由 always 语句实现）
module mux2(out, a, b, sl);
    input a, b, sl;
    output out;
    
    reg out;	// 用于 always 语句
    always @(sl or a or b)
        if (!sl) out = a;
    	else out = b;
endmodule
```



```verilog
// 例 2.2：二选一（由逻辑表达式实现）
module mux2(out, a, b, sl);
    input a, b, sl;
    output out;
    
    wire nsl, sela, selb;	// 内部连接线
    assign nsl = ~sl;		// 求反
    assign sela = a & nsl;
    assign selb = b & sl;
    assign out = sela | selb;
endmodule
```



```verilog
// 例 2.3：二选一（由逻辑门实现）
module mux2(out, a, b, sl);
    input a, b, sl;
    output out;
    
    not		u1(nsl, sl);
    and	#1	u2(sela, a, nsl);
    and #1	u3(sleb, b, sl);
    or	#1	u4(out, sela, selb);
endmodule
```



```verilog
// 例 2.4：三位加法器（由连续赋值语句）
module adder(cout, sum, a, b, cin);
    input[2:0] a, b;	// 三比特输入
    input cin;			// 输入进位
    output cout;		// 输出进位
    output[2:0] sum;	// 三比特输出
    
    assign {cout, sum} = a + b + cin;
endmodule
```



```verilog
// 例 2.5；比较器（连续赋值语句）
module compare2(equal, a, b);
    output equal;	// 是否相等
    input[1:0] a, b;
    
    assign equal = (a==b) ? 1 ： 0；
endmodule
```



```verilog
// 例 2.6：三态门选择器
module trist2(out, in, enable);
    output out;
    input in, enable;
    
    bufif1 mybuf(out, in, enable);
    // 定义名为 mybuf 的三态门驱动器元件
endmodule
```



```verilog
// 例 2.7：三态门选择器

// 子模块 mytri
module mytri(out, in, enable);
    output out;
    input in, enable;
    assign out = enable ? in : 'bz;	// 高阻态
endmodule

// 上层模块
module trist1(sout, sin, ena);
    output sout;
    input sin, ena;
    mytri tri_inst(
        .out(sout),
        .in(sin),
        .enable(ena)
    ); // 实例化部件
endmodule
```



### 2.2  Verilog 用于模块的测试

```verilog
// 例 2.8：对例 2.1 - 2.3 的测试文件
`include "mux2.v"
module t;
    reg ain, bin, select;
    reg clock;	// 时钟信号
    wire outw;
    
    // 只能在 testbench 中使用 initial，用于初始化参数
    initial begin
        ain = 0;	bin = 0;
        select = 0;	clock = 0;
    end
    
    always #50		clock = ~clock;		// 时钟信号周期为 100
    always #10000	select = !select;	// 选通信号周期为 10000
    
    always @(posedge clock) begin
        #1 ain = {$random} % 2;
        #3 bin = {$random} % 2;
    end
    
    mux2 m(
        .a(ain),	.b(bin),
        .out(outw),	.sl(select)
    );
endmodule
```



## 第 3 章  模块与数据类型及其运算符

### 3.1  模块结构

- 模块的结构
  - 模块的表示
    - 程序模块
    - 电路图符号
  - 模块的组成
    - 输入输出管脚分配
    - 管脚间的逻辑关系
- 模块的端口
  - 模块端口的定义
    - 只标明端口：`模块名(端口1, 端口2)`
    - 标明 I/O 口：`模块名(input[n-1:0] 端口1, output 端口2)`
  - 模块端口的引用
    - 按照顺序：`模块名(信号1, 信号2)`
    - 表明端口：`模块名(.端口1(信号1), .端口2(信号2))`
- 模块内容
  - I/O 说明（也可以在定义端口时说明）
    - `input[n-1:0] 端口1, 端口2;`
    - `output[n-1:0] 端口1, 端口2;`
  - 内部信号
    - `reg[n-1:0] 变量1, 变量2;`
    - `wire[n-1:0] 变量1, 变量2;`
  - 功能定义
    - assign 语句：`assign a = ~(b ^ c)`;
    - 用实例元件：`and #2 u1(q, a, b);`
    - aways 语句：`always @(posedge clk) begin ...; end`
- 注意事项
  - 连续赋值语句（即 assign）表示将变量用导线（与逻辑门）相连.
  - 模块中所有过程块（如 initial 块、always 块）、连续赋值语句、实例引用语句，都是并行的.
  - 只有连续赋值语句和实例引用语句，可以独立于过程块而存在于模块的功能定义部分.

### 3.2  数据类型

#### 3.2.1  常量

- 数字
  - 表示方法（前缀 0 可省略不写）
    - `<位宽>'<进制><数字>`，如 `8'b10101100`
    - `'<进制><数字>`，默认位宽一般为 32 位（与系统有关）
    - `<数字>`，默认位宽、默认为十进制
  - 数据类型
    - 整型常量：二进制 b/B、十进制 d/D、十六进制 h/H、八进制 o/O
    - 不定值：`x`，如 `4'b10x0`
    - 高阻值：`z` 或 `?`，如 `4'dz` 或 `8'h32?`
    - 负数：写在表达式前，如 `-8'd5`
  - 下划线：用在数字间，无实意，仅用于提高易读性.
  - 缺省位宽
    - 整数：`10 = 32'd10`
    - 负数：`-1 = -32'd1 = 32'hFFFFFFFF`
    - 不定值：`'BX = 32'BX = 32'BXXX...X`
    - 字符串：`"AB" = 16'h4142`
- 参数：`parameter 参数1 = 表达式1, 参数2 = 表达式2;`

```verilog
// 例 3.2
// Test.v
`include "Top.v"
`include "Block.v"
`include "Annotate.v"
module Test;
    wire W;
    Top T();
endmodule

// Top.v
module Top;
    wire W;
    Block B1();
    Block B2();
endmodule

// Block.v
module Block;
    Parameter P = 0;
endmodule

module Annotate;
    defparam
    	Test.T.B1.P = 2,	// 注意这里是逗号
    	Test.T.B2.P = 3;
endmodule
```



#### 3.2.2  变量

在 Verilog 中，所有变量都是<u>静态</u>的.

网络数据类型：不能存储值，必须受到驱动器（如连续赋值语句）的驱动

- wire 型
  - `wire[n-1:0] a, b;`
  - `wire[n:1] a, b;`
- reg 型
  - `reg[n-1:0] rega;`
  - 可赋正值，可赋负值
  - 被定义的信号将用在 `always`
- memory 型
  - `reg[n-1:0] 存储器名[m-1:0];`
  - `reg[n-1:0] 存储器名[m:1];`
  - 表示存储器有 m 个 n 位存储器
  - 读写操作：`mema[3] = 0;`
- tri 型



## 第 4 章  运算符、赋值语句和结构说明语句

- case 等式运算符：`===` 和 `!==` 对不定值 x 和高阻值 z 也进行比较，完全一致才为 1.

- 位拼接运算符

  - `{a, b[1:0], w, 3'b101}`

    `{a, b[1], b[0], w, 1'b1, 1'b0, 1b'1}`

  - `{b, {2{a, b}}}`

    `{b, a, b, a, b}`

- 缩进运算符（弹幕运算符

  ```verilog
  reg[2:0] A;
  reg B;
  B = &A;
  // 相当于
  B = A[0] & A[1] & A[2];
  ```

- 赋值语句

  - 非阻塞赋值方式
    - `b <= a;`
    - 所赋的变量值不能立即后续语句使用.
    - 块结束后才能完成这次赋值操作.
    - <span style="color: red">不要滥用，避免生成不必要的触发器</span>.
  - 阻塞赋值方式
    - `b = a;`
    - 赋值语句执行完成之后，b 的值立即改变.
    - 时序逻辑电路中建议不要这样写.

- 块语句

  - 顺序块

    ```verilog
    // 例 4.5
    parameter	d = 50;	// 声明 d 是一个参数
    reg[7:0]	r;		// 8 位寄存器变量
    begin
        #d	r = 'h35;
        #d	r = 'hE2;	// 过了 d 个单位时间后，再经过 d 个单位时间
        #d	-> end_wave;
        // 表示触发事件 end_wave 使其翻转
    end
    ```

  - 并行块

    ```verilog
    // 例 4.6
    fork
        #100	r = 'hE2;
        #50		r = 'h35;	// 顺序是不重要的;
        #150	-> end_wave;
    join
    ```



第 5 章  流程控制语句

if 语句

- 条件语句必须在过程块语句中使用，即 initial 和 always 中
- 建议用 begin end 标明逻辑

```verilog
if (test1) statement1;
else if (test2) begin
    if (test3) statement2;
    else statement3;
end
else statement4;
```

case 语句

- 所有表达式值的位宽必须相等.

  不能用 `'bx'` 代替 `n'bz`.

- 如果 if 或 case 没有为变量的所有可能都赋值，则会生成锁存器.

  建议用 else 或 default 赋值，以避免自动生成锁存器.

```verilog
// 例 5.1
case (select[1:2])
    2'b00: result = 0;
    2'b01: result = flaga;
    2'b0x,
    2'b0z: result = flaga ? 'bx : 0;
    2'b10: result = flagb;
    2'bx0,
    2'bz0: result = flagb ? 'bx : 0;
    default: result = 'bx;
endcase
```

forever 语句

- 常用于产生周期的波形，用于仿真测试信号.
- 必须写在 initial 块中.

```verilog
forever begin
    statements;
end
```

repeat 语句

```verilog

```



while 语句

for 语句































