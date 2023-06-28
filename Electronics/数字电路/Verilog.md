<h1 align="center">常用元件与芯片的 Verilog 代码</h1>



[TOC]

## 1  逻辑门

### 1.1  n 位与门

#### 1.1.1  写法一

```verilog
// method 1
module and_gate(in, out);
	parameter n = 2;
	input[n-1:0] in;
	output out;

	assign out = &in;
endmodule
```



#### 1.1.2  写法二

```verilog
// method 2
module and_gate2(in, out);
	parameter n = 2;
	input[n-1:0] in;
	output out;

	reg temp;
	integer i;
	always @(in) begin
		temp = in[0];
		for (i = 1; i < n; i = i + 1) begin
			temp = temp & in[i];
		end
	end
	
	assign out = temp;
endmodule
```



#### 1.1.3  测试代码

```verilog
// testbench of and_gate
`timescale 1ns/10ps
module and_gate_tb;
	reg[2:0] in;
	wire out1, out2;

	and_gate	#3	and_gate_1(.in(in), .out(out1));
	and_gate2	#3	and_gate_2(.in(in), .out(out2));

	initial begin
		in <= 0;
		#200	$stop;
	end

	always #5	in <= in + 1;
endmodule
```



### 1.2  n 位或门

#### 1.2.1  写法一

```Verilog
// method 1
module or_gate(in, out);
	parameter n = 2;
	input[n-1:0] in;
	output out;

	assign out = |in;
endmodule
```



#### 1.2.2  写法二

```verilog
// method 2
module or_gate2(in, out);
	parameter n = 2;
	input[n-1:0] in;
	output out;

	reg temp;
	integer i;
	always @(in) begin
		temp = in[0];
		for (i = 1; i < n; i = i + 1) begin
			temp = temp | in[i];
		end
	end

	assign out = temp;
endmodule
```



#### 1.2.3  测试代码

```verilog
// testbench of or_gate
`timescale 1ns/10ps
module or_gate_tb;
	reg[2:0] in;
	wire out1, out2;

	or_gate		#3	or_gate_1(.in(in), .out(out1));
	or_gate2	#3	or_gate_2(.in(in), .out(out2));

	initial begin
		in <= 0;
		#200	$stop;
	end

	always #5	in <= in + 1;
endmodule
```



### 1.3  非门

#### 1.3.1  模块代码

```verilog
// not-gate
module not_gate(in, out);
	input in;
	output out;

	assign out = ~in;
endmodule
```



#### 1.3.2  测试代码

```verilog
// testbench of not_gate
`timescale 1ns/10ps
module not_gate_tb;
	reg in;
	wire out;

	not_gate not_gate(.in(in), .out(out));

	initial begin
			in <= 0;
		#10	in <= 1;
		#10	$stop;
	end
endmodule
```



### 1.4  n 位与非门

#### 1.4.1  写法一

```verilog
// method 1
module nand_gate(in, out);
	parameter n = 2;
	input[n-1:0] in;
	output out;

	assign out = ~(&in);
endmodule
```



#### 1.4.2  写法二

```verilog
// method 2
module nand_gate2(in, out);
	parameter n = 2;
	input[n-1:0] in;
	output out;

	reg temp;
	integer i;
	always @(in) begin
		temp = in[0];
		for (i = 1; i < n; i = i + 1) begin
			temp = temp & in[i];
		end
	end
	
	assign out = ~temp;
endmodule
```



#### 1.4.3  写法三

```verilog
// method 3
module nand_gate3(in, out);
	parameter n = 2;
	input[n-1:0] in;
	output out;

	wire temp;
	and_gate #n and_gate_temp(.in(in), .out(temp));
	assign out = ~temp;
endmodule
```



#### 1.4.4  测试代码

```verilog
// testbench of nand_gate
`timescale 1ns/10ps
module nand_gate_tb;
	reg[2:0] in;
	wire out1, out2, out3;

	nand_gate	#3	nand_gate_1(.in(in), .out(out1));
	nand_gate2	#3	nand_gate_2(.in(in), .out(out2));
	nand_gate3	#3	nand_gate_3(.in(in), .out(out3));

	initial begin
		in <= 0;
		#200	$stop;
	end

	always #5	in <= in + 1;
endmodule
```



### 1.5  n 位或非门

#### 1.5.1  写法一

```verilog
// method 1
module nor_gate(in, out);
	parameter n = 2;
	input[n-1:0] in;
	output out;

	assign out = ~(|in);
endmodule
```



#### 1.5.2  写法二

```verilog
// method 2
module nor_gate2(in, out);
	parameter n = 2;
	input[n-1:0] in;
	output out;

	reg temp;
	integer i;
	always @(in) begin
		temp = in[0];
		for (i = 1; i < n; i = i + 1) begin
			temp = temp | in[i];
		end
	end
	
	assign out = ~temp;
endmodule
```



#### 1.5.3  写法三

```verilog
// method 3
module nor_gate3(in, out);
	parameter n = 2;
	input[n-1:0] in;
	output out;

	wire temp;
	or_gate #n or_gate_temp(.in(in), .out(temp));
	assign out = ~temp;
endmodule
```



#### 1.5.4  测试代码

```verilog
// testbench of nor_gate
`timescale 1ns/10ps
module nor_gate_tb;
	reg[2:0] in;
	wire out1, out2, out3;

	nor_gate	#3	nor_gate_1(.in(in), .out(out1));
	nor_gate2	#3	nor_gate_2(.in(in), .out(out2));
	nor_gate3	#3	nor_gate_3(.in(in), .out(out3));

	initial begin
		in <= 0;
		#200	$stop;
	end

	always #5	in <= in + 1;
endmodule
```



### 1.6  n 位异或门

#### 1.6.1  写法一

```verilog
// method 1
module xor_gate(in, out);
	parameter n = 2;
	input[n-1:0] in;
	output out;

	assign out = ^in;
endmodule
```



#### 1.6.2  写法二

```verilog
// method 2
module xor_gate2(in, out);
	parameter n = 2;
	input[n-1:0] in;
	output out;

	reg temp;
	integer i;
	always @(in) begin
		temp = in[0];
		for (i = 1; i < n; i = i + 1) begin
			temp = temp ^ in[i];
		end
	end
	
	assign out = temp;
endmodule
```



#### 1.6.3  测试代码

```verilog
// testbench of xor_gate
`timescale 1ns/10ps
module xor_gate_tb;
	reg[2:0] in;
	wire out1, out2;

	xor_gate	#3	xor_gate_1(.in(in), .out(out1));
	xor_gate2	#3	xor_gate_2(.in(in), .out(out2));

	initial begin
		in <= 0;
		#200	$stop;
	end

	always #5	in <= in + 1;
endmodule
```



