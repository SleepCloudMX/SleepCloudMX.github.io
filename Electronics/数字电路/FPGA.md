<h1 align="center">FPGA 笔记</h1>

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
    - 端口默认为 `wire` 型.
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

- 缩进运算符（单目运算符）

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







## 第 5 章  流程控制语句

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

  不能用 `'bx` 代替 `n'bz`.

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
// 乘法器
paramter size = 8, longsize = 16;
reg[size:1] opa, opb;
reg[longsize:1] result;

begin: mult		// 块语句名
    reg[longsize:1] shift_opa, shift_opb;
    shift_opa = opa;
    shift_opb = opb;
    result  = 0;
    repeat(size) begin
        if (shift_opb[1])
            result = result + shift_opa;
        shift_opa = shift_opa << 1;
        shift_opb = shift_opb >> 1;
    end
end
```



while 语句

```verilog
// 对八位二进制数华中值为 1 的位进行计数
reg[7:0] rega;

begin: count1s
    rega = 2'b1011_0110;
    
    reg[7:0] tempreg;
    count = 0;
    tempreg = rega;
    while (tempreg) begin
        if (tempreg[0])
            count = count + 1;
        tempreg = tempreg >> 1;
    end
end
```



for 语句

```verilog
// 例 5.7：用 for 语句初始化
begin: init_mem
    reg[7:0] i;
    for (i = 0; i < memsize; i = i + 1)
        memory[i] = 0;
end
```

```verilog
// 例 5.8：用 for 语句实现乘法器
paramter size = 8, longsize = 16;
reg[size:1] opa, opb;
reg[longsize:1] result;

begin: mult		// 块语句名
    integer i;
    result = 0;
    for (i = 1; i <= size; i = i + 1)
        if (opb[i])
            result = result + (opa << (i-1));
end
```

```verilog
// 用 for 语句对八位二进制数华中值为 1 的位进行计数
begin: count1s
    reg[7:0] tempreg;
    count = 0;
    for (tempreg = rega; tempreg; tempreg = tempreg >> 1)
        if (tempreg[0])
            count = count + 1;
end
```



块语句

顺序块

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

并行块

```verilog
// 例 4.6
fork
    #100	r = 'hE2;
    #50		r = 'h35;	// 顺序是不重要的;
    #150	-> end_wave;
join
```

块语句可以嵌套

块语句的命名

- 命名块中可以声明局部变量
- 命名块中声明的变量可以通过层次引用进行访问
- 命名块可以被禁用

```verilog
// 例 5.12：命名块的层次引用
module top;
    initial begin: block1
        integer i;	// top.block1.i
    end
    initial fork: block2
        reg i;		// top.block2.i
    join
endmodule
```

```verilog
// 例 5.13：命名块的禁用
// 在标志寄存器中查找第一个非零位
reg[15:0] flag;
integer i;	// 用于计数

initial begin
    flag = 16'b 0010_0000_0000_0000;
    i = 0;
    begin: block1
        while (i < 16) begin
            if (flag[i]) begin
                $display("TRUE bit at %d", i);
                disable block1;
            end
            i = i + 1;
        end
    end
end
```



5.7  生成块

5.7.1  循环生成语句

```verilog
// 例 5.14：对两个 N 位总线变量进行按位异或
module bitwise_xor(out, i0, i1);
    paramter N = 32;
    output[N-1 : 0] out;
    input[N-1 : 0]	i0, i1;
    
    genvar j;	// 仿真时该变量在设计中不存在
    generate
        for (j = 0; j < N; j = j + 1)
            begin: xor_loop
                xor g1 (out[j], i0[j], i1[j]);
            end
    endgenerate
endmodule
```

```verilog
// 例 5.14 的另一种编写形式
module bitwise_xor(out, i0, i1);
    paramter N = 32;
    output[N-1 : 0] out;
    input[N-1 : 0]	i0, i1;
    
    reg[N-1 : 0] out;
    
    genvar j;
    generate
        for (j = 0; j < N; j = j + 1)
            begin: bit
                always@(i0[j] or i1[j])
                    out[j] = i0[j] ^ i1[j];
            end
    endgenerate
