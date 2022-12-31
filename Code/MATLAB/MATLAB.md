<h1 align = "center">MATLAB</h1>

$$
\nonumber
%\scriptsize{ \textup{Micro Command Definitions} }
\def\trans{^\textup{T}}
$$

[TOC]

---

# 第 1 章 用户界面

## 1.1 科学计算概述

### 1.1.1 发展历程

### 1.1.2 系统

1. 桌面工具和开发环境
2. 数学函数库
3. 语言
4. 图形处理
5. 外部接口

### 1.1.3 特点

## 1.2 工作界面

### 1.2.1 标题栏


### 1.2.2 功能区

- 选项卡
  - 主页、绘图、APP

### 1.2.3 工具栏

### 1.2.4 命令行窗口

- 退出
  - exit、quit、Alt+F4

- 关闭当前已打开的文件
  - close all

### 1.2.5 历史记录窗口

### 1.2.6 当前文件夹窗口

- 设置路径
  - pathtool

### 1.2.7 工作区窗口

- 保存变量

```matlab
save(filename)
save(filename,variables)
save(filename,variables,fmt)
save(filename,variables,version)
save(filename,variables,version,'-nocompression')
save(filename,variables,'-append')
save(filename,variables,'-append','-nocompression')
save filename
```

- 加载变量

```matlab
load(filename)
load(filename,variables)
load(filename,'-ascii')
load(filename,'-mat')
load(filename,'-mat',variables)
S = load(___)
load filename
```

## 1.2.8 图像窗口



---

# 第 2 章 帮助系统

## 2.1 内容及查找

### 2.1.1 搜索路径

- 得到所有搜索路径
  - path
- 将所有搜索路径连接成一个长字符串
  - genpath

### 2.1.2 扩展搜索路径

- 设置路径对话框
- path(path, 'D:\MATLAB\matlabfile')
- addpath 'D:\MATLAB\matlabfile' -begin
- pathtool

## 2.2 帮助系统

### 2.2.1 联机帮助系统

- doc
- doc name

### 2.2.2 帮助命令

- help 系列命令
  - help：最近使用命令、在线帮助文档
  - help function 或 help className
  - 调用联机帮助窗口：helpwin、helpdesk

- 其它帮助指令

| 命令    | 说明             | 命令  | 说明             |
| ------- | ---------------- | ----- | ---------------- |
| lookfor | 搜索函数关键字   | exist | 变量检验函数     |
| who     | 内存变量列表     | whos  | 内存变量详细信息 |
| what    | 目录中的文件列表 | which | 确定文件的位置   |

### 2.2.3 联机网络系统

- 主演示页面
  - 资源 - 帮助 - 示例
  - demos 命令

### 2.2.4 网络资源

- 附加功能



---

# 第 3 章 基础知识

## 3.1 命令组成

### 3.1.1 基本符号

### 3.1.2 功能符号

#### 1. 快捷键

| 按键                 | 功能       | 按键            | 功能       |
| -------------------- | ---------- | --------------- | ---------- |
| Ctrl + $\leftarrow$  | 左移一个字 | Alt + Backspace | 删除到行尾 |
| Ctrl + $\rightarrow$ | 右移一个字 | Esc             | 清除一行   |
| Ctrl + Enter         | 运行脚本   |                 |            |

#### 2. 标点

| 标点 | 定义             | 标点 | 定义         |
| ---- | ---------------- | ---- | ------------ |
| []   | 矩阵定义         | {}   | 单元数组     |
| .    | 域访问符         | %    | 注释标记     |
| !    | 调用操作系统运算 | '    | 字符串标记符 |
| ;    | 不显示运算结果   | ...  | 续行号       |



### 3.1.3 常用指令

#### 1. 常用操作命令

| 命令    | 功能                   | 命令 | 功能         |
| ------- | ---------------------- | ---- | ------------ |
| cd      | 显示或改变工作目录     | pwd  | 显示当前路径 |
| clf     | 清楚图形窗口           | hold | 保持图形     |
| diary   | 日志文件               | load | 加载变量     |
| dir     | 显示当前目录下的文件   | pack | 整理内存碎片 |
| echo    | 命令行窗口信息显示开关 | path | 显示搜索目录 |
| save    | 保存内存变量           | type | 显示文件内容 |
| warning | 警告                   | disp | 输出         |

#### 2. 键盘操作技巧

| 键盘按键     | 说明               | 键盘按键 | 说明       |
| ------------ | ------------------ | -------- | ---------- |
| $\uparrow$   | 重新调用前一行命令 | Home     | 移动到行首 |
| $\downarrow$ | 重新调用下一行命令 | End      | 移动到行尾 |



## 3.2 数据类型

### 3.2.1 变量与常量

#### 1. 变量

- 必须以字母开头，仅含字母、数字、下划线
- 区分大小写
- 不超过 31 个字符
- 函数文件内通过关键词 `global` 声明变量为全局变量

#### 2. 常量

| 常量      | 说明             | 常量    | 说明         |
| --------- | ---------------- | ------- | ------------ |
| ans       | 默认变量         | pi      | 圆周率       |
| eps       | 浮点运算相对精度 | inf     | 无穷大       |
| NaN / nan | 非数             | i(j)    | 复数单位     |
| realmin   | 最小正浮点数     | realmax | 最大正浮点数 |

- clear pi：恢复预定义变量的初始值



### 3.2.2 数值

#### 1. 数值类型

- 整型

- 浮点型

  - 十进制形式

  - 指数形式
    - 3E6
    - 0.5e5
  - float：7 位有效数字
  - double：16位有效数字

- 复数

  - a + bi 或 a + bj
  - a + b\*i 或 a + b\*j



#### 2. 显示格式

| 调用格式       | 说明            | 调用格式      | 说明     |
| -------------- | --------------- | ------------- | -------- |
| format short   | 5位定点（默认） | format long   | 15位定点 |
| format short e | 5位浮点         | format long e | 15位浮点 |
| format short g | 自动选择        | format long g | 自动选择 |
| format hex     | 十六进制        | format bank   | 美元美分 |
| format rat     | 有理数          | format +      | 矩阵简记 |
| format compact | 变量间没有空行  | format loose  | 有空行   |



## 3.3 运算符

### 3.3.1 算术运算符

| 运算符 | 定义 | 运算符 | 定义     |
| ------ | ---- | ------ | -------- |
| /      | 右除 | '      | 共轭转置 |
| \      | 左除 | .'     | 转置     |

### 3.3.2 关系运算符

| 运算符    | 定义                  | 运算符    | 定义                 |
| --------- | --------------------- | --------- | -------------------- |
| $\sim$    | 非                    | $\sim=$   | 不等于               |
| and(a, b) | 与                    | or(a, b)  | 或                   |
| not(a)    | 非                    | xor(a, b) | 异或                 |
| any(x)    | $ \exist \; x_0 = 0 $ | all(x)    | $ \forall \; x = 0 $ |



## 3.4 函数运算

### 3.4.1 复数运算

| 函数   | 功能     | 函数   | 功能     | 函数     | 功能         |
| ------ | -------- | ------ | -------- | -------- | ------------ |
| abs    | 模       | angle  | 相角     | complex  | 构造复数     |
| real   | 实部     | imag   | 虚部     | conj     | 共轭         |
| unwrap | 调整相位 | isreal | 判断实数 | cplxpair | 排列复共轭对 |

### 3.4.2 三角函数



---

# 第 4 章 向量与多项式

<font color = 'red'>注意：MATLAB 中矩阵元素 **按列计数**，从上到下，从左到右，下标和文件读取时均如此！</font>

## 4.1 向量

### 4.1.1 向量的生成

- 直接输入
  - [a, b; c, d]
  - [a b; c d]

- 冒号法
  - first : last
  - fist : step : last

- linspace(first, last, number)
- logspace(first, last, number)



### 4.1.2 向量的引用

- x(n)
- x(n1:n2)



### 4.1.3 向量运算

- 四则运算

- 点积

  - dot(a, b)
  - dot(a, b, dim)

- 叉积

  - cross(a, b)

  - cross(a, b, dim)

    size(a, dim) 和 size(b, dim) 都等于 3.

- 混合积
  - dot(a, cross(b, c))



## 4.2 多项式

### 4.2.1 多项式的创建

- 符号多项式
  - 'a*x^n + b*x^(n-1)'
- 数值多项式
  - 通过系数
    - p = [1, 2, 3];
    - poly2sym(p);
  - 通过根
    - root = [1 2 3+i]
    - p = poly(root)
    - poly2sym(p)



### 4.2.2 数值多项式的运算

- 乘法（卷积）
  - conv(p1, p2)
- 除法（解卷）
  - [q, r] = deconv[p1, p2]

- 导数
  - polyder(p)



## 4.3 特殊变量

### 4.3.1 单元型变量

**创建和引用**

- 赋值语句（大括号）
  - E = {A, B; C, D}
- 预分配存储空间：cell
  - E = cell(1, 3)
  - E{1, 1} = [1:4]



**函数**

| 函数        | 说明                             | 函数        | 说明                        |
| ----------- | -------------------------------- | ----------- | --------------------------- |
| cell        | 生成单元型变量                   | cellfun     | cellfun('islogical', E)     |
| celldisp    | celldisp(c), celldisp(c, 'name') | cellplot    | 用图形显示                  |
| num2cell    | 数值 $ \rightarrow $ 单元型变量  | deal        | 输入输出处理                |
| cell2struct | 单元型 $\rightarrow$ 结构型      | struct2cell | 结构型 $\rightarrow$ 单元型 |
| iscell      | 判断单元型                       | reshape     | 改变结构                    |



### 4.3.2 结构型变量

**创建和引用**

- s = struct('field1', {}, 'field2', {},···)
- s = struct('field1', values1, 'field2', values2,···)



**函数**

| 函数       | 说明       | 函数        | 说明       |
| ---------- | ---------- | ----------- | ---------- |
| struct     | 创建       | isstruct    | 判断       |
| fieldnames | 得到属性名 | getfield    | 得到属性值 |
| setfield   | 设定属性值 | rmfield     | 删除属性   |
| isfield    | 判断       | cell2struct | 类型转换   |



---

# 第 5 章 矩阵运算

## 5.1 矩阵

### 5.1.1 矩阵定义

- 直接输入法
  - [[1, 2 3]; 4 5,6+i]



### 5.1.2 矩阵生成

- 利用 M 文件创建 .m
  - M 文件
    - 命令式文件
    - 函数式文件
  - 输入文件名（无后缀）
    - 变量名与文件名不能相同
    - 需添加至 **当前文件夹** 或者 **MATLAB路径**
- 利用文本文件创建 .txt
  - `load input.txt`
  - `data = load('input.txt')`
  - 文件名即矩阵变量名



### 5.1.3 特殊矩阵

| 函数         | 说明              | 函数        | 说明     |
| ------------ | ----------------- | ----------- | -------- |
| eye(n)       | $n$ 阶单位矩阵    | ones(m, n)  | 全1矩阵  |
| eye(m, n)    | $m\cp n$ 单位矩阵 | zeros(m, n) | 零矩阵   |
| eye(size(A)) | 同上              | rand(m, n)  | 随机矩阵 |
| compan(P)    | 伴随矩阵          | diag(v)     | 对角阵   |
| hilb(n)      | Hilbert 矩阵      | magic(n)    | 幻方     |
| invhilb(n)   | Hilbert 逆矩阵    | sparse(A)   | 稀疏矩阵 |



### 5.1.4 矩阵元素运算

**1. 修改**

- 扩充
  - A = [A; B C]
- 删除
  - A(m, :) = []
- 赋值
  - A(m, n) = a
  - A(m, :) = v
  - A(:, n) = v



**2. 变维**