### 1.7  n 位同或门

#### 1.7.1  写法一

```verilog
// method 1
module xnor_gate(in, out);
	parameter n = 2;
	input[n-1:0] in;
	output out;

	assign out = ~(^in);
endmodule
```



#### 1.7.2  写法二

```verilog
// method 2
module xnor_gate2(in, out);
	parameter n = 2;
	input[n-1:0] in;
	output out;

	reg temp;
	integer i;
	always @(in) begin
		temp = in[0];
		for (i = 1; i < n; i = i + 1) begin
			temp = temp ^ in[i];
		end
	end
	
	assign out = ~temp;
endmodule
```



#### 1.7.3  写法三

```verilog
// method 3
module xnor_gate3(in, out);
	parameter n = 2;
	input[n-1:0] in;
	output out;

	wire temp;
	xor_gate #n xor_gate_temp(.in(in), .out(temp));
	assign out = ~temp;
endmodule
```



#### 1.7.4  测试代码

```verilog
// testbench of xnor_gate
`timescale 1ns/10ps
module xnor_gate_tb;
	reg[2:0] in;
	wire out1, out2, out3;

	xnor_gate	#3	xnor_gate_1(.in(in), .out(out1));
	xnor_gate2	#3	xnor_gate_2(.in(in), .out(out2));
	xnor_gate3	#3	xnor_gate_3(.in(in), .out(out3));

	initial begin
		in <= 0;
		#200	$stop;
	end

	always #5	in <= in + 1;
endmodule
```



## 2  触发器

### 2.1  RS 触发器

#### 2.1.1  基本 RSFF

```Verilog
// 1. 基本 RS 触发器
module RSFF1(S, R, Q);
	input S, R;		// 低电平有效
	output reg Q;

	always @(S or R) begin
		if (~S) begin			// S 有效
			if (~R) Q <= 1'bx;	// S 与 R 有效
			else	Q <= 1;		// 仅 S 有效
		end
		else if (~R) begin
			Q <= 0;				// 仅 R 有效
		end						// 均无效则不变
	end
endmodule
```



#### 2.1.2  同步 RSFF

```verilog
// 2. 同步 RS 触发器
module RSFF2(S, R, CP, Q);
	input S, R, CP;
	output reg Q;

	always @(S or R or CP) if (CP) begin
		case ({S, R})
			2'b00: Q <= 1'bx;
			2'b01: Q <= 1'b1;
			2'b10: Q <= 1'b0;
			2'b11: ; // Q <= Q;
			default Q <= 1'bx;
		endcase
	end