endmodule
```

```verilog
// 例 5.15：用循环生成语句描述的脉动加法器
module ripple_adder(co, sum, a0, a1, ci);
    parameter N = 4;	// 默认总线位宽为 4
    output[N-1 : 0]	sum;
    output	co;
    input[N-1 : 0]	a0, a1;
    input ci;
    
    wire[N-1 : 0] carry;
    assign carry[0] = ci;
    
    genvar i;
    generate
        for (i = 0; i < N; i = i + 1)	begin: r_loop
            wire t1, t2, t3;
            xor g1(t1, a0[i], a1[i]);
            xor g2(sum[i], t1, carry[i]);
            and g3(t2, a0[i], a1[i]);
            and g4(t3, t1, carry[i]);
            or	g5(carry[i+1], t2, t3);
        end
    endgenerate
    
    // 以 or 为例，上述生成块会生成以下层次实例名
    // or: r_loop[0].g5, r_loop[1].g5, r_loop[2].g5, r_loop[3].g5
    // 线网也会连接起来：r_loop[0].t1, r_loop[1].t2 等等；
    
    assign co = carry[N];
endmodule
```



5.7.2  条件生成语句

```verilog
// 例 5.16：使用条件生成语句实现参数化乘法器
module multiplier(a0, a1, product);
    // 可重新定义 (defparam) 的参数
    parameter a0_width = 8;
    parameter a1_width = 8;
    
    // 本地参数
    // 1. 不能用参数重新定义
    // 2. 也不能在实例引用时通过传递参数语句，即 #(参数1, 参数2) 的方法修改
    localparam product_width = a0_width + a1_width;
    
    // 端口声明语句
    input[a0_width-1:0] a0;
    input[a1_width-1:0] a1;
    output[product_width-1:0] product;
    
    // 根据位数选择不同类型的乘法器
    generate
        if (a0_width < 8 || a1_width < 8)
            cal_multiplier #(a0_width, a1_width) m0(product, a0, a1);
        	// # 用于给参数赋值
        else
            tree_multiplier #(a0_width, a1_width) m0(product, a0, a1);
    endgenerate
endmodule
```



5.7.3  case 生成语句

```verilog
// 例 5.17：case 生成语句生成 N 位加法器
module adder(co, sum, a0, a1, ci);
    // 声明的参数可以重新定义
    parameter N = 4;	// 默认的总线位宽为 4
    
    // 端口声明
    output[N-1:0] sum;
    output co;
    input[N-1:0] a0, a1;
    input ci;
    
    // 根据总线位宽，调用相应的加法器（实例引用）
    // 参数 N 在调用（实例引用）时可重新定义
    generate
        case (N)
            1: adder_1bit adder1(co, sum, a0, a1, ci);
            2: adder_2bit adder2(co, sum, a0, a1, ci);
            default: adder_cla #(N) adder3(co, sum, a0, a1, ci);
        endcase
    endgenerate
endmodule
```



5.8  举例

5.8.1  四选一多路选择器

写法一：

```verilog
// 例 5.18：四选一多路选择器——写法一
module mux4_to_1(out, i0, i1, i2, i3, s1, s0);
    input i0, i1, i2, i3;
    input s1, s0
    output reg out;
    
    always @(*) begin
        case ({s1, s0})
            2'b00: out = i0;
            2'b01: out = i1;
            2'b10: out = i2;
            2'b11: out = i3;
            default: out = 1'bx;
        endcase
    end
endmodule
```



写法二：

```verilog
// 例 5.18：四选一多路选择器——写法一
module mux4_to_1(out, i, s);
    input[3:0] i;
    input[1:0] s;
    output reg out;
    
    // 试试能不能这样写，一是数组直接写 s，二是把 s 放在下标中
    // 哈哈，测试过了，都是可以的
    always @(s or i) out = i[s];