- reshape 函数
  - B = reshape(A, m, n)
- 冒号法
  - C = zeros(m, n)
  - C(:) = A(:)



**3. 变向**

| 命令      | 说明                  | 命令          | 说明      |
| --------- | --------------------- | ------------- | --------- |
| rot90(A)  | 逆时针旋转 $90^\circ$ | rot90(A, k)   | 旋转 k 次 |
| fliplr(X) | 左右翻转              | filpdim(X, 1) | 左右翻转  |
| flipud(X) | 上下翻转              | flipdim(X, 2) | 上下翻转  |



**4. 抽取**

| 命令       | 说明            | 命令       | 说明                      |
| ---------- | --------------- | ---------- | ------------------------- |
| diag(X)    | 主对角线        | tril(X)    | 主下三角部分              |
| diag(X, k) | 第 k 条主对角线 | tril(X, k) | 第 k 条对角线下面（包括） |
| diag(v)    | 非方阵          | triu(X)    | 主上三角部分              |
| diag(v, k) | 非方阵          | triu(X, k) | 第 k 条对角线上面（包括） |



## 5.2 矩阵数学运算

### 5.2.1 加减

​	A $\pm$ B



### 5.2.2 乘法

**1. 数乘运算**

- a * A

**2. 矩阵乘法**

- A * B

**3. 点乘**

- A .* B



### 5.2.3 除法

**1. 左除**

- A \ B

- inv(A) * B
- A .\ B

**2. 右除**



## 5.3 矩阵运算

### 5.3.1 幂函数

- A^k



### 5.3.2 逆矩阵

- inv(A)
- 逆条件数值：rcond(A)

实例：矩阵更新函数



### 5.3.3 条件数

- cond(A)
  - $ \textup{cond}(\vb*{A})_v \equiv \norm\big{\vb*{A}^{-1}}_v \norm\big{\vb*{A}}_v $.
  - $ \textup{cond}(\vb*{A})_v \gg 1 $ 则矩阵 $\vb*{A}$ 是病态的，反之是良态的




### 5.3.4 范数

- 向量 $ \vb*{x} \in \mathbb{R}^n $
  - $ \vb*{x}$ 的 $\infty-$范数：$ \norm\big{\vb*{x}}_\infty = \max\limits_{1\leq i\leq n} \norm\big{x_i} $.
  - $ \vb*{x}$ 的 $1-$范数：$ \displaystyle \norm\big{x}_1 = \sum_{i=1}^n \vqty{x_i} $.
  - $ \vb*{x}$ 的 $2-$范数（欧式范数）：$ \displaystyle \norm\big{\vb*{x}}_2 = \pqty{ \sum_{i=1}^n x_i^2 }^{\cfrac{1}{2}} $.
  - $ \vb*{x}$ 的 $p-$范数：$ \displaystyle \norm\big{\vb*{x}}_p = \pqty{ \sum_{i=1}^n \left| x_i \right|^p }^{\cfrac{1}{p}} $.
- 矩阵 $ \vb*{A} \in \mathbb{R}^{m\times n} $
  - $\vb*{A}$ 的行范数 ($\infty-$范数)：$ \displaystyle \norm\big{A}_\infty = \max\limits_{1\leq i \leq n} \sum_{j=1}^n \vqty{a_{ij}} $.
  - $\vb*{A}$ 的列范数 ($1-$范数)：$ \displaystyle \norm\big{A}_1 = \max\limits_{1\leq j \leq n} \sum_{i=1}^n \vqty{a_{ij}} $.
  - $\vb*{A}$ 的欧式范数 ($2-$范数)：$ \norm\big{\vb*{A}}_2 = \sqrt{ \lambda_{\max} \qty(\vb*{A}\trans\vb*{A}) } $.
  - $\vb*{A}$ 的 *Frobenius* 范数 ($\textup{F}-$范数)：$ \displaystyle \norm\big{\vb*{A}}_F = \pqty{ \sum_{i=1}^n \sum_{j=1}^n a_{ij}^2 }^\cfrac{1}{2} = \tr(\vb*{A}\trans\vb*{A}) $.

**矩阵函数**

| 函数       | 说明               | 函数             | 说明                              |
| ---------- | ------------------ | ---------------- | --------------------------------- |
| cond(A)    | 条件数值           | diag()           | 对角变换                          |
| conest(A)  | 1-范数矩阵条件数值 | expm(A)          | 矩阵指数 $ \textup{e}^{\vb*{A}} $ |
| det(A)     | 行列式             | logm(A)          | 对数运算                          |
| eig(A)     | 特征值             | sqrtm(A)         | 开方运算                          |
| inv(A)     | 逆矩阵             | cdf2rdf(A)       | 复数对角 $\rightarrow$ 实数矩阵   |
| norm(A)    | 欧式范数           | rref(A)          | $\rightarrow$ 逐行递减阶梯矩阵    |
| normest(A) | 欧式范数估值       | rsf2csf(A)       | 实数块对角 $\rightarrow$ 复数...  |
| rank(A)    | 矩阵的秩           | rot90(A)         | 矩阵旋转                          |
| orth(A)    | 正交化             | fliplr(A)        | 左右翻转                          |
| rcond(A)   | 逆条件数值         | flipud(A)        | 上下翻转                          |
| trace(A)   | 矩阵的迹           | flipdim(A, dim)  | 上下（左右）翻转                  |
| triu(A)    | 上三角变换         | reshape(A, m, n) | 矩阵变维                          |
| tril(A)    | 下三角变换         | funm(A, fun)     | 矩阵函数                          |



## 5.4 矩阵分解

### 5.4.1 楚列斯基分解

- R = chol(A)
- [R, p] = chol(A)



### 5.4.2 LU 分解

- [L, U] = lu(A)
- [L, U, P] = lu(A)



### 5.4.3 LDM$^\textup{T}$ 与 LDL$^\textup{T}$ 分解

### 5.4.4 QR 分解

- qr 命令

  - R = qr(A, 0)

  - [Q, R] = qr(A)

  - [Q, R, E] = qr(A, 0)

  - [C, R] = qr(A, b)

- qrdelete 命令

- qrinsert 命令



### 5.4.5 SVD 分解

### 5.4.6 舒尔分解

### 5.4.6 海森伯格分解



## 5.5 方程组的求解



---

# 第 6 章 二维绘图

## 6.1 二维绘图

| 命令                             | 说明                       |
| -------------------------------- | -------------------------- |
| hold on / off                    | 打开 / 关闭绘图保持命令    |
| axis( [xmin, xmax, ymin, ymax] ) | 调整坐标轴范围             |
| sym x                            | fplot 用于绘制函数符号图形 |
| figure                           | 新建图层                   |
| close all                        | 关闭打开的 MATLAB 文件     |
| clf()                            | 不关闭图形窗口，仅清除内容 |
| grid on / off                    | 显示 / 隐藏分割线          |
| box on / off                     | 坐标区是否紧密围绕数据     |



### 6.1.1 plot 绘图命令

**1. plot(x)**

**2. 多图形显示**

- subplot()

| 调用格式                  | 说明                                                         | 调用格式                    | 说明                                    |
| ------------------------- | ------------------------------------------------------------ | --------------------------- | --------------------------------------- |
| subplot(m, n, p)          | 当前窗口分割成 m$\cp$n 个视图区域，并指定第 p 个视图为当前视图 | subplot(m, n, p, 'replace') | 删除位置 p 处的现有坐标区并创建新坐标区 |
| subplot(m, n, p, 'align') | 设置对齐                                                     | subplot(m, n, ax)           | 绘制至 ax 坐标区                        |
| subplot('Position', pos)  | pos = [left, bottom, width, height]                          | subplot(···, Name, Value)   | 设置属性值                              |
| ax = subplot(···)         | 返回图形句柄                                                 | subplot(ax)                 | 根据 ax 坐标区绘制                      |

- tiledlayout()

| 调用格式                      | 说明 | 调用格式                 | 说明 |
| ----------------------------- | ---- | ------------------------ | ---- |
| tiledlayout(m ,n)             |      | tiledlayout('flow')      |      |
| tiledlayout(···, Name, Value) |      | tiledlayout(parent, ···) |      |
| t = tiledlayout(···)          |      |                          |      |

- nexttile()

| 调用格式         | 说明                                  | 调用格式                | 说明                    |
| ---------------- | ------------------------------------- | ----------------------- | ----------------------- |
| nexttile         | 切换至下一窗口                        | nexttile(tilenum)       | 切换至第 tilenum 个窗口 |
| nexttile(span)   | span = [r c]                          | nexttile(tlienum, span) | 设置坐标区大小范围      |
| nexttile(t, ···) | 将 t 指定的分块图布局中防止坐标区对象 | ax = nexttile(···)      | 返回坐标区              |

**3. plot(x, y)**

- x 是向量，y 有一维与 x 等维
- x 是矩阵，y 是向量，以 y 为横坐标
- x、y 是同维矩阵

**4. plot(x1, y1, x2, y2, ···)**

**5. plot(x, y, s)**

- 颜色控制字符表
- 线型符号
- 线型控制字符表
- 曲线的属性

**6. plot(x1, y1, s1, ···)**



### 6.1.2 fplot 绘图命令

可以使用 `sym x`

| 调用格式                     | 说明                                         |
| ---------------------------- | -------------------------------------------- |
| fplot(f)                     | f = @(x)sin(x)                               |
| fplot(f, lim)                | lim = [xmin, xmax]                           |
| fplot(f, lim, s)             | s 为 线型                                    |
| fplot(f, lim, n)             | 至少描出 n+1 个点                            |
| fplot(funx, funy)            | x = funx(t), y = funy(t), t 默认间隔 [-5, 5] |
| fplot(funx, funy, tinterval) | tinterval = [tmin, tmax]                     |
| fplot(···, LineSpec)         | 指定线条样式、标记符号、线条颜色             |
| fplot(···, Name, Value)      | 使用一个或多个 键值对                        |
| fplot(a, ···)                | 绘制到由 ax 指定的轴中                       |
| fp = fplot(···)              | 使用 FP 查询和修改特定行的属性               |
| [X, Y] = fplot(f, lim, ···)  | 返回横纵坐标值，不绘制图像                   |



## 6.2 其它坐标系下绘图

### 6.2.1 极坐标系

| 调用格式                        | 说明                            |
| ------------------------------- | ------------------------------- |
| polarplot(theta, rho)           | theta 与 rho 为同型矩阵（向量） |
| polarplot(theta, rho, LineSpec) | 设置线性、标记符号、颜色        |

**转换成直角坐标系**

```matlab
[x, y] = pol2cart(t, r);
figure
plot(x, y)
```



### 6.2.2 半对数坐标系

| 调用格式                                           | 说明                                               |
| -------------------------------------------------- | -------------------------------------------------- |
| semilogx(Y)                                        | 若 Y 为复矩阵，则相当于 semilogx(real(Y), imag(Y)) |
| semilogx(X1, Y1, ···)                              | 绘制 Y1 对 X1的图像                                |
| semilogx(X1, Y1, LineSpec, ···)                    | 设置线条样式                                       |
| semilogx(···, 'ProrpertyName', PropertyValue, ···) | 设置属性值                                         |
| semilogx(x, ···)                                   | 在由 ax 指定的坐标区中创建线条                     |
| h = semilogx(···)                                  | 返回 line 图形句柄向量，每条线对应一个句柄         |



### 6.2.3 双对数坐标系

`loglog(x, y)` 调用格式同上



### 6.2.4 双 y 轴坐标

| 调用格式        | 说明                           |
| --------------- | ------------------------------ |
| yyaxis left     | 用左边的 y 轴画出数据图        |
| yyaxis right    | 用右边的 y 轴画出数据图        |
| yyaxis(ax, ···) | 指定 ax 坐标区的活动侧为左或右 |