endmodule
```



#### 2.1.3  主从 RSFF

```verilog
// 3. 主从 RSFF
module RSFF3(S, R, CP, Q);
	input S, R, CP;
	output reg Q;

	reg Q1;
	always @(CP) begin
		if (CP) begin	// 上升沿
			Q1 <= S ? (R?Q1:0) : (R?1:1'bx);
		end
		else begin		// 下降沿
			Q <= Q1 ? 1 : 0;
		end
	end
endmodule
```



#### 2.1.4  测试代码

```verilog
// testbench of RSFF
`timescale 1ns/10ps
module RSFF_tb;
	reg S, R, CP;
	wire Q1, Q2;

	RSFF1 RSFF1(.S(S), .R(R), .Q(Q1));
	RSFF2 RSFF2(.S(S), .R(R), .Q(Q2), .CP(CP));
	RSFF3 RSFF3(.S(S), .R(R), .Q(Q3), .CP(CP));

	integer i;
	initial begin
		S <= 0;	R <= 1; CP <= 1;
		for (i = 0; i < 64; i = i + 1) begin
			#10 {S, R} = $random % 4;
		end
		$stop;
	end

	always #10	CP <= ~CP;
endmodule
```



### 2.2  D 触发器

#### 2.2.1  同步 DFF

```verilog
// 1. 同步 DFF (时序逻辑电路)
module DFF1(D, CP, Q);
	input D, CP;
	output reg Q;

	always @(D or CP) if (CP) Q <= D;
endmodule
```



#### 2.2.2  边沿 DFF

```verilog
// 2. 边沿 DFF
module DFF2(D, CP, Q);
	input D, CP;
	output reg Q;

	always @(posedge CP) Q <= D;
endmodule
```



#### 2.2.3  测试代码

```verilog
// testbench of DFF
`timescale 1ns/10ps
module DFF_tb;
	reg D, CP;
	wire Q1, Q2;

	DFF1 DFF1(.D(D), .CP(CP), .Q(Q1));
	DFF2 DFF2(.D(D), .CP(CP), .Q(Q2));

	integer i;
	initial begin
		D <= 0;	CP <= 0;
		for (i = 0; i < 16; i = i + 1) begin
			#10 D <= $random % 2;
		end
		$stop;
	end

	always #10	CP <= ~CP;
endmodule
```



### 2.3  JK 触发器

#### 2.3.1  同步 JKFF

```verilog
// 1. 同步 JKFF & 异步置数 & 异步清零
module JKFF1(J, K, CP, R, S, Q);
	input J, K, R, S, CP;	// 只有 CP 为高电平有效
	output reg Q;

	always @(*) begin
		if (~R) begin
			if (~S) Q <= 1'bx;
			else	Q <= 0;
		end
		else if (~S) Q <= 1;
		else if (CP) begin
			if (J) begin
				if (K)	Q <= ~Q;
				else	Q <= 1;
			end
			else begin
				if (K)	Q <= 0;
				else	Q <= Q;
			end
		end
	end
endmodule
```



#### 2.3.2  主从 JKFF

```verilog
// 2. 主从 JKFF
module JKFF2(J, K, CP, Q);
	input J, K, CP;	// 只有 CP 为高电平有效
	output reg Q;

	reg Q1;
	always @(CP) begin
		if (CP) begin	// 上升沿
			Q1 <= J ? (K ? ~Q1 : 1) : (K ? 0 : Q1);
		end
		else begin			// 下降沿
			Q <= Q1 ? 1 : 0;
		end
	end
endmodule
```



#### 2.3.3  边沿 JKFF

```verilog
// 3. 边沿 JKFF
module JKFF3(J, K, CP, Q);
	input J, K, CP;
	output reg Q;

	always @(posedge CP) begin
		Q <= (J^K) ? J : (J ? ~Q : Q);
		// 或 Q <= (J&K) ? (~Q) : ((J|K) ? J : Q);
		// 或 Q <= J ? (K ? ~Q : 1) : (K ? 0 : Q);
	end
endmodule
```



#### 2.3.4  测试代码

```verilog
// testbench of JKFF
`timescale 1ns/10ps
module JKFF_tb;
	reg J, K, R, S, CP;
	wire Q1, Q2, Q3;

	JKFF1 JKFF1(.J(J), .K(K), .R(R), .S(S), .CP(CP), .Q(Q1));
	JKFF2 JKFF2(.J(J), .K(K), .CP(CP), .Q(Q2));
	JKFF3 JKFF3(.J(J), .K(K), .CP(CP), .Q(Q3));

	integer i;
	initial begin
		J <= 0; K <= 0;	R <= 1; S <= 1; CP <= 0;
		for (i = 0; i < 64; i = i + 1) begin
			#10 {J, K} <= $random % 4;
		end
		#10	$stop;
	end

	always #10 CP <= ~CP;
endmodule
```



### 2.4  T 触发器

#### 2.4.1  同步 TFF

```verilog
// 1. 同步 TFF
module TFF1(T, CP, Q, res);
	input T, CP, res;	// res 为低电平有效同步清零端
	output reg Q;

	always @(posedge CP) begin
		if (~res)	Q <= 0;
		else		Q <= T ^ Q;
	end
endmodule
```



#### 2.4.2  同步 T'FF

```verilog
// 2. 同步 T'FF
module TFF2(CP, Q, res);
	input CP, res;		// res 为低电平有效同步清零端
	output reg Q;

	always @(posedge CP) begin
		if (~res)	Q <= 0;
		else		Q <= ~Q;
	end
endmodule
```



#### 2.4.3  测试代码

```verilog
// testbench of TFF
`timescale 1ns/10ps
module TFF_tb;
	reg T, CP, res;
	wire Q1, Q2;

	TFF1 TFF1(.T(T), .CP(CP), .Q(Q1), .res(res));
	TFF2 TFF2(.CP(CP), .Q(Q2), .res(res));

	initial begin
		T <= 0; CP <= 0; res <= 0;
		#20		res <= 1;
		#100	$stop;
	end

	always #5 CP <= ~CP;
	always #8 T <= ~T;
endmodule
```



## 3  组合逻辑电路

### 3.1  编码器

#### 3.1.1  普通编码器

##### 1  方法一

```verilog
// 普通编码器 (8-3 线)
/*
- 注 1: 本文件中所有端口均为低电平有效;
- 注 2: 如果使用 Quartus 仿真, 则需要建新的文件,
  使模块名与文件名相同, 且顶层模块名与项目名相同.
- 后记: 前两种方法都挺好的, 前者清晰, 后者简洁; 最主要的是一遍写完就能跑.
  不喜欢第三种方法, 因为花了很久调试, 最后问了 new bing 才知道, 原来在
  比较 wire 型和 integer 型变量时, 需要用 $signed() 函数进行强制类型转换.
  从其它编程语言的角度来看, 第三种方法最好, 因为很容易可以扩展到更多线编码器,
  但是对于 Verilog 则不然, 使用多个模块例化后级联, 应当是更为清晰的做法.
*/

// 方法 1: always 块 + case 语句
module encoder1_1(sin, I, A, eout, sout);
	input sin;			// 控制端 (输入使能端)
	input[7:0] I;		// 编码输入, 某一时刻只能对应一个输入信号编码
	output reg eout;	// 扩展端, 当且仅当控制端有效且有信号输入时有效
	output reg sout;	// 选通输出端, 当且仅当控制端有效且无信号输入时有效
	output reg[2:0] A;	// 编码输出, 为二进制数据

	always @(sin or I) if (~sin) begin
		// 控制端有效, 正常编码
		if (I == 8'b1111_1111) begin
			eout <= 1;	sout <= 0;
		end // 工作时, 无输入则 sout 有效
		else begin
			eout <= 0;	sout <= 1;
		end // 工作时, 有输入则 eout 有效

		case (I)
			8'b1111_1111,	// 无输入与 0 输出相同
			8'b1111_1110:	A <= 3'b111;	// 0
			8'b1111_1101:	A <= 3'b110;	// 1
			8'b1111_1011:	A <= 3'b101;	// 2
			8'b1111_0111:	A <= 3'b100;	// 3
			8'b1110_1111:	A <= 3'b011;	// 4
			8'b1101_1111:	A <= 3'b010;	// 5
			8'b1011_1111:	A <= 3'b001;	// 6
			8'b0111_1111:	A <= 3'b000;	// 7
			default:		A <= 3'bx;
		endcase	// 普通编码器不考虑其它情况
	end
	else begin
		// 控制端无效, 不进行编码
		A <= 3'b111;
		eout <= 1;
		sout <= 1;
	end
endmodule
```



##### 2  方法二

```verilog
// 方法 2: 逻辑表达式 + assign 语句
module encoder1_2(sin, I, A, eout, sout);
	input sin;		// 控制端
	input[7:0] I;	// 输入端
	output eout;	// 扩展端
	output sout;	// 选通端
	output[2:0] A;	// 输出端

	// 不能写成 sin | {}, 因为位数不统一
	assign A = sin ? 3'b111 : {
		I[4] & I[5] & I[6] & I[7],	// 第三位
		I[2] & I[3] & I[6] & I[7],	// 第二位
		I[1] & I[3] & I[5] & I[7]	// 第一位
	};
	assign eout = sin | &I;
	assign sout = sin | ~&I;
endmodule
```



##### 3  方法三

```verilog
// 方法 3: always 块 + for 循环
module encoder1_3(sin, I, A, eout, sout);
	input sin;			// 控制端
	input[7:0] I;		// 输入端
	output reg eout;	// 扩展端
	output reg sout;	// 选通端
	output reg[2:0] A;	// 输出端

	integer i;
	always @(sin or I) if (~sin) begin
		// 控制端有效, 正常编码
		// 初始默认无输入
		if (&I) begin
			A <= 3'b111;
			eout <= 1;
			sout <= 0;
		end
		else begin
			A <= 3'bx;
			eout <= 0;
			sout <= 1;
		end
		
		for (i = 0; i < 8; i = i + 1) begin
			if ($signed(~I) == (1<<i)) begin
				A <= 7 - i;
				eout <= 0;
				sout <= 1;
			end
		end
	end
	else begin
		// 控制端无效, 不进行编码
		A <= 3'b111;
		eout <= 1;
		sout <= 1;
	end
endmodule
```



##### 4  测试代码

```verilog
// testbench of encoder1 (common 8-3 encoder)
`timescale 1ns/10ps
module encoder1_tb;
	reg sin;
	reg[7:0] I;
	wire eout1, eout2, eout3;
	wire sout1, sout2, sout3;
	wire[2:0] A1, A2, A3;

	encoder1_1 encoder1_1(
		.sin(sin), .I(I), .A(A1),
		.eout(eout1), .sout(sout1)
	);
	encoder1_2 encoder1_2(
		.sin(sin), .I(I), .A(A2),
		.eout(eout2), .sout(sout2)
	);
	encoder1_3 encoder1_3(
		.sin(sin), .I(I), .A(A3),
		.eout(eout3), .sout(sout3)
	);

	initial begin
		sin <= 0;	I <= 8'b0;
		#2560	sin <= 1;
		#100	$stop;
	end

	always #10	I <= I + 1;
endmodule
```



#### 3.1.2  优先编码器

##### 1  方法一

```verilog
// 优先编码器 (8-3 线), 即 74148
// 注 1: 本文件中所有端口均为低电平有效;
// 注 2: 本文件中优先编码器均为高位优先;

// 方法 1: always 块 + if 语句
module encoder2_1(sin, I, A, eout, sout);
	input sin;			// 控制端 (输入使能端)
	input[7:0] I;		// 编码输入, 某一时刻只能对应一个输入信号编码
	output reg eout;	// 扩展端, 当且仅当控制端有效且有信号输入时有效
	output reg sout;	// 选通输出端, 当且仅当控制端有效且无信号输入时有效
	output reg[2:0] A;	// 编码输出, 为二进制数据

	reg[4:0] outvec;	// 为方便起见
	assign {eout, sout, A} = outvec;

	always @(sin or I) if (~sin) begin
		// 控制端有效, 正常编码
		if		(~I[7])	outvec <= 5'b01_000;
		else if (~I[6])	outvec <= 5'b01_001;
		else if (~I[5])	outvec <= 5'b01_010;
		else if (~I[4])	outvec <= 5'b01_011;
		else if (~I[3])	outvec <= 5'b01_100;
		else if (~I[2])	outvec <= 5'b01_101;
		else if (~I[1])	outvec <= 5'b01_110;
		else if (~I[0])	outvec <= 5'b01_111;
		else			outvec <= 5'b10_111;
	end
	else begin
		// 控制端无效, 不进行编码
		outvec <= 5'b11111;
	end
endmodule
```



##### 2  方法二

```verilog
// 方法 2: always 块 + for 循环
module encoder2_2(sin, I, A, eout, sout);
	input sin;			// 控制端
	input[7:0] I;		// 输入端
	output reg eout;	// 扩展端
	output reg sout;	// 选通端
	output reg[2:0] A;	// 输出端

	integer i;
	always @(sin or I) if (~sin) begin
		// 控制端有效, 正常编码
		// 默认无输入, 先赋初值
		{eout, sout} <= 2'b10;
		for (i = 0; i < 8; i = i + 1) begin
			if (~I[i]) begin
				A <= 7 - i;
				{eout, sout} <= 2'b01;
			end
		end
	end
	else begin
		// 控制端无效, 不进行编码
		A <= 3'b111;
		{eout, sout} <= 2'b11;
	end
endmodule
```



##### 3  方法三

```verilog
// 方法 3: assign 语句 + 条件判断
module encoder2_3(sin, I, A, eout, sout);
	input sin;		// 控制端
	input[7:0] I;	// 输入端
	output eout;	// 扩展端
	output sout;	// 选通端
	output[2:0] A;	// 输出端

	wire[4:0] outvec;	// 为了方便起见
	assign outvec = ~I[7] ? 5'b01_000 :
					~I[6] ? 5'b01_001 :
					~I[5] ? 5'b01_010 :
					~I[4] ? 5'b01_011 :
					~I[3] ? 5'b01_100 :
					~I[2] ? 5'b01_101 :
					~I[1] ? 5'b01_110 :
					~I[0] ? 5'b01_111 :
							5'b10_111;
	assign {eout, sout, A} = sin ? 5'b11_111 : outvec;
endmodule
```



##### 4  方法四

```verilog
// 方法 4: assign 语句 + 逻辑表达式
module encoder2_4(sin, I, A, eout, sout);
	input sin;		// 控制端
	input[7:0] I;	// 输入端
	output eout;	// 扩展端
	output sout;	// 选通端
	output[2:0] A;	// 输出端

	// // 或者写为 A = sin ? 3'b111 : {}
	assign A = {sin, sin, sin} | {
		I[7] & I[6] & I[5] & I[4],	// 第三位
		I[7] & I[6] & (
			~I[5] | ~I[4] | I[3]
		) & (
			~I[5] | ~I[4] | I[2]
		),							// 第二位
		I[7] & (~I[6] | I[5]) & (
			~I[6] | ~I[4] | I[3]
		) & (
			~I[6] | ~I[4] | ~I[2] | I[1]
		)							// 第一位
	};	// 更多线的编码器可用类似的方式写出表达式
	assign eout = sin | &I;
	assign sout = sin | ~&I;
endmodule
```



##### 5  测试代码

```verilog
// testbench of encoder2 (priority 8-3 encoder)
`timescale 1ns/10ps
module encoder2_tb;
	reg sin;
	reg[7:0] I;
	wire eout1, eout2, eout3, eout4;
	wire sout1, sout2, sout3, sout4;
	wire[2:0] A1, A2, A3, A4;

	encoder2_1 encoder2_1(
		.sin(sin), .I(I), .A(A1),
		.eout(eout1), .sout(sout1)
	);
	encoder2_2 encoder2_2(
		.sin(sin), .I(I), .A(A2),
		.eout(eout2), .sout(sout2)
	);
	encoder2_3 encoder2_3(
		.sin(sin), .I(I), .A(A3),
		.eout(eout3), .sout(sout3)
	);
	encoder2_4 encoder2_4(
		.sin(sin), .I(I), .A(A4),
		.eout(eout4), .sout(sout4)
	);

	initial begin
		sin <= 0;	I <= 8'b0;
		#2560	sin <= 1;
		#100	$stop;
	end

	always #10	I <= I + 1;
endmodule
```



### 3.2  译码器

#### 3.2.1  二进制译码器

##### 1  方法一

```verilog
// 二进制 8-3 线译码器 74138
// 方法 1: assign 语句 + 移位法
module decoder1_1(A, S, F);
	input[2:0] A, S;	// A 为高电平输入端, S 为使能端, 3'b100 有效
	output[7:0] F;		// F 为低电平输出端

	assign F = (S == 3'b100) ? ~(1'b1 << A) : ~(8'b0);
endmodule
```



##### 2  方法二

```verilog
// 方法 2: always 块 + 置数法
module decoder1_2(A, S, F);
	input[2:0] A, S;	// A 为低电平输入端, S 为使能端, 3'b100 有效
	output reg[7:0] F;	// F 为低电平输出端

	always @(A or S) if (S == 3'b100) begin
		F = ~(8'b0);
		F[A] = 0;
	end
	else begin
		F <= ~(8'b0);
	end
endmodule
```



##### 3  方法三

```verilog
// 方法 3: assign 语句 + case 语句
module decoder1_3(A, S, F);
	input[2:0] A, S;	// A 为低电平输入端, S 为使能端, 3'b100 有效
	output reg[7:0] F;	// F 为低电平输出端

	always @(A or S) if (S == 3'b100) begin
		case (A)
			3'b000:	F <= 8'b1111_1110;
			3'b001: F <= 8'b1111_1101;
			3'b010: F <= 8'b1111_1011;
			3'b011: F <= 8'b1111_0111;
			3'b100: F <= 8'b1110_1111;
			3'b101: F <= 8'b1101_1111;
			3'b110: F <= 8'b1011_1111;
			3'b111: F <= 8'b0111_1111;
			default: F <= 8'bx;
		endcase
	end
	else begin
		F <= ~(8'b0);
	end
endmodule
```



##### 4  测试代码

```verilog
// testbench of decoder1
`timescale 1ns/10ps
module decoder1_tb;
	reg[2:0] A, S;
	wire[7:0] F1, F2, F3;

	decoder1_1 decoder1_1(.A(A), .S(S), .F(F1));
	decoder1_2 decoder1_2(.A(A), .S(S), .F(F2));
	decoder1_3 decoder1_3(.A(A), .S(S), .F(F3));

	initial begin
		A <= 3'b0;	S <= 3'b100;	// 有效
		#100	S <= 3'b000;		// 无效
		#100	$stop;
	end

	always #10	A <= A + 1;
endmodule
```



#### 3.2.2  七段译码管

##### 1  模块代码

```verilog
// 七段码译码器;
module seg_dec(num, a_g);
    input[3:0] num;         // 待译码、显示的数字
    output reg[6:0] a_g;    // a_g --> {a, b, c, d, e, f, g}
    
    always @(num) begin
        case(num)
            4'd0: a_g <= 7'b111_1110;
            4'd1: a_g <= 7'b011_0000;
            4'd2: a_g <= 7'b110_1101;
            4'd3: a_g <= 7'b111_1001;
            4'd4: a_g <= 7'b011_0011;
            4'd5: a_g <= 7'b101_1011;
            4'd6: a_g <= 7'b101_1111;
            4'd7: a_g <= 7'b111_0000;
            4'd8: a_g <= 7'b111_1111;
            4'd9: a_g <= 7'b111_1001;
            default: a_g <= 7'b1;
        endcase
    end
endmodule
```



##### 2  测试代码

```verilog
// testbench of seg_dec
`timescale 1ns/10ps
module seg_dec_tb;
    reg[3:0] num;
    wire[6:0] a_g;
    
    seg_dec seg_dec(.num(num), .a_g(a_g));
    
    initial begin
        num <= 0;
        #200 $stop;
    end
    
    always #10 num <= num + 1;
endmodule
```



### 3.3  数据分配器

#### 3.3.1  模块代码

```verilog
// 数据分配器
module demux(I, A, S, F);
	input I, S;		// I 为输入端, S 为低电平控制端
	input[2:0] A;	// A 为高电平控制端
	input[7:0] F;	// F 为高电平输出端

	assign F = ~S & (8'b0 | (I << A));
endmodule
```



#### 3.3.2  测试代码

```verilog
// testbench of demux
`timescale 1ns/10ps
module demux_tb;
	reg I, S;
	reg[2:0] A;
	wire[7:0] F;

	demux demux(.I(I), .A(A), .S(S), .F(F));

	initial begin
		I <= 0;	S <= 0;	A <= 3'b0;
		#200	$stop;
	end

	always #10	A <= A + 1;
	always #80	I <= ~I;
	always #160	S <= ~S;
endmodule
```



### 3.4  数据选择器

#### 3.4.1  双四选一

##### 1  模块代码

```verilog
// 双四选一 74153
module mux74153(E, Ia, Ib, A, F1, F2);
	input E;			// 低电平使能端
	input[1:0] A;		// 高电平控制端
	input[3:0] Ia, Ib;	// 输入端
	output F1, F2;		// 输出端

	assign F1 = ~E & Ia[A];
	assign F2 = ~E & Ib[A];
endmodule
```



##### 2  测试代码

```verilog
// testbench of mux74153
`timescale 1ns/10ps
module mux74153_tb;
	reg E;
	reg[1:0] A;
	reg[3:0] Ia, Ib;
	wire F1, F2;

	mux74153 mux74153(
		.E(E), .Ia(Ia), .Ib(Ib),
		.A(A), .F1(F1), .F2(F2)
	);

	initial begin
		E <= 0;	A <= 2'b0;
		Ia <= 4'b0001;	Ib <= 4'b0001;
		#200	$stop;
	end

	always #10	A <= A + 1;
	always #40	begin
		Ia <= Ia << 1;
		Ib <= Ib << 1;
	end
	always #160	E <= ~E;
endmodule
```



#### 3.4.2  八选一

##### 1  模块代码

```verilog
// 八选一 74151
module mux74151(E, I, A, L);
	input E;		// 低电平使能端
	input[2:0] A;	// 高电平控制端
	input[7:0] I;	// 输入端
	output L;		// 输出端

	assign L = ~E & I[A];
endmodule
```



##### 2  测试代码

```verilog
// testbench of mux74151
`timescale 1ns/10ps
module mux74151_tb;
	reg E;
	reg[2:0] A;
	reg[7:0] I;
	wire L;

	mux74151 mux74151(.E(E), .I(I), .A(A), .L(L));

	initial begin
		E <= 0;	A <= 3'b0;
		I <= 8'b0000_0001;
		#700	$stop;
	end

	always #10	A <= A + 1;
	always #80	I <= I << 1;
	always #640	E <= ~E;
endmodule
```



### 3.5  n 位数值比较器

#### 3.5.1  模块代码

```verilog
// 4 位数值比较器 7485
module comparactor(A, B, Ig, Ie, Il, Fg, Fe, Fl);
	parameter n = 4;	// 位数
	input[n-1:0] A, B;	// 输入
	input Ig, Ie, Il;	// 级间输入, greater, equal, less
	output Fg, Fe, Fl;	// 级间输出, greater, equal, less

	assign Fg = (A > B) | (A == B & Ig);
	assign Fe = (A == B) & Ie;
	assign Fl = (A < B) | (A == B & Il);
endmodule
```



#### 3.5.2  测试代码

```verilog
// testbench of comparactor
`timescale 1ns/10ps
module comparactor_tb;
	parameter n = 4;
	reg[n-1:0] A, B;
	reg Ig, Ie, Il;
	wire Fg, Fe, Fl;

	comparactor #n	comparactor(
		.A(A), .B(B),
		.Ig(Ig), .Ie(Ie), .Il(Il),
		.Fg(Fg), .Fe(Fe), .Fl(Fl)
	);

	initial begin
			A <= 4'b0;	B <= 4'b0;
			{Ig, Ie, Il} <= 3'b000;
		#10	{Ig, Ie, Il} <= 3'b001;
		#10 {Ig, Ie, Il} <= 3'b010;
		#10 {Ig, Ie, Il} <= 3'b100;
		#10 A <= 4'b0101;
		#10 B <= 4'b1010;
		#10 $stop;
	end
endmodule
```



### 3.6  算术运算电路

#### 3.6.1  半加器

##### 1  方法一

```verilog
// 方法 1
module HA1(A, B, S, C);
	input A, B;
	output S, C;

	assign S = A ^ B;
	assign C = A & B;
endmodule
```



##### 2  方法二

```verilog
// 方法 2
module HA2(A, B, S, C);
	input A, B;
	output S, C;

	assign {C, S} = A + B;
endmodule
```



##### 3  测试代码

```verilog
// testbench of HA
`timescale 1ns/10ps
module HA_tb;
	reg A, B;
	wire S1, S2;
	wire C1, C2;

	HA1 HA1(.A(A), .B(B), .S(S1), .C(C1));
	HA2 HA2(.A(A), .B(B), .S(S2), .C(C2));

	initial begin
		A <= 0;	B <= 0;
		#50	$stop;
	end

	always #10	{A, B} <= {A, B} + 1;
endmodule
```



#### 3.6.2  全加器

##### 1  方法一

```verilog
// 方法 1
module FA1(A, B, Cin, S, Cout);
	input A, B, Cin;
	output S, Cout;

	assign S = A ^ B ^ Cin;
	assign Cout = (A ^ B) & Cin | A & B;
endmodule
```



##### 2  方法二

```verilog
// 方法 2
module FA2(A, B, Cin, S, Cout);
	input A, B, Cin;
	output S, Cout;

	assign {Cout, S} = A + B + Cin;
endmodule
```



##### 3  测试代码

```verilog
// testbench of FA
`timescale 1ns/10ps
module FA_tb;
	reg A, B, Cin;
	wire S1, S2;
	wire Cout1, Cout2;

	FA1 FA1(.A(A), .B(B), .Cin(Cin), .S(S1), .Cout(Cout1));
	FA2 FA2(.A(A), .B(B), .Cin(Cin), .S(S2), .Cout(Cout2));

	initial begin
		A <= 0;	B <= 0; Cin <= 0;
		#100	$stop;
	end

	always #10	{A, B, Cin} <= {A, B, Cin} + 1;
endmodule
```



#### 3.6.3  半减器

##### 1  方法一

```verilog
// 方法 1
module HS1(A, B, S, C);
	input A, B;
	output S, C;

	assign S = A ^ B;
	assign C = ~A & B;
endmodule
```



##### 2  方法二

```verilog
// 方法 2
module HS2(A, B, S, C);
	input A, B;
	output S, C;

	assign {C, S} = 2'b10 ^ (2'b10 + A - B);
endmodule
```



##### 3  测试代码

```verilog
// testbench of HS
`timescale 1ns/10ps
module HS_tb;
	reg A, B;
	wire S1, S2;
	wire C1, C2;

	HS1 HS1(.A(A), .B(B), .S(S1), .C(C1));
	HS2 HS2(.A(A), .B(B), .S(S2), .C(C2));

	initial begin
		A <= 0;	B <= 0;
		#50	$stop;
	end

	always #10	{A, B} <= {A, B} + 1;
endmodule
```



#### 3.6.4  全减器

##### 1  方法一

```verilog
// 方法 1
module FS1(A, B, C, S, Cout);
	input A, B, C;
	output S, Cout;

	assign S = A ^ B ^ C;
	// 没必要列真值表, 除非是考试
	assign Cout = (~A & B) | (~A & C) | (B & C);
endmodule
```



##### 2  方法二

```verilog
// 方法 2
module FS2(A, B, C, S, Cout);
	input A, B, C;
	output S, Cout;

	assign S = A ^ B ^ C;
	assign Cout = (~A & (B | C)) | (B & C);
	// 只需写一个括号: assign Cout = ~A & (B | C) | B & C;
endmodule
```



##### 3  方法三

```verilog
// 方法 3
module FS3(A, B, C, S, Cout);
	input A, B, C;
	output S, Cout;

	assign {Cout, S} = 2'b10 ^ (2 + A - B - C);
endmodule
```



##### 4  测试代码

```verilog
// testbench of FS
`timescale 1ns/10ps
module FS_tb;
	reg A, B, C;
	wire S1, Cout1;
	wire S2, Cout2;
	wire S3, Cout3;

	FS1 FS1(.A(A), .B(B), .C(C), .S(S1), .Cout(Cout1));
	FS2 FS2(.A(A), .B(B), .C(C), .S(S2), .Cout(Cout2));
	FS3 FS3(.A(A), .B(B), .C(C), .S(S3), .Cout(Cout3));

	initial begin
		A <= 0;	B <= 0;	C <= 0;
		#100	$stop;
	end

	always #10	{A, B, C} <= {A, B, C} + 1;
endmodule
```



### 3.7  奇偶校验器

#### 3.7.1  模块代码

```verilog
// n 位奇偶校验器
module parity_check(I, F);
	parameter n = 8;	// 二进制位数
	input[n-1:0] I;		// 待检测的 n 位二进制数
	output reg F;		// 输出二进制数的异或和

	integer i;
	always @(*) begin
		F = I[0];
		for (i = 1; i < n; i = i + 1) begin
			F = F ^ I[i];
		end
	end
endmodule
```



#### 3.7.2  测试代码

```verilog
// testbench of parity_check
`timescale 1ns/10ps
module parity_check_tb;
	parameter n = 8;
	reg[n-1:0] I;
	wire F;
	parity_check parity_check(.I(I), .F(F));

	generate genvar i;
		for (i = 0; i < n; i = i + 1) begin
			always #(10*i+10) I[i] <= ~I[i];
		end	// 用生成块遍历所有可能的情况
	endgenerate

	initial begin
		I <= 0;				// 即 n'b0
		#(2**n*2) $stop;	// 2 的 n 次方
	end	// 两个周期后停止测试
endmodule
```



## 4  时序逻辑电路

### 4.1  寄存器

#### 4.1.1  n 位数码寄存器

##### 1  模块代码

```verilog
// n 位数码寄存器 (类似 74175, 但多了 rst)
module register1(clk, rst, D, Q);
	parameter n = 4;
	input clk, rst;			// 时钟脉冲, 异步清零
	input[n-1:0] D;			// 输入端
	output reg[n-1:0] Q;	// 状态, 也是输出端

	always @(posedge clk or negedge rst) begin
		if (~rst) Q <= 0;
		else Q <= D;
	end
endmodule
```



##### 2  测试代码

```verilog
// testbench of register1
`timescale 1ns/10ps
module register1_tb;
	parameter n = 4;
	reg clk, rst;
	reg[n-1:0] D;
	wire[n-1:0] Q;

	register1 register1(.clk(clk), .rst(rst), .D(D), .Q(Q));

	initial begin
		clk <= 0;	rst <= 1;	D <= 0;
		#150	rst <= 0;
		#20		$stop;
	end

	always #5	clk <= ~clk;
	always #6	D <= D + 1;
endmodule
```



#### 4.1.2  n 位锁存器

##### 1  模块代码

```verilog
// n 位锁存器 (74373)
module register2(CP, E, D, Q);
	parameter n = 8;
	input CP;			// 锁存信号
	input E;			// 使能端口, 为 0 时有信号输出, 为 1 时输出高阻态
	input[n-1:0] D;		// 输入信号
	output reg[n-1:0] Q;		// 输出信号

	always @(CP or E or D) begin
		if (E)			Q <= 'bz;	// E = 1,  输出高阻态
		else if (~CP)	Q <= D;		// CP = 0, 输入输出一致
									// CP = 1, 输出不会改变
	end
endmodule
```



##### 2  测试代码

```verilog
// testbench of register2
`timescale 1ns/10ps
module register2_tb;
	parameter n = 8;
	reg CP, E;
	reg[n-1:0] D;
	wire[n-1:0] Q;

	register2 register2(.CP(CP), .E(E), .D(D), .Q(Q));

	initial begin
		CP <= 0;	E <= 0;		D <= 0;
		#500	$stop;
	end

	always #5	D <= D + 1;
	always #20	CP <= ~CP;
	always #100	E <= ~E;
endmodule
```



#### 4.1.3  n 位移位寄存器

##### 1  模块代码

```verilog
// n 位移位寄存器 (74194)
module register3(clk, rst, S, D, Q);
	parameter n = 4;
	input clk, rst;			// 时钟脉冲, 异步清零
	input[1:0] S;			// {0, 0} 保持, {0, 1} 右移, {1, 0} 左移, {1, 1} 送数
	input[n-1:0] D;			// 置入数据
	output reg[n-1:0] Q;	// 输出数据

	always @(posedge clk or negedge rst) begin
		if (~rst)	Q <= 0;
		else case (S)
			2'b00:	Q <= Q;			// 不变
			2'b01:	Q <= Q >> 1;	// 右移
			2'b10:	Q <= Q << 1;	// 左移
			2'b11:	Q <= D;			// 置数
			default: Q <= 'bx;		// 不定值
		endcase
	end
endmodule
```



##### 2  测试代码

```verilog
// testbench of register3
`timescale 1ns/10ps
module register3_tb;
	parameter n = 4;
	reg clk, rst;
	reg[1:0] S;
	reg[n-1:0] D;
	wire[n-1:0] Q;

	register3 register3(
		.clk(clk), .rst(rst),
		.S(S), .D(D), .Q(Q)
	);

	initial begin
		clk <= 0;	rst <= 0;
		D <= 0;		S <= 2'b00;
		#10		rst <= 1;		// 保持
		#10		S <= 2'b11;		// 计数
		#50		S <= 2'b01;		// 右移
		#50		S <= 2'b11;		// 计数
		#50		S <= 2'b10;		// 左移
		#50		S <= 2'b11;		// 计数
		#50		rst <= 0;		// 清零
		#20		$stop;
	end

	always #5	clk <= ~clk;
	always #15	D <= D + 1;
endmodule
```



### 4.2  2n 分频器

#### 4.2.1  模块代码

```verilog
// 2n 分频器
module freqDivider(in, out, rst);
	parameter n = 2;		// 默认为 4 分频
	input in, rst;			// 异步复位
	output reg out;
	parameter m = $clog2(2*n);	// 位数
	reg[m-1:0] cnt;

	always @(posedge in or negedge rst) begin
		if (~rst) begin
			out <= 0;
			cnt <= 0;
		end
		else if (cnt == n - 1) begin
			out <= 1;
			cnt <= cnt + 1;
		end
		else if (cnt == 2*n - 1) begin
			out <= 0;
			cnt <= 0;
		end
		else cnt <= cnt + 1;
	end
endmodule
```



#### 4.2.2  测试代码

```verilog
// testbench of freqDivider
`timescale 1ns/10ps
module freqDivider_tb;
	reg in, rst;
	wire out1, out2;

	freqDivider #2	freqDivider1(.in(in), .out(ou1), .rst(rst));
	freqDivider #4	freqDivider1(.in(in), .out(ou2), .rst(rst));

	initial begin
		in <= 0;	rst <= 1;
		#1		rst <= 0;
		#1		rst <= 1;
		#200	rst <= 0;
		#20		$stop;
	end

	always #5	in <= ~in;
endmodule
```



### 4.3  计数器

#### 4.3.1  n 位二进制加法计数器

##### 1  模块代码

```verilog
// n 位二进制计数器
module counter(clk, rst, cin, cout, Q, D, load);
	parameter n = 4;
	input clk, rst;			// 时钟脉冲, 异步清零
	input cin, load;		// 进位输入, 同步置数
	input[n-1:0] D;			// 置入数据
	output cout;			// 进位输出
	output reg[n-1:0] Q;	// 输出输出

	always @(posedge clk or negedge rst) begin
		if (~rst) Q <= 0;
		else if (cin) begin
			if (~load)	Q <= D;
			else 		Q <= Q + 1;
		end
	end

	assign cout = (Q == (1 << n) - 1);
endmodule
```



##### 2  测试代码

```verilog
// testbench of counter
`timescale 1ns/10ps
module counter_tb;
	parameter n = 4;
	reg clk, rst;
	reg cin, load;
	reg[n-1:0] D;
	wire cout;
	wire[n-1:0] Q;

	counter #n	counter(
		.clk(clk), .rst(rst),
		.cin(cin), .load(load),
		.D(D), .cout(cout), .Q(Q)
	);

	initial begin
		clk <= 0;	rst <= 1;
		cin <= 1;	load <= 1;
		D <= 4'b0101;
		#1		rst <= 0;
		#1		rst <= 1;
		#100	load <= 0;
		#8		load <= 1;
		#200	$stop;
	end

	always #5	clk <= ~clk;
endmodule
```



#### 4.3.2  n 位二进制可逆计数器

##### 1  模块代码

```verilog
// 可逆计数器
module reversibleCounter(clk, add, rst, D, Q, load, cin, cout);
	parameter n = 4;
	input clk, rst;			// 时钟脉冲, 加法复位
	input add;				// 为 1 则加法, 为 0 则减法
	input cin, load;		// 进位输入, 同步置数
	input[n-1:0] D;			// 置入数据
	output reg[n-1:0] Q;	// 输出数据
	output cout;			// 进位输出

	always @(posedge clk or negedge rst) begin
		if (~rst) Q <= 0;
		else if (cin) begin
			if (~load)		Q <= D;
			else if (add)	Q <= Q + 1;
			else 			Q <= Q - 1;
		end
	end

	assign cout = (add & (Q == (1 << n) - 1)) | (~add & Q == 0);
endmodule
```



##### 2  测试代码

```verilog
// testbench of reversibleCounter
`timescale 1ns/10ps
module reversibleCounter_tb;
	parameter n = 4;
	reg clk, rst;
	reg add;
	reg cin, load;
	reg[n-1:0] D;
	wire cout;
	wire[n-1:0] Q;

	reversibleCounter #n reversibleCounter(
		.clk(clk), .rst(rst), .add(add),
		.cin(cin), .load(load), .D(D),
		.cout(cout), .Q(Q)
	);

	initial begin
		clk <= 0;	rst <= 1;
		cin <= 1;	load <= 1;
		add <= 1;	D <= 4'b0101;
		#1		rst <= 0;
		#1		rst <= 1;
		#100	load <= 0;
		#8		load <= 1;
		#200	add <= 0;
		#200	$stop;
	end

	always #5	clk <= ~clk;
endmodule
```



#### 4.3.3  BCD 码 24 进制计数器

##### 1  模块代码

```verilog
// 24 进制计数器
module counter24(clk, rst, d0, d1, load, cin, cout, y0, y1);
	input clk;				// 时钟信号, 上升沿触发
	input rst;				// 异步清零, 低电平有效
	input[3:0] d0, d1;		// 置入数据, 分别为四位
	input load;				// 同步置数, 低电平有效
	input cin;				// 使能端口, 高电平有效
	output cout;			// 进位信号, 五十九为一
	output reg[3:0] y0, y1;	// 前者个位, 后者为十位
	// 这里数字的个位与十位都采用四位二进制, 是为了方便之后译码
	// 之后将 1'd9 即 4'b1001 简写为 9, 诸如此类, 以提高易读性

	// 进位端口
	assign cout = cin && (y0 == 3) && (y1 == 2);

	always @(posedge clk or negedge load or negedge rst) begin
		if (~load) begin				// 异步置数
			y0 <= d0;	y1 <= d1;
		end
		else if (~rst) begin			// 异步清零
			y0 <= 0;	y1 <= 0;
		end
		else if (cin) begin				// 时钟脉冲
			if (y1 == 2 && y0 == 3) begin
				y0 <= 0;	y1 <= 0;	// 23 后为 00
			end
			else if (y0 == 9) begin		// 十位进一
				y0 <= 0;	y1 <= y1 + 1;
			end
			else y0 <= y0 + 1;			// 个位进一
		end
	end
endmodule
```



##### 2  测试代码

```verilog
`timescale 1ns/10ps
module counter24_tb;
	reg clk, rst, load, cin;
	reg[3:0] d0, d1;
	wire[3:0] y0, y1;
	wire cout;

	counter24 counter24(
		.clk(clk),	.rst(rst),	.cin(cin),
		.d0(d0),	.d1(d1),	.load(load),
		.y0(y0),	.y1(y1),	.cout(cout)
	);

	initial begin
		clk <= 0;	rst <= 1;	cin <= 1;
		d0 <= 0;	d1 <= 0;	load <= 1;
		#10		rst <= 0;	// 先清零, 否则 y0 与 y1 为不定值
		#10		rst <= 1;	// 复位端的恢复
		#1000	$stop;
	end

	always #5	clk <= ~clk; // 周期为 10
endmodule
```



#### 4.3.4  BCD 码 60 进制计数器

##### 1  模块代码

```verilog
// 60 进制计数器
module counter60(clk, rst, d0, d1, load, cin, cout, y0, y1);
	input clk;				// 时钟信号, 上升沿触发
	input rst;				// 异步清零, 低电平有效
	input[3:0] d0, d1;		// 置入数据, 分别为四位
	input load;				// 同步置数, 低电平有效
	input cin;				// 使能端口, 高电平有效
	output cout;			// 进位信号, 五十九为一
	output reg[3:0] y0, y1;	// 前者个位, 后者为十位
	// 这里数字的个位与十位都采用四位二进制, 是为了方便之后译码
	// 之后将 1'd9 即 4'b1001 简写为 9, 诸如此类, 以提高易读性

	// 进位端口
	assign cout = cin && (y0 == 9) && (y1 == 5);

	always @(posedge clk or negedge load or negedge rst) begin
		if (~load) begin				// 异步置数
			y0 <= d0;	y1 <= d1;
		end
		else if (~rst) begin			// 异步清零
			y0 <= 0;	y1 <= 0;		// 不能写成 y0 <= y1 <= 0;
		end
		else if (cin) begin				// 时钟脉冲
			if (y0 == 9) begin
				y0 <= 0;				// 进位为 0
				if (y1 == 5) y1 <= 0;	// 59 后为 00
				else y1 <= y1 + 1;		// 十位进一
			end
			else y0 <= y0 + 1;			// 个位进一
		end
	end
endmodule
```



##### 2  测试代码

```verilog
`timescale 1ns/10ps
module counter60_tb;
	reg clk, rst, load, cin;
	reg[3:0] d0, d1;
	wire[3:0] y0, y1;
	wire cout;

	counter60 counter60(
		.clk(clk),	.rst(rst),	.cin(cin),
		.d0(d0),	.d1(d1),	.load(load),
		.y0(y0),	.y1(y1),	.cout(cout)
	);

	initial begin
		clk <= 0;	rst <= 1;	cin <= 1;
		d0 <= 0;	d1 <= 0;	load <= 1;
		#10		rst <= 0;	// 先清零, 否则 y0 与 y1 为不定值
		#10		rst <= 1;	// 复位端的恢复
		#1000	$stop;
	end

	always #5	clk <= ~clk; // 周期为 10
endmodule
```



## 5  代码下载

<a href="src\chips.zip" download>点击下载代码</a>.