endmodule
```



上述代码的 testbench：

```verilog
// testbench of mux4_to_1
`timescale 1ns/10ps
module mux4_to_1_tb;
    reg[3:0] i;
    reg[1:0] s;
    wire out;
    
    mux4_to_1 mux4_to_1(.i(i), .s(s), .out(out));

    always #10  i <= i + 1;
    always #160 s <= s + 1;
    initial begin
        i <= 0;	s <= 0;
        #640 $stop;
    end
endmodule
```



5.8.2  四位计数器

```verilog
// 例 5.19：四位二进制计数器
module counter(Q, clock, clear);
    output reg[3:0] Q;
    input clock, clear;
    
    always @(posedge clear or negedge clock) begin
        if (clear)	Q <= 4'd0;	// 为了生成包含触发器的时序逻辑，使用非阻塞赋值
        else		Q <= Q + 1;	// 四位寄存器，无需模 16
    end
endmodule

// testbench of counter
`timescale 1ns/10ps
module counter_tb;
    reg clock, clear;
    wire[3:0] Q;

    counter counter(.clock(clock), .clear(clear), .Q(Q));

    always #10  clock <= ~clock;
    always #250 clear <= ~clear;
    initial begin
        clock <= 0;
        clear <= 1;
        #1000 $stop;
    end
endmodule

```







## 第 6 章  结构语句、系统任务、函数语句和显示系统任务

### 6.1  系统说明语句

#### 6.1.1 initial

一个模块可以有多个 initial 块，并且都是并行运行的.

#### 6.1.2  always

- 如果没有时序控制，则会产生仿真死锁，如 `always A <= B;`

- 敏感事件列表，既可以用 `or` 也可以用 `, `，如 `always @(A, B) ...`

- `@*` 或 `@(*)` 可以将所有输入变量都包括进敏感列表.

- 电平敏感时序控制，即等到条件为真时才运行，如

  `always wait(ena) #20 count <= count + 1;`



### 6.2  task 和 function

#### 6.2.1  说明语句介绍

- 函数与主模块共用一个仿真时间单位，而任务可自定义.
- 函数不能启动任务，而任务能启动其它任务和函数.
- 函数至少需要一个输入变量，而任务可以没有或有多个任何类型的变量.
- 函数返回一个值，而任务则不返回值.

```verilog
switch_bytes(old_word, new_word);	// 任务
new_word = switch_bytes(old_word);	// 函数
```



#### 6.2.2 task 说明语句

```verilog
// 任务的定义
task<任务名>;
    <端口及数据类型声明语句>
    <语句>
endtask

// 任务的调用
<任务名>(端口1, 端口2, ...)
```



```verilog
// 例 6.9：描述交通信号灯行为的模块
// 该模块只是一个行为模块，不能综合成电路网表
`timescale 1ns/10ps
module traffic_lights;
    reg clock, red, amber, green;
    parameter on = 1, off = 0;
    parameter red_tics = 350, amber_tics = 30, green_tics = 200;
    
    // 提问：可不可以写成 red = amber = green = off;
    // 即赋值语句有没有返回值？那样连 begin end 都省了，直接一行代码.
    // 试过了，只有非阻塞赋值都可以这样写
    // 不！这样编译虽然能过，但是结果却有问题，都显示不定值了.
    // initial red <= amber <= green <= off;
    
    // 交通灯控制程序
    always begin
        red = on;   light(red, red_tics);
        green = on; light(green, green_tics);
        amber = on; light(amber, amber_tics);
    end
    
    // 定义交通灯开启时间的任务
    task light;
        output color;
        input[31:0] tics;
        begin
            repeat(tics)
                @(posedge clock);   // 等待 tics 个时钟的上升沿
            color = off;            // 之后关灯
        end
    endtask
    
    // 产生时钟脉冲
    initial begin
        clock <= 0;
        red <= off; amber <= off; green <= off;
        #10000 $stop;
    end
    always #1 clock <= ~clock;