## 6.3 图形窗口

### 6.3.1 图形窗口的创建

| 调用格式         | 说明                    |
| ---------------- | ----------------------- |
| figure           | 创建一个图形窗口        |
| figure(n)        | 创建编号为 n 的图形窗口 |
| figure(f)        | 将 f 作为当前图形窗口   |
| f = figure(···)  | 返回 Figure 对象        |
| figure('PN', PV) | 设置属性名的属性值      |

**其它命令**

| 命令      | 说明                                                  |
| --------- | ----------------------------------------------------- |
| set(n)    | 返回此窗口所有图形的 *属性名* 和 *所有可能的属性值*   |
| get(n)    | 返回此窗口所有图形的 *属性名* 和 *当前的属性值*       |
| close     | 关闭图形窗口                                          |
| clf()     | 不关闭图形窗口，仅清除内容                            |
| clf(rest) | 清除内容后，将除了位置和单位的所有属性设为 *默认状态* |



### 6.3.2 工具条的使用



# 第 7 章 图形标注

## 7.1 图形属性设置

### 7.1.1 坐标系与坐标轴

- 坐标系的调整
  - `axis(xmin, xmax, tmin, ymax, zmin, zmax, cmin, cmax)`
- 坐标轴控制

| 调用格式                  | 说明                                                         |
| ------------------------- | ------------------------------------------------------------ |
| axis(limits)              |                                                              |
| axis style                | 设置轴范围和尺度，进行限制和缩放，如 `normal`、`equal`、`image`、`image fill`、`tight` |
| axis mode                 | 设置是否自动选择范围，如 `'auto x'`                          |
| axis ydirection           | 默认值为 `manual`                                            |
| axis visibility           | 默认值为 `'on'`，即显示坐标区背景                            |
| lim = axis                | 返回平面坐标系 / 三维坐标系 / 极坐标系 的范围                |
| [m, v, d] = axis('state') | 返回坐标轴范围选择、做抱起可见性和 y 轴方向的当前设置        |
| ··· = axis(ax, ···)       | 使用 ax 指定的坐标区或极坐标区                               |

- 参数

| 参数       | 取值                                  |
| ---------- | ------------------------------------- |
| mode       | 'auto' 或 'manual' 或 'semiautomatic' |
| visibility | 'on' 或 'off'                         |
| ydirection | ‘xy' 或 'ij'                          |



### 7.1.2 图形注释

#### 1. 填充图形

| 调用格式              | 说明                                          |
| --------------------- | --------------------------------------------- |
| fill(X, Y, C)         | 顶点颜色由向量或矩阵 C 指定。可以封闭或不封闭 |
| fill(X, Y, ColorSpec) | 使用指定颜色填充                              |
| fill(X1, Y1, C1, ···) | 同上                                          |
| fill(···, 'PN', PV)   | 指定属性名和属性值                            |
| fill(ax, ···)         | 在 ax 指定的坐标区中                          |
| h = fill(···)         | 返回由补片对象构成的向量                      |



#### 2. 注释图形标题及轴名称

##### 2.1 title 命令

| 调用格式                     | 说明                         |
| ---------------------------- | ---------------------------- |
| title('text')                | 坐标轴上方正中央的标题       |
| title(target, 'text')        | 添加至指定的对象             |
| title('text', 'PN', PV, ···) | 设置属性名的属性值           |
| h = title(···)               | 返回作为标题的 text 对象句柄 |

> 可以利用 `gcf` 和 `gca` 获取当前图形窗口与当前坐标轴的句柄

##### 2.2 xlabel 命令

| 调用格式                 | 说明                          |
| ------------------------ | ----------------------------- |
| xlabel('string')         | 在 x 轴上标注说明语句 string  |
| xlabel(fname)            | 由函数 fname 返回字符串后显示 |
| xlabel('text', 'PN', PV) | 设置属性名的属性值            |



####  3. 图形标注

| 命令  | 说明               |
| ----- | ------------------ |
| text  | 在图形具体部位标注 |
| gtext | 在图形具体部位标注 |



####  4. text 命令

| 调用格式                               | 说明                                     |
| -------------------------------------- | ---------------------------------------- |
| text(x, y, 'string')                   | 在 (x, y) 处显示 string                  |
| text(x, y, z, 'string')                | 在 (x, y, z) 处显示 string               |
| text(x, y, z, 'string', 'PN', PV, ···) | 设置属性（可以使用 `get` 和 `set` 查看） |
| text(ax, ···)                          | 在坐标区 ax 进行文本标注                 |
| t = text(···)                          | 返回一个或多个文本对象 t                 |



#### 5. gtext 命令

| 调用格式                       | 说明                 |
| ------------------------------ | -------------------- |
| gtext('string', 'PV', PV, ···) | 通过移动鼠标进行定位 |



#### 6. 图例标注（legend）

| 调用格式                                  | 说明                                                         |
| ----------------------------------------- | ------------------------------------------------------------ |
| legend('string1', 'string2', ···, Pos)    | 在当前坐标轴所给数据的每一部分显示一个图例                   |
| legend(subset, 'string1', 'string2', ···) | 仅在图例中包括 subset 中列出的数据序列的项                   |
| legend(labels)                            | 使用字符向量元宝数组、字符串数组或字符矩阵                   |
| legend(target, ···)                       | 在 target 指定的坐标区或图中添加图例                         |
| legend(vsbl)                              | 控制图例的可见性， vsbl 可设置为 `hide`、`show` 或 `toggle`  |
| legend(bkgd)                              | 删图例背景和轮廓，默认值为 `'boxon'`，即显示                 |
| legend('off')                             | 从当前的坐标轴中移除图例                                     |
| legend                                    | 为每个绘制的数据序列创建一个带有描述性标签的图例             |
| legend(···, Name, Value)                  | 元胞数组指定标签后，用键值对设置图例属性                     |
| legend(···, 'Location', lcn)              | 设置图例位置， 'Location' 包括 `'north'` 、`'south'`、`'northwest'` 等 |
| legend(···, 'Orientation', ornt)          | 默认值为 `'vertical'`，可设为 `'horizontal'`                 |
| lgd = legend(···)                         | 返回 Legend 对象                                             |
| h = legend(···)                           | 返回图例的句柄向量                                           |



#### 7. 分割线控制（grid）

| 调用格式          | 说明                             |
| ----------------- | -------------------------------- |
| grid on / off     | 显示主网格线                     |
| grid              | 切换显示状态                     |
| grid minor        | 次网格线                         |
| grid(target, ···) | 使用由 target 指定的坐标区域或图 |



## 7.2 特殊图形

### 7.2.1 统计图形

#### 1. 条形图

##### 1.1 竖直：bar

##### 1.2 水平：barh

##### 1.3 三维竖直：bar3

##### 1.4 三维水平：bar3h

| 调用格式          | 说明                                                    |
| ----------------- | ------------------------------------------------------- |
| bar(y)            | y 可为向量或矩阵                                        |
| bar(x, y)         | 在递增的横坐标 x 上画出 y                               |
| bar(···, width)   | 设置条形的相对宽度及间距，默认为 0.8，若为 1 则相互接触 |
| bar(···, 'style') | 排列类型，默认为 `'group'`，可选 `'stack'`              |
| bar(···, color)   | 用指定的颜色显示                                        |
| bar(ax, ···)      | 绘制至 ax 坐标区中                                      |
| b = bar(···)      | 返回一个或多个 Bar 对象                                 |



#### 2. 面积图

##### 2.1 area 命令

| 调用格式               | 说明                         |
| ---------------------- | ---------------------------- |
| area(Y)                | 堆叠显示曲线                 |
| area(X, Y)             | X需要递增                    |
| area(···, basevalue)   | 指定区域填充的基值，默认为 0 |
| area(···, Name, Value) | 使用一个或多个键值对         |
| area(ax, ···)          | 绘制至 ax 坐标区             |
| ar = area(···)         | 返回一个或多个 Area 对象     |



#### 3. 饼图

##### 3.1 pie 命令

| 调用格式                | 说明                                                |
| ----------------------- | --------------------------------------------------- |
| pie(X)                  | 若 sum(X) < 1，则画出一个不完整的饼形图             |
| pie(X, explode)         | 将扇区从饼图便宜一定位置，explode 是与 X 同型的矩阵 |
| pie(X, labels)          | 指定文本标签，标签数等于 X 的数据元素个数           |
| pir(X, explode, labels) | 同上                                                |
| pie(ax, ···)            | 绘制至 ax 坐标区                                    |
| p = pie(···)            | 返回一个由补片和文本图形对象组成的向量              |



#### 4. 柱状图

##### 4.1 histogram 命令

| 调用格式                                                 | 说明                                                |
| -------------------------------------------------------- | --------------------------------------------------- |
| histogram(X)                                             | 使用均匀宽度的 bin 涵盖 X 中元素范围                |
| histogram(X, nbins)                                      | 使用标量 nbins 指定 bin 的数量                      |
| histogram(X, edges)                                      | 将 X 划分到由向量 edges 指定 bin 边界的 bin  内     |
| histogram('BinEdges', edges, 'BinCounts', counts)        | 指定 bin 边界和关联的 bin 计数                      |
| histogram(C)                                             | 通过分裂数组 C 中的每个了捏绘制一个条形来绘制柱状图 |
| hisogram(C, Categories)                                  | 仅绘制 Categories 指定的类别的子集                  |
| histogram('Categories', Categories, 'BimCounts', counts) | 指定类别和关联的 bin 计数                           |
| histogram(···, Name, Value)                              | 设置属性值                                          |
| histogram(ax, ···)                                       | 绘制到指定的坐标区中                                |
| h = histogram(···)                                       | 返回 Histogram 对象                                 |

##### 4.2 polarhistogram 命令

| 调用格式                                               | 说明 |
| ------------------------------------------------------ | ---- |
| polarhistogram(theta)                                  |      |
| polarhistogram(theta, nbins)                           |      |
| polarhistogram('BinEdges', edges, 'BinCounts', counts) |      |
| polarhistogram(···, Name, Value)                       |      |
| polarhistogram(pax, ···)                               |      |
| h = polarhistogram(···)                                |      |



## 7.2.2 离散数据图形

#### 1. 误差棒图

##### 1.1 errorbar 命令

| 调用格式                               | 说明                                                         |
| -------------------------------------- | ------------------------------------------------------------ |
| errorbar(y, err)                       | err 确定数据点上方和下方的每个误差条的长度                   |
| errorbar(x, y, err)                    | 在每个数据点处绘制一个垂直误差条                             |
| errorbar(···, ornt)                    | 设置误差条的方向，默认为 `'vertical'`，可设为 `'horizontal'` 或 `'both'` |
| errorbar(x, y, neg, pos)               | neg 确定数据点下方的长度，pos 确定上方的长度                 |
| errorbar(x, y, yneg, ypos, xneg, xpos) | 同上                                                         |
| errorbar(···, LineSpec)                | 指定线型、标记符、颜色等                                     |
| error(···, Name, Value)                | 设置属性值                                                   |
| errorbar(ax, ···)                      | 绘制至 ax 坐标区                                             |



#### 2. 火柴杆图

##### 2.1 stem 命令

##### 2.2 stem3 命令



#### 3. 阶梯图

##### 3.1 stairs 命令



## 7.2.3 向量图形

#### 1. 罗盘图

##### 1.1 compass 命令

#### 2. 羽毛图

##### 2.1 feather 命令

#### 3. 箭头图

##### 3.1 quiver 命令

##### 3.2 quiver3 命令

```matlab
x = -2 : 0.25 : 2;
y = x;
[X, Y] = meshgrid(x, y);	%二维网格
Z = X.*exp(-X.^2 - Y.^2);
[U, V] = gradient(Z, 2, 2);	%数值梯度，每个方向上的点间距为2
contour(X, Y, Z)			%等高线图
hold on
quiver(X, Y, U, V)			%矢量图
hold off
axis image					%将坐标轴调整为图形大小
```



# 第 8 章 三维绘图

## 8.1 三维绘图

| 命令                                            | 说明       |
| ----------------------------------------------- | ---------- |
| plot3、fplot3                                   | 三维曲线   |
| mesh、meshgrid、meshc、meshz                    | 网格图     |
| surf、surfc、surfl、fsurf                       | 三维曲面   |
| cylinder、sphere                                | 柱面与球面 |
| contour3、contour、contourf、contourc、fcontour | 等值线     |



### 8.1.1 三维曲线

#### 1. plot3 命令

#### 2. fplot3 命令



### 8.1.2 三维网格

#### 1. mesh 命令

若 x、y、z 均为行向量,

可以通过 `scatter3(x, y, z, 1, z, 'filled')`，

也可以用 `meshc([x', x'], [y', y'], [z', z'], [z', z'])`.

##### 1.1 mesh

| 调用格式            | 说明                                   |
| ------------------- | -------------------------------------- |
| mesh(X, Y, Z)       | Z 为矩阵，X 和 Y 为向量或矩阵          |
| mesh(Z)             | [m, n] = size(Z), X = 1 : m, Y = 1 : n |
| mesh(Z, c)          | 指定颜色                               |
| mesh(ax, ···)       | 指定坐标区 ax                          |
| mesh(···, 'PN', PV) | 设置属性值                             |
| h = mesh(···)       | 返回图形对象句柄                       |

##### 1.2 meshgrid

| 调用格式                      | 说明                             |
| ----------------------------- | -------------------------------- |
| [X, Y] = meshgrid(x, y)       | X 为矩形分割点的横坐标值矩阵     |
| [X, Y] = meshgrid(X)          | 即 [X, Y] = meshgrid(x, x)       |
| [X, Y, Z] = meshgrid(x, y, z) | 同上                             |
| [X, Y, Z] = meshgrid(x)       | 即 [X, Y, Z] = meshgrid(x, x, x) |

##### 1.3 hiden

| 调用格式        | 说明                 |
| --------------- | -------------------- |
| hidden on       | 将网格设为不透明     |
| hidden off      | 设为透明状态         |
| hidden          | 在上述模式中切换     |
| hidden(ax, ···) | 修改 ax 指定的坐标区 |

```matlab
t = -4 : 0.1 : 4;
[X, Y] = meshgrid(t);
Z = peaks(X, Y);		%山峰函数
subplot(1, 2, 1)
mesh(X, Y, Z);
hidden on
title('Grid unshown')
subplot(1, 2, 2)
mesh(X, Y, Z)
hidden off
title('Grid shown')
```

##### 1.4 meshc

画网格图与等高线图

##### 1.5 meshz

画网格图与零平面的网格图

```matlab
x = -5 : 0.1 : 5;
[X, Y] = meshgrid(x);
Z = cos(sqrt(X.^2 + Y.^2));
tiledlayout(2, 2)
nexttile
plot3(X, Y, Z), title('plot3');	%三维线图
nexttile
mesh(X, Y, Z), title('mesh');	%三维曲面网格图
nexttile
meshc(X, Y, Z), title('meshc');	%三维曲面网格图，并显示等高线
nexttile
meshz(X, Y, Z), title('meshz');	%三维曲面网格图，并在网格周围显示帷幕
```



#### 2. fmesh 命令

| 调用格式                            | 说明                                                      |
| ----------------------------------- | --------------------------------------------------------- |
| fmesh(f)                            | 默认区间为 [-5, 5]                                        |
| fmesh(f xyinterval)                 | xyinterval = [min, max] 或 [xmin, xmax, ymin, ymax]       |
| fmesh(funx, funy, funz)             | x = funx(u, v), y = funy(u, v), z = funz(u, v)            |
| fmesh(funx, funy, funz, uvinterval) | 同上                                                      |
| fmesh(···, LineSpec)                | 设置网格的线型、标记符号、颜色                            |
| fmesh(···, Name, Value)             | 设置属性值                                                |
| fmesh(ax, ···)                      | 绘制至 ax 而非 gca                                        |
| fs = fmesh(···)                     | 返回 FunctionSurface 或 ParameterizedFunctionSurface 对象 |

```matlab
syms x y
f = sin(x)*exp(y) - cos(y)*exp(x) + exp(x) + exp(y);
fmesh(f, [-pi, pi])
title('fmesh')
```



### 8.1.3 三维曲面

#### 1. surf 命令

##### 1.1 surf

> 用法同mesh

##### 1.2 surfc

> 含基本等高线

##### 1.3 surfl

> 有亮度的曲面图

```matlab
[X, Y, Z] = peaks(30);
x = X(1, :);
y = Y(:, 1);
i = find(y>0.8 & y<1.2);
j = find(x>-.6 & x<.5);
Z(i, j) = nan*Z(i, j);
surf(X, Y, Z);
```



#### 2. fsurf 命令

```matlab
syms s t;
x = cos(s+t);
y = sin(s+t);
z = sin(s)*cos(t);
fsurf(x, y, z, [-pi, pi])
```



### 8.1.4 柱面与球面

#### 1. cylinder

| 调用格式                   | 说明                                                         |
| -------------------------- | ------------------------------------------------------------ |
| [X, Y, Z] = cylinder(r, n) | 半径为 r、高度为 1 的圆柱体的坐标轴坐标值，圆柱体的圆周有指定 n 个距离相同的点 |
| [X, Y, Z] = cylinder(r)    | 即 [X, Y, Z] = cylinder(r, 20)                               |
| [X, Y, Z] = cylinder       | 即 [X, Y, Z] = cylinder(1, 20)                               |
| cylinder(axes_handle, ···) | 绘制到带有句柄 axes_handle 的坐标区中                        |
| cylinder(···)              | 直接画出圆柱体，无输出产量                                   |

> cylinder(r, n) 可以绘出 n 棱柱

#### 2. sphere

| 调用格式                | 说明                                       |
| ----------------------- | ------------------------------------------ |
| sphere(n)               | 画出由 $n\cp n$ 个面组成的球面             |
| sphere                  | 即 sphere(20)                              |
| sphere(ax, ···)         | 绘制到 ax 坐标区中                         |
| [X, Y, Z] = sphere(···) | $ X, Y, Z \in \mathbb{R}^{(n+1)\cp(n+1)} $ |



### 8.1.5 三维图形等值线

#### 1. contour3 命令

| 调用格式                   | 说明                                   |
| -------------------------- | -------------------------------------- |
| contour3(Z)                | 绘制等值线                             |
| contour3(X, Y, Z)          | 指定 X 和 Y 的坐标                     |
| contour3(···, levels)      | 在 levels 个自动选择的层级上显示等高线 |
| contour3(···, LineSpec)    | 指定线型和颜色                         |
| contour3(···, Name, Value) | 设置属性值                             |
| contour3(ax, ···)          | 绘制至 ax 坐标区                       |
| M = contour3(···)          | 返回包含每个层级顶点的坐标等高线矩阵   |
| [M, c] = contour(···)      | 并返回等高线对象 c                     |



#### 2. contour 命令

三维曲面向 x-y 平面投影的图像



#### 3. contourf 命令

填充二维等值曲线图



#### 4. contourc 命令

计算等值曲线矩阵 C，该矩阵可用于命令 contour、contour3、contourf



#### 5. clabel 命令

添加高度标签

| 调用格式                   | 说明                       |
| -------------------------- | -------------------------- |
| clabel(C, h)               | C 为等高矩阵               |
| clabel(C, h, v)            | 在指定高度 v 上显示标签 h  |
| clabel(C, h, 'manual')     | 手动设置标签（左键或空格） |
| t = clabel(C, h, 'manual') | 返回创建的文本对象         |
| claebl(C)                  | 在随机位置添加标签         |
| clabel(C, v)               | 在给定的位置 v 上显示标签  |
| clabel(C, 'manual')        | 通过鼠标给等高线贴标签     |
| tl = clabel(···)           | 返回创建的文本和线条对象   |
| clabel(···, Name, Value)   | 修改标签外观               |



#### 6. fcontour 命令

| 调用格式                   | 说明                           |
| -------------------------- | ------------------------------ |
| fcontour(f)                | 绘制符号函数 $f(x, y)$         |
| fcontour(f, xyinterval)    | 在区域 xyinterval 内的三维曲面 |
| fcontour(···, LineSpec)    | 设置线型和颜色                 |
| fcontour(···, Name, Value) | 指定线条的属性                 |
| fcontour(ax, ···)          | 绘制至 ax 坐标区，而不是 gca   |
| fc = fcontour(···)         | 返回 FunctionContour 对象      |



## 8.2 修饰处理

### 8.2.1 视角处理

#### 1. view

| 调用格式             | 说明                          |
| -------------------- | ----------------------------- |
| view(az, el)         | 方位角 az 与仰角 el           |
| view(v)              | v = [az, el] 或 v = [x, y, z] |
| view(dim)            | 对二维或三维绘图使用默认视角  |
| view(ax, ···)        | 指定目标坐标区的视角          |
| [az, el] = view(···) | 返回方位角和仰角              |

- 正视图：view(0, 0)
- 侧视图：view(90, 0)
- 俯视图：view(0, 90)
- view(20, 15)



### 8.2.2 颜色处理

#### 1. 色图明暗控制指令

##### 1.1 brighten

| 调用格式               | 说明                                                         |
| ---------------------- | ------------------------------------------------------------ |
| brighten(beta)         | 增强色图的色彩强度 beta，-1 < beta < 1                       |
| brighten(map, beta)    | 指定为 map 的颜色图                                          |
| newmap = brighten(···) | 返回新的色图                                                 |
| brighten(f, beta)      | 变换为图窗 f 指定的颜色图的强度，其它图形对象的颜色也会受到影响 |



#### 2. 色轴刻度

##### 2.1 caxis

| 调用格式            | 说明                                                         |
| ------------------- | ------------------------------------------------------------ |
| caxis([cmin, cmax]) | 设置颜色的刻度                                               |
| caxis('auto')       | 自动计算颜色范围（默认）                                     |
| caxis('manual')     | 冻结当前颜色坐标轴的刻度范围。hold 设置为 on 时，后面的图形命令使用相同的颜色范围 |
| caxis(tarfet, ···)  | 为特定坐标区或图设置颜色图范围                               |
| v = caxis           | 返回当前颜色范围，v = [cmin, cmax]                           |

##### 2.2 colorbar

| 调用格式                   | 说明                           |
| -------------------------- | ------------------------------ |
| colorbar                   | 在右侧显示垂直色轴             |
| colorbar(location)         | 在特定位置显示色轴             |
| colorbar(···, Name, Value) | 修改色轴外观                   |
| c = colorbar(···)          | 返回一个指向色轴的句柄         |
| colorbar('off')            | 删除当前坐标区或图的所有色轴   |
| colorbar(target, ···)      | 在 target 指定的坐标区或图添加 |



#### 3. 颜色渲染设置

##### 3.1 shading

| 调用格式                  | 说明                               |
| ------------------------- | ---------------------------------- |
| shading flat              | 每一条线段与每一小面有相同的颜色   |
| shading faceted           | 用重叠的黑色网格线来达到渲染的效果 |
| shading interp            | 通过插值显示不同的颜色             |
| shading(axes_handle, ···) | 将着色类型应用于 axes_handle       |