endmodule

```



#### 6.2.3  function 说明语句

```verilog
// 函数的定义
function <返回值的类型或范围> (函数名):
    <端口说明语句>
    <变量类型说明语句>
    begin
        <语句>
    end
endfunction
```



```verilog
// 例子
function [7:0] getbyte;
    input [15:0] address;
    begin
        <说明语句>
        getbyte = result_expression
    end
endfunction
```



使用规则

- 函数的定义不能包含任何时间控制语句
- 函数不能启动任务
- 定义函数时至少要有一个输入参量



```verilog
// 例 6.10：阶乘函数的定义与调用
module tryfact;
    // 函数的定义
    function[31:0] factorial;
        input[3:0] operand;
        reg[3:0] index;
        begin
            factorial = 1;
            for (index = 2; index <= operand; index = index + 1)
                factorial = index * factorial;
        end
    endfunction
    
    // 函数的测试
    reg[31:0] result;
    reg[3:0] n;
    initial begin
        result = 1;
        for (n = 2; n <= 9; n = n +1) begin
            $display("%d: %d, ", n, result);
            result = n * factorial(n) / (2*n +1);
        end
        $display("Final result = %d", result);
    end
endmodule
```



#### 6.2.4  函数的使用举例

##### 1  奇偶校验位

```verilog
// 例 6.11：奇偶校验位的计算
module parity;
    reg[31:0] addr;
    reg parity;
    
    initial begin
        addr <= 32'h3456_789a;
        #10 addr <= 32'hc4c6_78ff;
        #10	addr <= 32'hff56_ff9a;
        #10 addr <= 32'h3faa_aaaa;
    end
    
    always @(addr) begin
        parity = calc_parity(addr);	// 第一次启动，下一行是第二次
        $display("Parity calculated = %b", calc_parity(addr));
    end
    
    // 定义奇偶校验计算函数
    function calc_parity;
        input[31:0] address;
        begin
            calc_parity = ^address;	// 返回所有地址位的异或值
        end
    endfunction
endmodule
```

- 注意上述代码中的 `^addresss` 

```verilog
// 例 6.12：使用 C 风格进行变量声明的函数定义
function calc_parity(input[31:0] address);
    begin
        calc_parity = ^address;
    end