```matlab
[X, Y] = meshgrid(-10 : 0.5 : 10);
Z = X.^2 + exp(sin(X));

subplot(2, 2, 1)
surf(X, Y, Z)
title('3d surface')

subplot(2, 2, 2)
surf(X, Y, Z)
shading flat
title('shading flat')

subplot(2, 2, 3)
surf(X, Y, Z)
shading faceted
title('default shading faceted')

subplot(2, 2, 4)
surf(X, Y, Z)
shading interp
title('shading interp')
```



#### 4. 颜色映像使用

##### 4.1 colormap

```matlab
pcolor(hadamard(20))	%阿达玛矩阵
colormap(gray(2))		%灰度颜色图
axis ij					%翻转 y 轴
axis square
```



### 8.2.3 光照处理

#### 1. 带光照模式的三维曲面

##### 1.1 surfl

| 调用格式             | 说明                                           |
| -------------------- | ---------------------------------------------- |
| surfl(Z)             | 生成三维带阴影曲面                             |
| surfl(X, Y, Z)       | 默认光源：从当前视角逆时针转 $45^\circ$        |
| surfl(···, 'light')  | 用 MATLAB 光照对象 (light obbject) 生成        |
| surfl(···, s)        | 指定光源与曲面之间的方位 s                     |
| surfl(X, Y, Z, s, k) | k = [ka, kd, ks, shine] = [0.55, 0.6, 0.4, 10] |
| surfl(ax, ···)       | 绘制至 ax 坐标区                               |
| h = surfl(···)       | 返回曲面图形句柄向量 h                         |

> 环境光系数 ka、漫反射系数 kb、镜面反射系数 ks、镜面反射亮度 shine

```matlab
[X, Y] = meshgrid(-5 : 0.25 : 5);
Z = peaks(X, Y);

subplot(1, 2, 1)
surfl(X, Y, Z);
title('Outer light')

subplot(1, 2, 2)
surfl(X', Y', Z')
title('Inner light')
```



#### 2. 光源位置即照明模式

##### 2.1 lightangle 光源位置

| 调用格式                            | 说明                          |
| ----------------------------------- | ----------------------------- |
| lightangle(az, el)                  | 方位角 az，仰角 el            |
| lightangle(ax, az, el)              | 在 ax 指定的坐标区上          |
| light_handle = lightangle(···)      | 返回 light 句柄               |
| lightangle(light_handle, az, el)    | 设置至 light_angle            |
| [az, el] = lightangle(light_handle) | 返回由 light_angle 确定的视角 |

##### 2.2 lighting 照明模式

| 调用格式          | 说明                               |
| ----------------- | ---------------------------------- |
| lighting flat     | 每个面上产生均匀分布的光照         |
| lighting gouraud  | 计算顶点法向量并在各个面中线性插值 |
| lighting none     | 关闭光源                           |
| lighting(ax, ···) | 设置至 ax 坐标区                   |

```matlab
[x, y, z] = sphere;
subplot(1, 2, 1);
surf(x, y, z);
shading interp
%在指定坐标创建向无限远处照射的光源
light('position', [2, -2, 2], 'style', 'local')
lighting phong
axis equal

subplot(1, 2, 2)
surf(x, y, z, -z);
shading flat
light
%在每个面上产生均匀分布的光照
lighting flat
%创建黄色光源
light('position', [-1, -1, -2], 'color', 'y')
%在指定坐标创建向无限远处照射的白色光源
light('position', [-1, 0.5, 1], 'style', 'local', 'color', 'w')
axis equal
```



## 8.3 图像处理及动画演示

### 8.3.1 图像的读写

#### 1. 图像读入命令

##### 1.1 imread 命令

| 命令格式                      | 说明                                         |
| ----------------------------- | -------------------------------------------- |
| A = imread(filename)          | 从 filename 内容推断文件的格式               |
| A = imread(filename, fmt)     | 指定格式为 fmt                               |
| A = imread(···, idx)          | 读取多帧图像的 idx 帧                        |
| A = imread(···, Name, Value)  | 指定特定于格式的选项                         |
| [A, map] = imread(···)        | 将索引图像读入 A，颜色图读入 map $\in [0,1]$ |
| [A, map, alpha] = imread(···) | 返回透明度 alpha                             |



#### 2. 图像写入命令

##### 2.1 imwirte 命令

| 命令格式                  | 说明                   |
| ------------------------- | ---------------------- |
| imwrite(A, filename)      | 从扩展名推断文件格式   |
| imwrite(A, map, filename) | 同时写入颜色映像矩阵   |
| imwrite(···, Name, Value) | 指定文件输出的其它参数 |
| imwrite(···, fmt)         | 以指定的 fmt 格式写入  |

> 可以一次转换图片格式
>
> 默认保存方式为 unit8 的数据类型。
>
> 若图像矩阵是 double 型，则写入前应进行偏置，unit8(X-1)



### 8.3.2 图像的显示即信息查询

#### 1. 图像显示命令

##### 1.1 image 命令

| 命令格式                | 说明                                      |
| ----------------------- | ----------------------------------------- |
| image(C)                | 将矩阵 C 中的值以图像形式显示出来         |
| image(x, y, C)          | 指定图像位置，其中 x、y 定义了 x、y轴范围 |
| image(···, Name, Value) | 在绘制图像前需要调用 newplot 命令         |
| image(ax, ···)          | 在 ax 坐标区创建图像                      |
| handle = image(···)     | 返回生成图像对象的句柄                    |

```matlab
figure
ax(1) = subplot(1, 2, 1);
rgb = imread('cozy_house.JPG');
image(rgb);
title('RGB image')
ax(2) = subplot(1, 2, 2);
im = mean(rgb, 3);			%求矩阵第三个维度的均值
image(im);
title('Intensity Heat Map')
colormap(hot(256))			%将包含256种颜色的 hot 色图设为当前颜色图
linkaxes(ax, 'xy')			%同步两个子图坐标区的 x 轴和 y 轴范围
axis(ax, 'image')			%使用相同数据单位长度，将坐标区框紧密围绕图像
```

##### 1.2 imagesc 命令

可以自动调整至于范围

| 命令格式                  | 说明                                      |
| ------------------------- | ----------------------------------------- |
| imagesc(C)                | 将矩阵 C 中的值以图像形式显示出来         |
| imagesc(x, y, C)          | 指定图像位置，其中 x、y 定义了 x、y轴范围 |
| imagesc(···, Name, Value) | 指定图像属性                              |
| imagesc(···, clims)       | 二维向量 clims 限制了 C 中元素的取值范围  |
| imagesc(ax, ···)          | 在 ax 坐标区床架泥土香                    |
| h = imagesc(···)          | 返回生成图像对象的句柄                    |

##### 1.3 imshow 命令

| 命令格式                 | 说明                                      |
| ------------------------ | ----------------------------------------- |
| imshow(I)                | 显示灰度图像 I                            |
| imshow(I, [low, high])   | 值域为 [low, high]                        |
| imshow(RGB)              | 显示真彩色图像                            |
| imshow(BW)               | 显示二进制图像                            |
| imshow(X, map)           | 显示索引色图像，X为图像矩阵，map 为调色板 |
| imshow(filename)         | 显示 filename 文件中的图像                |
| himage = imshow(···)     | 返回所生成图像对象的句柄                  |
| imshow(···, Name, Value) | 根据参数与值显示图像                      |



#### 2. 图像信息查询

##### 2.1 imfinfo 命令

| 命令格式                      | 说明                         |
| ----------------------------- | ---------------------------- |
| info = imfinfo(filename)      | 查询图像文件 filename 的信息 |
| info = imfinfo(filename, fmt) | 指定格式为 fmt               |



### 8.3.3 动画演示

#### 1. moviein 命令

#### 2. getframe 命令

#### 3. movie 命令

e.g. 球体旋转

```matlab
[X, Y, Z] = sphere;
surf(X, Y, Z)
axis([-3, 3, -3, 3, -1, 1])
axis off
shading interp					%利用插值颜色渲染图形
colormap(hot)					%设置当前颜色图为 hot
M = moviein(20);				%建立一个20列的大矩阵
for i = 1 : 20;
    view(-37.5 + 24*(i-1), 30);	%改变视点
    M(:, i) = getframe;			%将图形保存到 M 矩阵
end
movie(M, 3)						%播放画面3次
```

e.g. 正弦函数

```matlab
syms x;
y = sin(x);
fplot(x, y, [0, 2*pi], 'b');
M = moviein(60);
for i = 1 : 60
    fplot(x, @(x)sin(x+i*pi/30), [0, 2*pi], 'b');
    M(:, i) = getframe;
end
movie(M, 5)
```



## 8.4 综合实例

#### 8.4.1 surf 颜色与光照处理实例

```matlab
[X, Y] = meshgrid(-4 : 0.1 : 4);
Z = exp(abs(X+Y))./(X+Y);

subplot(2, 3, 1)
surf(X, Y, Z)
title('Main View')

subplot(2, 3, 2)
surf(X, Y, Z)
view(20, 15);
title('3d view')

subplot(2, 3, 3)
colormap(hot)
hold on
stem3(X, Y, Z, 'bo');
view(20, 15)
title('Filled Map');

subplot(2, 3, 4)
surf(X, Y, Z)
view(20, 15)
shading interp
alpha(0.5)
colormap(summer)
title('Translucent map')

subplot(2, 3, 5)
surf(X, Y, Z)
view(5, 10)
shading interp
hold on
mesh(X, Y, Z)
colormap(hot)
hold off
title('Transparent map')

subplot(2, 3, 6)
surf(X, Y, Z)
view(20, 15)
ii = find(abs(X)>6 | abs(Y)>6);
Z(ii) = zeros(size(ii));
surf(X, Y, Z)
shading interp
colormap(copper)
light('position', [0, -15, 1]);
lighting flat
material([0.8, 0.8, 0.5, 10, 0.5])
title('Tailored map')

```

### 8.4.2 绘制云图、修改配色

#### 1. 测试与比较

```matlab
x = linspace(1, 100, 100);
y = x;
f = x.*y;

X1 = linspace(min(x),max(x),100);
Y1 = linspace(min(y),max(y),100);

[X,Y,F] = griddata(x,y,f,X1',Y1,'v4');
% 插值方法: linear, nearset, natural, cubic, v4
% 其中 v4 效果最好，cubic 与之相近，但效率高很多

subplot(2, 2, 1)
pcolor(X,Y,F);
shading interp                  %色彩平滑
% colormap(Small_Rainbow)         %使用自定义的配色方案
colorbar off
title('pcolor')

subplot(2, 2, 2)
[~,s] = contourf(X,Y,F,100);
s.LineColor = 'none';
shading interp          %色彩平滑
title('contourf none')

subplot(2, 2, 3)
[~,s] = contourf(X,Y,F,100);
s.LineColor = 'k';
shading interp
title('contourf black')
% pcolor 也许比 contourf 更优
```

#### 2. 最终方案：

```matlab
% 绘制点云图
data = load('data1.txt');
x = data(:, 1)';
y = data(:, 2)';
f = data(:, 3)';
 
% 生成坐标轴，插值计算
X1 = linspace(min(x),max(x),100);
Y1 = linspace(min(y),max(y),100);
[X,Y,F] = griddata(x,y,f,X1',Y1,'cubic');
 
% 生成仿彩色图
pcolor(X,Y,F);
shading flat

% 调整色轴刻度（重要！）
colorbar
caxis([164, 165.6])

```

#### 3. 实例

```matlab
% Draw point cloud images
num = 3;
col = 4;
for i = 1:num
    figure

    % 加载文件数据
    filename = num2str(i) + ".txt";
    data = load(filename);
    x = data(:, 2)';
    y = data(:, 1)';
    z = data(:, 3)';

    % plot3
    subplot(2, 2, 1)
    % subplot(num, col, col*num-3)
    plot3(x, y, z)
    grid on
    % axis equal
    title(num2str(i) + "-plot3")

    % patch
    subplot(2, 2, 2)
    % subplot(num, col, col*num-2)
    patch(x, y, z, z, 'edgecolor', 'flat', 'facecolor', 'none')
    view(3)
    grid on
    % axis equal
    title(num2str(i) + "-patch")

%     % meshc
%     subplot(2, 2, 2)
%     meshc([x', x'], [y', y'], [z', z'], [z', z'])

    % 绘制三维点云图
    subplot(2, 2, 3)
    % subplot(num, col, col*num-1)
    scatter3(x, y, z, 1, z, 'filled')
    grid on
    % axis equal
    title(num2str(i) + "-scatter3")

    % 生成坐标轴，插值计算
    X1 = linspace(min(x), max(x), 335);
    Y1 = linspace(min(y), max(y), 2618);
    [X, Y, Z] = griddata(x, y, z, X1', Y1, 'cubic');
     
    % 生成仿彩色图（深度图）
    subplot(2, 2, 4)
    % subplot(num, col, col*num)
    pcolor(X, Y, Z);
    shading flat
    
    % 调整色轴刻度与坐标轴
    colorbar
    caxis([min(z), max(z)])
    axis equal
    title(num2str(i) + "-pcolor")
end
```





# 第 9 章 程序设计

## 9.1 M 文件

### 9.1.1 命令文件

> 又称脚本文件

- 输入文件名执行其中命令
- 输入 `edit` 进入 M 文件编辑器



### 9.1.2 函数文件

```matlab
function y = filename(x)
%Annotation
y = x.^2
```

- help 命令可以显示 M 文件第一个连续的注释块

- look for 命令只显示第一行注释
- inmem 命令查看当前内存中有哪些函数文件



## 9.2 程序设计

### 9.2.1 程序结构

#### 1. 顺序结构

##### 1.1 disp 输出

```
disp(['A', blanks(4), 'B']);

s = struct('Name', name, 'Score', score');
disp([s.Name, num2str(s.score)])
```

##### 1.2 fprintf 输出

```matlab
fprintf("%f", x);
```



#### 2. 循环结构

##### 2.1 for-end 循环

```matlab
for variable = expression;
	statement;
end
```

##### 2.2 while-end 循环

```matlab
while expression;
	statement;
end
```

#### 3. 分支结构

##### 3.1 if-else-end 结构

```matlab
if expr_1;
	statement_1;
elseif expr_2;
	statement_2;
else
	statement_3;
end
```

##### 3.2 switch-case-end 结构

```matlab
switch expr;
case c_1
	statement_1;
···
case c_n
	statement_n;
otherwise
	statement_o;
end
```

##### 3.3 try-catch-end 结构

```matlab
try
	statement_1;
catch
	statement_2
end
%错误信息被捕获后存放在 lasterr 变量中
```



### 9.2.2 流程控制

#### 1. break 命令

#### 2. pause 命令

| 调用格式                | 说明                                               |
| ----------------------- | -------------------------------------------------- |
| pause                   | 按下任意键后继续执行                               |
| pause(n)                | 暂停 n 秒                                          |
| pause(state)            | 启用、禁用或显示当前暂停设置，如 `'on'` 或 `'off'` |
| oldState = pause(state) | 返回当前暂停设置                                   |

#### 3. continue 命令

#### 4. return 命令

#### 5. echo 命令

| 调用格式               | 说明                             |
| ---------------------- | -------------------------------- |
| echo on / off          | 显示 / 不显示 M 文件执行过程     |
| echo                   | 切换显示模式                     |
| echo FileName on / off | 对 FileName.m 文件设置           |
| echo FileName          | 同上                             |
| echo on / off all      | 显示 / 关闭 所有函数文件执行过程 |

#### 6. warning 命令

| 调用格式                          | 说明                                            |
| --------------------------------- | ----------------------------------------------- |
| warning('message')                | 显示警告信息 'message'                          |
| warning('message', a1, a2, ···)   | 格式化字符串，包含转义字符                      |
| warning(msgID, ···)               | 将警告标识符附加值警告消息                      |
| warning(state)                    | 启用、禁用或显示所有警告消息                    |
| warning(state, msgID)             | 处理注定警告的状态                              |
| warnStruct = warning              | 返回启用或禁用的信息                            |
| warning(warnStruct)               | 设置当前警告设置                                |
| warning(state, mode)              | 是否显示堆栈跟踪或有关警告的其它信息            |
| warnStruct = warning(state, mode) | 返回包含 mode 的 identifier 字符串和 state 字段 |



#### 7. error 命令

| 调用格式                 | 说明                         |
| ------------------------ | ---------------------------- |
| error('message')         | 终止程序并显示 'message'     |
| error('message', a1, a2) | 格式字符串，包含转义字符     |
| error(msgID, ···)        | 包含错误标识符               |
| error(errorStruct)       | 使用标量结构体的字段抛出错误 |
| error(correction, ···)   | 为异常提供建议修复           |



### 9.2.3 交互式输入

#### 1. input 命令

| 调用格式                  | 说明                               |
| ------------------------- | ---------------------------------- |
| s = input('message')      | 若无输入，则返回空矩阵             |
| s = input('message', 's') | 将输入信息以 *字符串* 的形式赋给 s |



#### 2. keyboard 命令

| 命令     | 说明                             |
| -------- | -------------------------------- |
| keyboard | 使文件停止执行并将控制权交给键盘 |
| dbcont   | 返回原命令行窗口                 |



#### 3. menu 命令

`k = menu('mtitle', 'opt1', 'opt2',...)`

- 产生一个菜单供用户选择
- 返回值为选项的编号



### 9.2.4 程序调试

#### 1. 系统提示

#### 2. 使用断点

##### 2.1 设置断点

- 按 F12 键设置断点
- 在编辑器菜单上选择
- dbstop 命令

| 调用格式                     | 说明                                                   |
| ---------------------------- | ------------------------------------------------------ |
| dbstop in mfile              | 在 mfile.m 第一个可执行代码位置设置断点                |
| dbstop in mfile at LineNo    | 在第 LineNo 行设置断点                                 |
| dbstop in file if expression | 如果表达式为真，则设置断点                             |
| dbstop if condition          | 在满足指定的 condition (如 error 或 naninf) 处暂停执行 |
| dbstop(b)                    | 恢复之前保存到 b 的断点                                |



##### 2.2 清除断点

| 调用格式                   | 说明                             |
| -------------------------- | -------------------------------- |
| dbclear all                | 清除所有 M 文件所有断点          |
| dbclear in mfile           | 清除 mfile.m 的第一个断点        |
| dbclear in mfile at LineNo | 清除第 LineNo 行的断点           |
| dbclear if condition       | 如 error、naninf、infna、warning |



##### 2.3 列出全部断点

| 调用格式                     | 说明                                                     |
| ---------------------------- | -------------------------------------------------------- |
| dbstatus                     | 列出包括错误、警告、naninf 在内的所有断点                |
| dbstatus mfile               | 列出 mfile.m 中的所有断点                                |
| dbstatus -completenames      | 为每个断点显示所在函数或文件的 *完全限定名*              |
| dbstatus file -completenames | 在指定文件中显示完全限定名                               |
| b = dbstatus(···)            | 以 $m\cp1$ 结构体形式返回断点信息，可通过 dbstop(b) 还原 |



##### 2.4 从断点处执行程序

| 调用格式   | 说明                                           |
| ---------- | ---------------------------------------------- |
| dbstep     | 执行断点的下一行                               |
| dbstep N   | 执行断点的后 N 行                              |
| dbstep in  | 进入调用的 M 文件。若没有调用，则与destep相同  |
| dbstep out | 运行当前函数的其余代码，并在退出函数后立即暂停 |

- dbcont 执行所有行程序，直到遇到断点或到达文件尾



##### 2.5 断点的调用关系

| 调用格式                      | 说明                                  |
| ----------------------------- | ------------------------------------- |
| dbstack                       | 显示断点处的调用函数名及行号          |
| dbstack(n)                    | 在显示中省略前 n 个堆栈帧             |
| dbstack(···, '-competenames') | 显示完全限定名                        |
| ST = dbstack(···)             | 用 $m\cp1$ 结构体 ST 返回堆栈跟踪信息 |
| [ST, I] = dbstack(···)        | 用 I 返回当前的工作空间索引           |



##### 2.6 进入与推出调试模式

- 进入调试模式：按 F5
- 退出调试模式：dbquit

- 调试时可以访问函数的局部变量



## 9.3 函数句柄

### 9.3.1 创建与显示

| 函数类型              | 说明                                                         |
| --------------------- | ------------------------------------------------------------ |
| functions(fun_handle) | 显示函数句柄的信息                                           |
| simple                | 未加载的 MATLAB 内部函数、M 文件，或至在执行过程才能用 type() 显示内容的函数 |
| subfunction           | MATLAB 子函数                                                |
| private               | MATLBA 局部函数                                              |
| constructor           | MALAB 类的创建函数                                           |
| overloaded            | 加载内部函数或 M 文件                                        |



### 9.3.2 调用与操作

```matlab
[y1,y2,···,yn] = feval(fhandle, x1,···xn)
```

e.g.

```matlab
%test.m
function f = test(x, y)
f = x - y;

%command
fhandle = @test
%调用
test(3, 2)
feval(fhandle, 3, 2)
feval(@test, 3, 2)
feval('test', 3, 2)
```



# 第 10 章 矩阵分析

## 10.1 特征值与特征向量

### 10.1.1 标准特征值与特征向量

#### 1. eig 命令

```matlab
e = eig(A)
[V,D] = eig(A)	% V: 特征向量; D: 对角矩阵
[V,D,W] = eig(A)% W: 满矩阵

e = eig(A,B)	% 广义特征向量
[V,D] = eig(A,B)
[V,D,W] = eig(A,B)

[___] = eig(A,balanceOption)
[___] = eig(A,B,algorithm)

[___] = eig(___,eigvalOption)	% 'vector' 或 'matrix'
```

#### 2. balance 命令

```matlab
[T,B] = balance(A)
[S,P,B] = balance(A)
B = balance(A)
B = balance(A,'noperm')
```

#### 3. poly 命令

```matlab
c = poly(A)	% 返回 A 的特征多项式系数组成的行向量
c = poly(r)	% 返回以 r 中元素为根的特征多项式系数组成的行向量
```



### 10.1.2 广义特征值与特征向量

#### 1. eig 命令

$ Ax = \lambda Bx $.

```matlab
e = eig(A,B)	% 广义特征向量
[V,D] = eig(A,B)
[V,D,W] = eig(A,B)

[___] = eig(A,B,algorithm)
```



### 10.1.3 部分特征值问题

#### 1. eigs 命令

```matlab
d = eigs(A)
d = eigs(A,k)
d = eigs(A,k,sigma)
d = eigs(A,k,sigma,Name,Value)
d = eigs(A,k,sigma,opts)
d = eigs(A,B,___)
d = eigs(Afun,n,___)
[V,D] = eigs(___)
[V,D,flag] = eigs(___)
```

#### 2. sigma 取值

| 取值 | 说明                            |
| ---- | ------------------------------- |
| 'lm' | 按模最大的 $k$ 个特征值         |
| 'sm' | 按模最小的 $k$ 个特征值         |
| 'a'  | 对实对称问题求 $k$ 个最大特征值 |
| 'sa' | 对实对称问题求 $k$ 个最小特征值 |
| 'lr' | 非实对称和复数问题, 最大实部    |
| 'sr' | 非实对称和复数问题, 最小实部    |
| 'li' | 非实对称和复数问题, 最大虚部    |
| 'lr' | 非实对称和复数问题, 最小虚部    |



## 10.2 矩阵对角化