endfunction
```



##### 2  左右移位寄存器

```verilog
// 例 6.13：定义一个包含移位函数的模块
module shifter;
    `define LEFT_SHIFT	1'b0
    `define	RIGHT_SHFIT	1'b1
    reg[31:0] addr, left_addr, right_addr;
    reg control;
    
    always @(addr) begin
        left_addr = shift(addr, `LEFT_SHIFT);
        right_addr = shift(addr, `RIGHT_SHIFT);
    end
    
    function[31:0] shift;
        input[31:0] address;
        input control;
        begin
            shift = (control == `LEFT_SHIFT) ? (address << 1) : (address >> 1);
        end
    endfunction
endmodule
```



#### 6.2.5  自动递归函数

Verilog 中的函数默认不能递归调用，如果同时调用同一块地址空间，那么计算结果将不确定.

```verilog
// 例 6.14：自动递归函数
module top;
    function automatic integer factorial;
        input[31:0] oper;
        integer i;
        begin
            if (operand >= 2)
                factorial = factorial(oper - 1) * oper;	// 递归
            else
                factorial = 1;
        end
    endfunction
    
    integer result;
    intial begin
        result = facotrial(4);
        $display("Factorial of 4 is %0d", result);
    end
endmodule
```



#### 6.2.6  常量函数

```verilog
// 例 6.15：常量函数
module ram(...);
    parameter RAM_DEPTH = 256;
    input[clogb2(RAM_DEPTH) - 1 : 0] addr_bus;
    ...
    function integer clogb2(input integer depth);
        begin
            for (clogb2 = 0; depth > 0; clogb2 = clogb2 + 1)
                depth = depth >> 1;
        end
    endfunction
endmodule
```



#### 6.2.7  带符号函数

```verilog
// 例 6.16：带符号函数
module top;
    ...
    function signed[63:0] compute_signed(input[63:0] vector);
        //
    endfunction
    ...
endmodule
```



### 6.4  常用的系统任务

#### 6.4.1  \$display 和 \$write

<img src="image/FPGA 6.4.1 输出格式.png" alt="image-20230531121244091" style="zoom:75%;" />

<img src="image/FPGA 6.4.1 换码序列.png" alt="image-20230531121339370" style="zoom:75%;" />

```verilog
// 例 6.17
module disp;
    initial begin
        $display("\\\t%%\n\"\123");
        \*	\\ 表示反斜杠，\t 表示制表符，%% 表示百分号
        	\n 表示换行符 ，\" 表示双引号，\123 表示 S
        \*
    end
endmodule
```



```verilog
// 例 6.18
module disp;
    reg[31:0] rval;
    pulldown(pd);
    initial begin
        rval = 101;
        $display("rval = %h (hex), %d (decimal)", rval, rval);
        $display("rval = %o (otal), %b (binary)", rval, rval);
        $display("rval has %c ascii character value", rval);
        $display("pd strength is %v", pd)	// 输出 StX
        $display("current scope is %m");	// 输出 disp
        $display("%s is ascii value for 101", 101);	// e
        $display("simulatoin time is %t", &time);	// 0
    end
endmodule
```



```verilog
// 例 6.19
module printval;
    reg[11:0] r1;
    initial begin
        r1 = 10;
        $display("maximum size = %d = %h", r1, r1);		// 10, 00a
        $display("minimum size = %0d = %0h", r1,r1);	// 10, a
    end
endmodule
```



#### 6.4.2  文件输出

```verilog
// 例 6.20：文件描述符
integer handle1, handle2;	// 整型数为 32 位
integer desc1, desc2, desc3;

initial begin
    handle1 = $fopen("file1.out");	// 32'h0000_0002
    handle2 = $fopen("file2.out");	// 32'h0000_0004
    
    desc1 = handle1 | 1;			// 1 为标准输出 stdout
    $fdisplay(desc1, "Display 1");	// 同时写入 file1.out 和 stdout
    
    desc2 = handle2 | handle1;
    $fdisplay(desc2, "Display 2");	// 写入 file1.out 和 file2.out
    
    $fclose(handle1);
end
```

- 写文件：`$fdisplay, $fmonitor, $fwrite, $fstrobe`



#### 6.4.3  显式层次

```verilog
// 例 6.21：显示层次
module M;
    initial $display("%m");
endmodule

module top;
    M m1();		// 输出 top.m1
    M m2();		// 输出 top.m2
endmodule
```



#### 6.4.4  选通显示

```verilog
// 例 6.22：选通显示
always @(posedge clock) begin
    a = b;	c = d;
end

always @(posedge clock)
    $strobe("a = %b, c=  %b", a, c);
// posedge clock 发生时，始终在其它语句完成后才执行 $strobe
```



#### 6.4.5  值变转储文件

```verilog
// 例 6.23：VCD 文件系统任务
initial $dumpfile("myfile.dmp");	// 仿真信息转储到 myfile.dmp
initial $dumpvars;					// 设计中的全部信息都转储
initial $dumpvars(1, top);			// 转出模块示例 top 模块第一层的信号
initial $dumpvars(2, top.m1);		// 转储 top.m1 下两层的信号
initial $dumpvars(0, top.m1);		// 0 表示各个层的所有信号

initial begin
    		$dumpon;	// 启动转储过程
    #100000	$dumpoff;	// 停止转储过程
end

initial $dumpall;		// 转储所有 VCD 变量的现行值
```







## 第 7 章  调试用系统任务和编译预处理语句

### 7.1  $monitor

```verilog
$monitor($time, , "rxd = %b, txd = %b", rxd, txd);
// ', ,' 空参数显示为空格
```



### 7.2  \$time 与 \$realtime

```verilog
`timescale 10ns/1ns
module test;
    reg set;
    initial begin
        $monitor($time, ", ", $realtime, ", ", "set = ", set);
        		// 输出：	 0, 0, set = x
        #1.6 set = 0;	// 2, 1.6, set = 0
        #1.6 set = 1;	// 3, 3.2, set = 1
    end
endmodule
```



### 7.3  \$finish 与 \$stop

```verilog
$finish;	// 结束仿真
$finish(0);	// 结束且不输出任何信息
$finish(1);	// 输出当当前仿真时刻和位置
$finish(2);	// 输出当前仿真时刻、位置、所有 memory 和 CPU 时间统计

$stop;		// 暂停仿真 (可在仿真器中点击继续仿真)
$stop(n);
```



### 7.4  \$readmemb 与 \$readmemh

```verilog
// 例 7.3：初始化存储器
module test;
    reg[7:0] memory[0:7];	// 8 个 8 位的存储单元
    integer i;
    
    initial begin
        $readmemb("init.dat", memory);
        for (i = 0; i < 8; i = i + 1) begin
            $display("Memory[%d] = %b", i, memory[i]);
        end
    end
endmodule
```

```dat
// init.dat 文件
@002
11111111 01010101
00000000 10101010

@006
1111zzzz 00001111
```



### 7.6  \$random

```verilog
reg[23:0] rand;
rand = $random;			// 生成 32 位的带符号随机数, 赋给 rand 时取低 24 位
rand = $random % 60;	// -b+1 ~ b-1
```



### 7.7  编译预处理

```verilog
`define NUM 8	// 定义宏（无需分号）
a = `NUM;		// 引用宏

`define NUM 8;	// 连着分号一起被替换
a = `NUM		// 于是无需再写分号

`define expr a+b+c+d	// 建议不加分号，以防后续语法出错

`define typ_nand nand #5	// 可以包含空格等
```







## 第 12 章  状态机

- 状态的编码：使用 Gray 码或独热码
- 输出的变量：使用新的变量，或者直接把部分状态作为输出

```verilog
// 例 12.1：有限状态机，Gray编码
module fsm(clk, rst, A, K2, K1, state);
    input clk, rst, A;
    output reg K2, K1;
    output reg[1:0] state;
    // Gray 码：
    parameter	Idle  = 2'b00,
    			Start = 2'b01,
    			Stop  = 2'b10,
    			Clear = 2'b11;
    // 或者用独热码：
    /*
    parameter	Idle  = 4'b1000,
    			Start = 4'b0100,
    			Stop  = 4'b0010,
    			Clear = 4'b0001;
    */
    
    always @(posedge clk) begin
        if (!rst) begin
            state <= Idle;	K2 <= 0;	K1 <= 1;
        end
        else case (state)
            Idle: if (A) begin
                state <= Start;	K1 <= 0;
            end
            else begin
                state <= Idle;	K2 <= 0;	K1 <= 0;
            end
            ...	// 其它的状态
            default: state <= 2'bxx;
        endcase
    end
endmodule
```



```verilog
// 例 12.4
module fsm(Clock, Reset, A, K2, K1);
    input Clock, Reset, A;
    output reg K2, K1;
    reg[1:0] state, nextState;
    
    parameter Idel = 2'b00;
    parameter Start = 2'b01;
    parameter Stop = 2'b10;
    parameter Clear = 2'b11;
    
    // 时钟沿产生可能的状态变化
    always @(posedge Clock)
        if (!Reset)	state <= Idle;
	    else state <= nextState;
    
    // 产生下一状态的组合逻辑
    always @(state or A)
        case (state)
            Idle:	nextState <= A ? Start : Idle;
            Start:	nextState <= A ? Start : Stop;
        	Stop:	nextState <= A ? Clear : Stop;
            Clear:	nextState <= A ? Clear : Idle;
            default: nextState <= 2'bxx;
        endcase
    
    // 输出 K1
    always @(state or Reset or A) begin
        if (!Reset)						K1 <= 0;
        else if (state == Clear && !A)	K1 <= 1;
        else 							K1 <= 0;
    end
    
    // 输出 K2
    always @(state or Reset or A) begin
        if (!Reset)						K2 <= 0;
        else if (state == Stop && A)	K2 <= 1;
        else							K2 <= 0;
    end
endmodule
```







## 第 13 章  编写可综合的代码

13.5.1  组合逻辑电路

```verilog
// 例 13.1：n 位加法器
module adder(a, b, cin, sum, cout);
    parameter n = 8;
    
    input cin;
    input[n-1:0] a, b;
    output cout;
    output[n-1:0] sum;
    
    assign {cout, sum} = a + b + cin;
endmodule
```



```verilog
// 例 13.2: 指令译码电路
// 操作码的宏定义
`define plus	3'd0
`define minus	3'd1
`define band	3'd2
`define bor		3'd3
`define unegate	3'd4

module alu(a, b, opcode, out);
    input[2:0] opcode;
    input[7:0] a, b;
    output reg[7:0] out;
    
    always @(opcode or a or b) begin
        case (opcode) 
            `plus:		out = a + b;
            `minus:		out = a - b;
            `band:		out = a & b;
            `bor:		out = a | b;
            `unegate:	out = ~a;
            default:	out = 8'hx;
        endcase
    end
endmodule
```



```verilog
// 例 13.3: 排序
module sort4(a, b, c, d, ra, rb, rc, rd);
    parameter n = 4;
    input[n-1:0] a, b, c, d;
    output reg[n-1:0] ra, rb, rc, rd;
    
    always @(a or b or c or d) begin: local
        // 如果定义局部变量，则必须有模块名
        reg[n-1:0] va, vb, vc, vd;
        {va, vb, vc, vd} = {a, b, c, d};
        sort2(va, vc);	sort2(vb, vd);
        sort2(va, vb);	sort2(vc, vd);
        sort2(vb, vc);
        {ra, rb, rc, rd} = {va, vb, vc, vd};
    end
    
    task sort2;
        input[n-1:0] x, y;
        if (x > y) {x, y} = {y, x};
    endtask
endmodule
```



```verilog
// 例 13.4：比较器
module compare(equal, a, b);
    parameter size = 1;
    input[size-1:0] a, b;
    output equal;
    assign equal = (a==b) ? 1 : 0;
endmodule
```



```verilog
// 例 13.5：3-8 译码器
module decoder(in, out);
    input[2:0] in;
    output[7:0] out;
    assign out = 1'b1 << in;
endmodule
```



```verilog
// 例 13.6: 8-3 编码器 1
module encoder1(none_on, out, in);
    input[7:0] in;
    output reg[2:0] out;
    output reg none_on;
    
    always @(in) begin: local
        integer i;
        out = 0;
        none_on = 1;
        for (i = 0; i < 8; i = i + 1) begin
            if (in[i]) begin
                out = i;
                none_on = 0;
            end
        end
    end
endmodule

// 8-3 编码器 2 (优先编码器, 利用 ?: 语句实现)
module encoder2(none_on, out, in);
    input[7:0] in;
    output reg[2:0] out;
    output reg none_on;
    
    wire[3:0] outvec;
    assign outvec = in[7] ? 4'b0111 :
        in[6] ? 4'b0110 :
        in[5] ? 4'b0101 :
        in[4] ? 4'b0100 :
        in[3] ? 4'b0011 :
        in[2] ? 4'b0010 :
        in[1] ? 4'b0001 :
        in[0] ? 4'b0000 : 4'b1000;
    assign {none_on, out} = outvec;
endmodule

// 8-3 编码器 3 (优先编码器, 利用 always 语句实现)
module encoder3(none_on, out, in);
    input[7:0] in;
    output[2:0] out;
    output none_on;
    
    reg[3:0] outvec;
    assign {none_on, out} = outvec;
    always @(in) begin
        if (in[7])		outvec = 4'b0110;
        else if (in[6])	......
    end
endmodule
```



```verilog
// 例 13.7: 多路选择器
module emux1(out, a, b, sel);
    input a, b, sel;
    output out;
    assign out = sel ? a : b;
endmodule

module emux2(out, a, b, sel);
    input a, b, sel;
    output reg out;
    
    always @(a or b or sel) begin
        case (sel)
            1'b1: out = a;
            1'b0: out = b;
            default: out = 'bx;
        endcase
    end
endmodule

module emux3(out, a, b, sel);
    input a, b, sel;
    output reg out;
    
    always @(a or b or sel) begin
        if (sel)	out = a;
        else		out = b;
    end
endmodule
```



```verilog
// 例 13.8: 奇偶校验位生成器
module parity(even_numbits, odd_numbits, input_bus);
    output even_numbits, odd_numbits;
    input[7:0] input_bus;
    assign odd_numbits = ^input_bus;
    assign even_numbits = ~odd_numbits;
endmodule
```



```verilog
// 例 13.9: 三态输出驱动器 (三态门模型)
module trist1(out, in, enable);
    input in, enable;
    output out;
    assign out = enable ? in : 'bz;
endmodule

module trist2(out, in, enable)
    input in, enable;
    output out;
    // bufif1 是一个 Verilog 门级原语
    bufif1 mybuf1(out, in, enable);
endmodule
```



```verilog
// 例 13.10: 三态双向驱动器
module bidir(tri_inout, out, in, en, b);
    input tri_inout;
    output out;
    input in, en, b;
    assign tri_inout = en ? in : 'bz;
    assign out = tri_inout ^ b;
endmodule
```



13.5.2  时序逻辑电路

```verilog
// 例 13.11: 触发器
module dff(q, data, clk);
    input data, clk;
    output reg q;
    
    always @(posedge clk) begin
        q <= data;
    end
endmodule
```



```verilog
// 例 13.12: 电平敏感型锁存器
module latch1(q, data, clk);
    input data, clk;
    output q;
    assign q = clk ? data : q;
endmodule
```



```verilog
// 例 13.13: 带置位和复位端的电平敏感型锁存器
module latch2(q, data, clk, set, reset);
    input data, clk, set, reset;
    output q;
    assign q = reset ? 0 : (set ? 1 (clk ? data : q));
endmodule
```



```verilog
// 例 13.14: 电平敏感型锁存器
module latch(q, data, clk);
    input data, clk;
    output reg q;
    
    always @(clk)	q <= data;
endmodule
```



```verilog
// 例 13.15: 移位寄存器
module shifter(din, clk, clr, dout);
    input din, clk, clr;
    output reg[7:0] dout;
    
    always @(posedge clk) begin
        if (clk) dout <= 8'b0;
        else begin
            dout <= dout << 1;
            dout[0] <= din;
        end
    end
endmodule
```



```verilog
// 例 13.16: 8 位计数器
module counter1(out, data, load, cin, clk);
    input[7:0] data;
    input load, cin, clk;
    output reg[7:0] out;
    output cout;
    
    always @(posedge clk) begin
        if (load)	out <= data;
        else		out <= out + cin;
    end
    
    assign cout = (&out) & cin;
    // &out 当且仅当 out 所有位都为 1 时才为 1
endmodule

module counter2(out, cout, data, load, cin, clk);
    input[7:0] data;
    input load, cin, clk;
    output reg[7:0] out;
    output reg cout;
    
    reg[7:0] preout;
    always @(posedge) begin
        out <= preout;
    end
    
    always @(out or data or load or cin) begin
        {cout, preout} = out + cin;
        if (load)	preout = data;
    end
endmodule
```