### 10.2.1 预备知识

### 10.2.2 具体操作

## 10.3 若尔当标准形

### 10.3.1 若尔当标准形介绍

### 10.3.2 Jordan 命令

## 10.4 矩阵的反射与旋转变换

### 10.4.1 两种变换介绍

### 10.4.2 豪斯霍尔德反射变换

### 10.4.3 吉文斯旋转变换

## 10.5 综合实例



# 第 11 章	符号运算

## 11.1	符号与数值

### 11.1.1	符号与数值间的转换

| 调用格式                                   | 说明                                                         |
| ------------------------------------------ | ------------------------------------------------------------ |
| [output1, ···, outputN] = eval(expression) | 如果需要在表达式中包含数值, 则使用 int2str, num2str 或 sprintf |
| subs(s)                                    | 数值转为符号                                                 |
| sub(s, new)                                | 输入 new 变量                                                |
| sub(s, old, new)                           | 将 old 变量替换为 new 变量                                   |



### 11.1.2	符号表达式与数值表达式

设置精度

| 调用格式       | 说明                                                         |
| -------------- | ------------------------------------------------------------ |
| digits(D)      | 设置有效数字为 D                                             |
| d1 = digits    | 返回 vpa 当前使用的精度                                      |
| d1 = digits(d) | 设置新的精度 d, 并返回旧精度                                 |
| vpa(x)         | 利用可变精度浮点运算 (vpa) 计算符号表达式 x 每个元素, 计算结果至少 32 个有效数字 |
| vpa(x, d)      | 设置有效数字为 d                                             |

```matlab
B = sparse(eye(3));
C = vpa(B);	% 稀疏矩阵的数值解
```



## 11.2	符号矩阵

### 11.2.1	符号矩阵的创建

```matlab
sym('x');
sym('a', [n1,..., nM]);
```



### 11.2.2	符号矩阵的其它运算

### 11.2.3	符号多项式的简化

#### 1	因式分解 (factor)

#### 2	符号矩阵的展开 (expand)

#### 3	符号简化 (simplify)

#### 4	分式通分 (numden)

#### 5	秦九韶型 (horner)



## 11.3	综合实例

```matlab
syms x
a - @(x)(sin(x) + cos(x));
f = sym(a);				% 转换为符号矩阵 f
f = cos(x) + sin(x);	% 重新赋值
```



# 第 12 章	数列与极限

## 12.1	数列

### 12.1.1	数列求和

1. sum

```matlab
S = sum(A, 'all');
S = sum(A, outtype);
% 输出类型有三种: 'default', 'double', 'native'.
S = sum(A, nanflag);
% 'includenan', 'omitnan'.
```

2. nansum
3. cumsum: 求此元素位置之前的元素和
4. sumtrapz: 求梯形累计和

### 12.1.2	数列求积

1. prod
2. cumprod: 累计积函数
3. factorial: 阶乘函数
4. gamma: 伽马函数

## 12.2	极限和导数

### 12.2.1	极限

| 命令                              | 说明                          |
| --------------------------------- | ----------------------------- |
| `limit(f, x, a)` 或 `limit(f, a)` | $ \lim\limits_{x\to a}f(x) $. |
| `limit(f)`                        | $ \lim\limits_{x\to0}f(x) $.  |
| `limit(f, x, a, 'right')`         | 右极限.                       |

```matlab
syms s
f = sin(x) / x;
limit(f)
```

### 12.2.2	导数

| 命令                  | 说明                |
| --------------------- | ------------------- |
| `Y = diff(X)`         | 求相邻元素间的差分. |
| `Y = diff(X, n)`      | $n$ 阶差分.         |
| `Y = diff(X, n, dim)` | 沿 dim 维度.        |

```matlab
syms x y
f = x^y;
fx = diff(f, x);
fxy = diff(fx, y);
```



## 12.3	级数求和

### 12.3.1	有限项级数求和

| 命令                     | 说明                                |
| ------------------------ | ----------------------------------- |
| `F = symsum(f, k)`       | 返回级数 $f$ 关于指数 $k$ 有限项和. |
| `F = symsum(f, k, a, b)` | 从 $a$ 到 $b$ 的有限项和.           |



### 12.3.2	无穷级数求和

```matlab
syms n
s = 1 / n;
v = symsum(s, n, 1, inf);
```



## 12.4	综合实例

```matlab
t = -4*pi : pi/10 : 4*pi;
y = sin(t) ./ t;
tt = t + (t==0)*eps;
yy = sin(tt) ./ tt;

subplot(1, 2, 1);
plot(t, y), axis([-9, 9, -0.5, 1.2]);
xlabel('t'), ylabel('y'), title('普通图形');

subplot(1, 2, 2);
plot(tt, yy), axis([-9, 9, -0.5, 1.2]);
xlabel('tt'), ylabel('yy'), title('修改图形');
```



# 第 13 章	积分

## 13.1	积分

### 13.1.1	定积分与广义积分

| 命令              | 说明   |
| ----------------- | ------ |
| `int(f, a, b)`    | 定积分 |
| `int(f, x, a, b)` |        |

```matlab
sysm x
v = int(sin(x)/x, 0, 1);
vpa(v);
```



### 13.1.2	不定积分

`int(f)` 

`int(f, x)`



## 13.2	多重积分

### 13.2.1	二重积分

`q = integral2(fun, xmin, xmax, ymin, ymax);`

求交点 `A = fzero('2*x-0.5*x', 0)`.

### 13.2.2	三重积分

## 13.3	泰勒展开

### 13.3.1	泰勒定理

### 13.3.2	MATLAB 实现方法

`taylor(f, m, a)`

- 当 $a$ 为正整数时, 不要用 `taylor(f, a)`, 否则会被误认为 `taylor(f, m)` 即 4 阶麦克劳林展开.

## 13.4	傅里叶展开

## 13.5	积分变换

### 13.5.1	傅里叶积分变换

### 13.5.2	傅里叶逆变换

### 13.5.3	快速傅里叶变换

### 13.5.4	拉普拉斯定理

### 13.5.5	拉普拉斯逆变换

## 13.6	综合实例



# 第 14 章	方程求解



# 第 15 章	微分方程

## 15.1	微分方程

函数

```matlab
S = dsolve(eqn);
S = dsolve(eqn, cond);	% 边界条件
Y = dsolve(eqns);		% 微分方程组
```

e.g. 微分方程组

```matlab
syms x(t) y(t)
eqns = [diff(x,t,1)==y, diff(y,t)==-x];
S = dsolve(eqns);
disp([S.x, S.y]);
```

e.g. 求特解, 并绘图

```matlab
syms y(x)
eqn = x*diff(y,x,2) - 5*diff(y,x) + x^3 == 0;
y = dsolve(eqn, 'y(1)=0, y(5)=0', 'x');

xn = -1:6;
yn = subs(y, 'x', xn);
fplot(y, [-1, 6]);
axis([-1 6 -10 15]);
hold on
plot([1, 5], [0,0], '.r', 'MarkerSize', 20);
text(1, 1, 'y(1)=0');
text(4, 1, 'y(5)=0');
hold off
```



## 15.2	常微分方程的数值解法

### 15.2.1	欧拉方法

```matlab
function [x, y] = euler(f, x0, y0, xf, h)
% Euler function: y_{n+1} = y_n + h f(x_n, y_n).
% f is the derivative of y.
% Modification:
% y_p = y_n + h f(x_n, y_n),
% y_c = y_n + h f(x_{n+1}, y_n),
% y_{n+1} = (y_p + y_c) / 2.
n = fix((xf-x0)/h);
y(1) = y0;
x(1) = x0;
for i = 1:n
    x(i+1) = x0 + i*h;
    yp = y(i) + h*feval(f, x(i), y(i));
    yc = y(i) + h*feval(f, x(i+1), yp);
    y(i+1) = (yp+yc) / 2;
end
```



### 15.2.2	龙格-库塔方法

### 15.2.3	龙格-库塔方法解刚性

## 15.3	偏微分方程

### 15.3.1	介绍

### 15.3.2	区域设置及网格化

### 15.3.3	边界条件设置

### 15.3.4	PDE 求解

### 15.3.5	解特征值方程



# 第 16 章	数据可视化分析

## 16.1	样本控件

## 16.2	数据可视化

### 16.2.1	离散情况

### 16.2.2	连续情况

### 16.3	正交试验分析

### 16.3.1	极差分析

### 16.3.2	方差分析



# 附录

# 1. MATLAB 入门之旅摘要

## 1.1 基本语法

|                             示例                             |                             说明                             |
| :----------------------------------------------------------: | :----------------------------------------------------------: |
| [`x = pi`](https://www.mathworks.com/help/matlab/matlab_env/create-and-edit-variables.html) | 使用等号 (`=`) 创建变量。 左侧 (`x`) 是变量的名称，其值为右侧 (`pi`) 的值。 |
| [`y = sin(-5)`](https://www.mathworks.com/help/matlab/learn_matlab/calling-functions.html) |                您可以使用括号提供函数的输入。                |

 

## 1.2 桌面管理

|                             函数                             |      示例       |               说明                |
| :----------------------------------------------------------: | :-------------: | :-------------------------------: |
| [`save`](https://www.mathworks.com/help/matlab/ref/save.html) | `save data.mat` |  将当前工作区保存到 MAT 文件中。  |
| [`load`](https://www.mathworks.com/help/matlab/ref/load.html) | `load data.mat` | 将 MAT 文件中的变量加载到工作区。 |
| [`clear`](https://www.mathworks.com/help/matlab/ref/clear.html) |     `clear`     |     清除工作区中的所有变量。      |
| [`clc`](https://www.mathworks.com/help/matlab/ref/clc.html)  |      `clc`      |   清除命令行窗口中的所有文本。    |
| [`format`](https://www.mathworks.com/help/matlab/ref/format.html) |  `format long`  |     更改数值输出的显示方式。      |

 

## 1.3 数组类型

|      示例       |  说明  |
| :-------------: | :----: |
|       `4`       |  标量  |
|     `[3 5]`     | 行向量 |
|     `[1;3]`     | 列向量 |
| `[3 4 5;6 7 8]` |  矩阵  |

 

## 1.4 等间距向量

|        示例        |                             说明                             |
| :----------------: | :----------------------------------------------------------: |
|       `1:4`        | 使用[冒号 (`:`)](https://www.mathworks.com/help/matlab/ref/colon.html) 运算符，创建一个从 `1` 到 `4`，间距为 `1` 的向量。 |
|     `1:0.5:4`      |         创建一个从 `1` 到 `4`，间距为 `0.5` 的向量。         |
| `linspace(1,10,5)` | 创建一个包含 `5` 个元素的向量。这些值从 `1` 到 `10` 均匀间隔。 |

 

## 1.5 创建矩阵

|     示例     |                说明                |
| :----------: | :--------------------------------: |
|  `rand(2)`   |   创建一个 `2` 行 `2` 列的方阵。   |
| `zeros(2,3)` | 创建一个 `2` 行 `3` 列的矩形矩阵。 |

 

## 1.6 索引

|    示例     |                说明                 |
| :---------: | :---------------------------------: |
| `A(end,2)`  |   访问最后一行的第二列中的元素。    |
|  `A(2,:)`   |        访问第二行所有元素。         |
| `A(1:3,:)`  |        访问前三行的所有列。         |
| `A(2) = 11` | 将数组中第二个元素的值更改为 `11`。 |

 

## 1.7 数组运算

|                        示例                         |                             说明                             |
| :-------------------------------------------------: | :----------------------------------------------------------: |
| `[1 1; 1 1]*[2 2;2 2] ans =     4    4     4    4`  | 执行[矩阵乘法](https://www.mathworks.com/help/matlab/matlab_prog/array-vs-matrix-operations.html#btyv9yp-4)。 |
| `[1 1; 1 1].*[2 2;2 2] ans =     2    2     2    2` | 执行[按元素乘法](https://www.mathworks.com/help/matlab/matlab_prog/array-vs-matrix-operations.html#bu90xxy-1)。 |

 

## 1.8 多个输出

|          示例           |                   说明                    |
| :---------------------: | :---------------------------------------: |
| `[xrow,xcol] = size(x)` | 将 `x` 中的行数和列数保存为两个不同变量。 |
|  `[xMax,idx] = max(x)`  |    计算 `x` 的最大值及其对应的索引值。    |

 

## 1.9 文档

|    示例     |            说明             |
| :---------: | :-------------------------: |
| `doc randi` | 打开 `randi` 函数的文档页。 |

 

## 1.10 绘图

|              示例               |                             说明                             |
| :-----------------------------: | :----------------------------------------------------------: |
| `plot(x,y,"ro-","LineWidth",5)` | 绘制一条红色 (`r`) 虚线 (`--`) 并使用圆圈 (`o`) 标记，线宽很大。 |
|            `hold on`            |                    在现有绘图中新增一行。                    |
|           `hold off`            |              为下一个绘图线条创建一个新坐标区。              |
|       `title("My Title")`       |                       为绘图添加标签。                       |

 

## 1.11 使用表

|                     示例                      |                  说明                  |
| :-------------------------------------------: | :------------------------------------: |
|              `data.HeightYards`               | 从表 `data` 中提取变量 `HeightYards`。 |
| `data.HeightMeters = data.HeightYards*0.9144` |      从现有数据中派生一个表变量。      |

 

## 1.12 逻辑运算

|       示例       |                   说明                    |
| :--------------: | :---------------------------------------: |
| `[5 10 15] > 12` |        将向量与值 `12` 进行比较。         |
|   `v1(v1 > 6)`   |     提取 `v1` 中大于 `6` 的所有元素。     |
| `x(x==999) = 1`  | 用值 `1` 替换 `x` 中等于 `999` 的所有值。 |

 

## 1.13 编程

|                  示例                   |                             说明                             |
| :-------------------------------------: | :----------------------------------------------------------: |
| `if x > 0.5    y = 3 else    y = 4 end` | 如果 `x` 大于 `0.5`，则将 `y` 的值设置为 `3`。  否则，将 `y` 的值设置为 `4`。 |
|      `for c = 1:3    disp(c) end`       | 循环计数器 (`c`) 遍历 值 `1:3`（`1`、`2` 和 `3`）。  循环体显示 `c` 的每个值。 |



# 2. 数值类型

## 2.1 创建数值变量

| 命令                                                         | 说明                | 字节 |
| ------------------------------------------------------------ | ------------------- | ---- |
| [`double`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/double.html) | 双精度数组          | 8    |
| [`single`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/single.html) | 单精度数组          | 4    |
| [`int8`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/int8.html) | 8 位有符号整数数组  | 1    |
| [`int16`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/int16.html) | 16 位有符号整数数组 | 2    |
| [`int32`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/int32.html) | 32 位有符号整数数组 | 4    |
| [`int64`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/int64.html) | 64 位有符号整数数组 | 8    |
| [`uint8`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/uint8.html) | 8 位无符号整数数组  | 1    |
| [`uint16`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/uint16.html) | 16 位无符号整数数组 | 2    |
| [`uint32`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/uint32.html) | 32 位无符号整数数组 | 4    |
| [`uint64`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/uint64.html) | 64 位无符号整数数组 | 8    |

## 2.2 在数值类型之间转换

| 命令                                                         | 说明                                 |
| ------------------------------------------------------------ | ------------------------------------ |
| [`cast`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/cast.html) | 将变量转换为不同的数据类型           |
| [`typecast`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/typecast.html) | 在不更改基础数据的情况下转换数据类型 |

## 2.3 查询类型和值

| 命令                                                         | 说明                     |
| ------------------------------------------------------------ | ------------------------ |
| [`isinteger`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/isinteger.html) | 确定输入是否为整数数组   |
| [`isfloat`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/isfloat.html) | 确定输入是否为浮点数组   |
| [`isnumeric`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/isnumeric.html) | 确定输入是否为数值数组   |
| [`isreal`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/isreal.html) | 确定数组是否使用复数存储 |
| [`isfinite`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/isfinite.html) | 确定哪些数组元素为有限   |
| [`isinf`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/isinf.html) | 确定哪些数组元素为无限值 |
| [`isnan`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/isnan.html) | 确定哪些数组元素为 NaN   |

## 2.4 数值范围

| 命令                                                         | 说明                        |
| ------------------------------------------------------------ | --------------------------- |
| [`eps`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/eps.html) | 浮点相对精度                |
| [`flintmax`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/flintmax.html) | 浮点格式的最大连续整数      |
| [`Inf`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/inf.html) | 创建所有值均为 `Inf` 的数组 |
| [`intmax`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/intmax.html) | 特定整数类型的最大值        |
| [`intmin`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/intmin.html) | 指定整数类型的最小值        |
| [`NaN`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/nan.html) | 创建所有值均为 `NaN` 的数组 |
| [`realmax`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/realmax.html) | 最大的正浮点数              |
| [`realmin`](https://www.mathworks.com/help/releases/R2022a/matlab/ref/realmin.html) | 最小标准浮点数              |



# 3. 文件处理

## 3.1 读入数据

| 调用格式                              | 说明                       |
| ------------------------------------- | -------------------------- |
| fgel(fileID)                          | 读取一行，不包括换行符     |
| fgets                                 | 读取一行，包括换行符       |
| fread(fileID, sizeA)                  | 读取 *二进制文件* 数据     |
| fileread                              | 以文本格式读取文件内容     |
| readlines(filename)                   | 以字符串数组形式读取文件行 |
| A = fscanf(fileID, formatSpec, sizeA) | 读取文本文件中的数据       |
| status = feof(fileID)                 | 检测文件末尾               |

> 注：对于文本文件，fscanf 格式化读取比较方便

### 3.1.1 fgetl

读取一行，不包括换行符

```matlab
fid = fopen(filename);
tline = fgetl(fid);

if feof(fid)
	frewind(fid);
end
fclose(fid);
```

### 3.1.2 fgets

读取一行，包括换行符

```matlab
tline = fgets(fileID) 		% 读取指定文件中的下一行内容，并包含换行符。

tline = fgets(fileID,nchar) % 返回下一行中的最多 nchar 个字符。

[tline,ltout] = fgets(___) 	% 还在 ltout 中返回行终止符（如果有）。
```

### 3.1.3 fread

读取二进制文件数据

```matlab
A = fread(fileID)
% 将打开的二进制文件中的数据读取到列向量 A 中，并将文件指针定位在文件结尾标记处。该二进制文件由文件标识符 fileID 指示。使用 fopen 可打开文件并获取 fileID 值。读取文件后，请调用 fclose(fileID) 来关闭文件。

A = fread(fileID,sizeA)
% 将文件数据读取到维度为 sizeA 的数组 A 中，并将文件指针定位到最后读取的值之后。fread 按列顺序填充 A。

A = fread(fileID,precision)
% 根据 precision 描述的格式和大小解释文件中的值。

A = fread(fileID,sizeA,precision)
% 将文件数据读取到维度为 sizeA 的数组 A 中，并将文件指针定位到最后读取的值之后。fread 按列顺序填充 A。根据 precision 描述的格式和大小解释文件中的值。

A = fread(___,skip)
% 在读取文件中的每个值之后将跳过 skip 指定的字节或位数。

A = fread(___,machinefmt)
% 另外指定在文件中读取字节或位时的顺序。

[A,count] = fread(___)
```

### 3.1.4 fileread

以文本格式读取文件内容

```matlab
text = fileread(filename)

text = fileread(filename,Encoding=encoding)
```

### 3.1.5 readlines

以字符串数组形式读取文件行

```matlab
S = readlines(filename)
% 通过读取一个包含 N 行的文件创建一个 N×1 字符串数组。

S = readlines(filename,Name,Value)
% 基于文件创建一个字符串数组，并通过一个或多个名称-值对组参数指定其他选项。例如，'EmptyLineRule','skip' 跳过空行。
```

### 3.1.6 fscanf

读取文本文件中的数据

```matlab
A = fscanf(fileID,formatSpec)
A = fscanf(fileID,formatSpec,sizeA)
[A,count] = fscanf(___)
```



## 3.2 写入数据

### 3.2.1 fprintf

写入文本文件

```matlab
fprintf(fileID,formatSpec,A1,...,An)
fprintf(formatSpec,A1,...,An)
nbytes = fprintf(___)
```

### 3.2.2 fwrite

写入二进制文件

```matlab
fwrite(fileID,A)
fwrite(fileID,A,precision)
fwrite(fileID,A,precision,skip)
fwrite(fileID,A,precision,skip,machinefmt)
count = fwrite(___)
```



## 3.3 其它操作

### 3.3.1 fopen

```matlab
fileID = fopen(filename)
fileID = fopen(filename,permission)
fileID = fopen(filename,permission,machinefmt,encodingIn)
[fileID,errmsg] = fopen(___)
fIDs = fopen('all')
filename = fopen(fileID)
[filename,permission,machinefmt,encodingOut] = fopen(fileID)
```

### 3.3.2 fclose

```matlab
fclose(fileID)
fclose('all')
status = fclose(___)
```

### 3.3.3 feof

```matlab
status = feof(fileID)
```

### 3.3.4 ferror

```matlab
message = ferror(fileID)
[message,errnum] = ferror(fileID)
[message,errnum] = ferror(fileID,'clear')
```

### 3.3.5 fseek

```matlab
fseek(fileID, offset, origin)
status = fseek(___)
```

### 3.3.6 ftell

```matlab
position = ftell(fileID)
```

### 3.3.7 frewind

```matlab
frewind(fileID)
```



# 3. 随机数

## 3.1 rand

均匀分布的随机数字

```MATLAB
X = rand
X = rand(n)
X = rand(sz1,...,szN)
X = rand(sz)
X = rand(___,typename)
X = rand(___,"like",p)
X = rand(s,___)
```

## 3.2 randn

正态分布的随机数字

```MATLAB
X = randn
X = randn(n)
X = randn(sz1,...,szN)
X = randn(sz)
X = randn(___,typename)
X = randn(___,"like",p)
X = randn(s,___)
```

## 3.3 randi

均匀分布的伪随机整数

```matlab
X = randi(imax)
X = randi(imax,n)
X = randi(imax,sz1,...,szN)
X = randi(imax,sz)
X = randi(___,typename)
X = randi(___,"like",p)
X = randi([imin,imax],___)
X = randi(s,___)
```



# 4. 取整函数

## 4.1 round

四舍五入，取最近的整数或小数

```matlab
Y = round(X)
Y = round(X,N)		% N digits
Y = round(X,N,type)
Y = round(___,TieBreaker=direction)
Y = round(t)
Y = round(t,unit)
```

## 4.2 ceil

进一法（向 $+\infty$ 舍入）

```matlab
Y = ceil(X)
Y = ceil(t)
Y = ceil(t,unit)
```

## 4.3 floor

去尾法（向 $-\infty$ 舍入）

```matlab
Y = floor(X)
Y = floor(t)
Y = floor(t,unit)
```

## 4.4 fix

向 $0$ 舍入

```matlab
Y = fix(X)
```



# 5. 常用函数

```matlab
size(x)		% 返回二维向量
numel(x)	% 返回元素个数
length(x)	% 向量长度
abs(fft(y))	% 离散傅里叶变换的幅值
pause		% Press any key to continue.
pause(0.2)	% pause 0.2 second
mode(X)		% 取众数
```































