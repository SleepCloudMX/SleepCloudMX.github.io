# C++ 笔记

[TOC]



## 第 1&2 篇

**循环语句**

```cpp
for (double &x: arr){}
```



**函数模板**、**类模板**

```
template <typename T, class T>
```



**引用**

- 不能改变引用的变量
- 不能建立引用==数组==
- 不能建立引用的==引用==
- 不能建立引用的==指针==
- 可以取引用的==地址==



三维数组 **分配内存**

```cpp
const int n1=3, n2=4, n3=5;	// n2 和 n3 不能是变量，但可以是常变量
int ((*p)[n2])[n3] = new int[n1][n2][n3];

delete[] p;
```



**枚举类型**

```
enum weekday{sun=32, mon, tue, wed, thu, fri, sat};
enum weekday today = sat;
weekday tomorrow = sun;
```



## 第 3 篇 基于对象的程序设计

### 第 8 章 类和对象的特性

### 第 9 章 类和对象的使用

指向成员函数的指针

```
void (Test::*p)(int) = &Test::fun;
(t.*p)(32);
```

**共用数据的保护**

```cpp
const Time t;
Time const t;

void show() const;
mutable int a;

const int * const p;
const int &b = a;
```

- 常对象
  - 常对象==只能==调用==常成员函数==（除了构造函数和析构函数）
  - 常成员函数==可以访问==对象的数据成员，但==不允许修改==它们的值（除了 mutable）
- 常对象成员
  - 常数据成员
    - 只能通过构造函数的参数==初始化列表==进行初始化
  - 常成员函数
    - `void fun()const;` 中 `const` 是函数类型的一部分，定义和声明时都要有
    - 不能调用 非 const 成员函数

| 数据成员       | 普通成员函数         | const 成员函数       |
| -------------- | -------------------- | -------------------- |
| 普通数据成员   | 可以引用，可以改变值 | 可以引用，不可改变值 |
| const 数据成员 | 可以引用，不可改变值 | 可以引用，不可改变值 |
| const 对象     | 不允许               | 可以引用，不可改变值 |

- 指向对象的常指针
- 指向常对象的指针
- 对象的常引用



- 静态成员
  - 静态数据成员
    - 在类外 `int ClassName::Var = 1;`
    - 不能用参数初始化表对其初始化
    - 可以通过==对象名==或==类名==引用
  - 静态成员函数
    - `static int fun();`
    - 是类的一部分，而不是对象的一部分
    - 可以通过==对象名==或==类名==引用
    - 静态成员函数没有 `this` 指针
    - 静态成员函数可以直接==引用静态成员==



### 第 10 章 运算符重载

```cpp
Test Test::operator++()
{
    ++a;
    return *this;
}

Test Test::operator++(int)
{
    Test temp(*this);
    ++a;
    return temp;
}

friend ostream &operator<<(ostream &cout, const Test &t){
    cout << t.a << endl;
    return cout;
}
```

- 构造函数 `Complex(double real, double imag);`
- 复制构造函数 `Complex(Complex &c);`
- 转换构造函数 `Complex(double r);`
- 类型转换函数 `operator double();`



## 第 4 篇 面向对象的程序设计

### 第 11 章 继承与派生

- public

  - public -> public

  - protected -> protected

  - private -> 不可访问

- protected
  - public -> protected
  - protected -> protected
  - private -> 不可访问
- private
  - public -> private
  - protected -> private
  - private -> 不可访问



- 虚基类

  - 间接继承共同基类时只保留一份成员

  - ```cpp
    class A {};
    class B: virtual public A {};
    class C: virtual public A {};
    class D: public B, public C {};
    ```

  - 在最远派生类对==所有直接基类==和==虚基类==初始化



- 只有公有派生类才是基类真正的子类型，它完整地继承了基类的功能。
- 通过指向基类对象的指针，只能访问派生类的==基类成员==，而不能访问增加的成员



- 派生类==继承==基类
- 成员类==组成==复合类



### 第 12 章 多态性与虚函数

- 多态性
  - 静态多态性：函数、运算符重载（通过对象）
  - 动态多态性：虚函数（通过指针或引用）

- 虚函数
  - 虚成员函数
  - 虚析构函数
  - 纯虚函数



### 第 13 章 输入输出流

**标准输出流**：cout，cerr，clog

**输出格式**

| 流成员函数   | 控制符          | 作用         |
| ------------ | --------------- | ------------ |
| precision(n) | setprecision(n) | 设置精度     |
| width(n)     | setw(n)         | 设置宽度     |
| fill(c)      | setfill(c)      | 填充字符     |
| setf()       | setiosflags()   | 设置格式状态 |
| unsetf()     | resetiosflags() | 终止格式状态 |

**格式标识符**（ios 命名空间内）

```
left, right, internal	//对齐

dec, oct, hex	//基数

showbase	//强制输出整数的基数，如 03,0x1f
showpoint	//浮点数的小数点和尾数零
uppercase	//3E8
showpos		//+32

scientific	//科学计数法
fixed		//定点格式

unibuf		//输出后刷新所有流
stdio		//输出后清除 stdout、stderr
```

**流成员函数**

| 函数                     | 函数                 |
| ------------------------ | -------------------- |
| cout.put(c)              | c = cin.get()        |
| cin.get(c)               | cin.get(s, n+1, '/') |
| cin.getline(s, n+1, EOF) | cin.eof()            |
| c = cin.peek()           | cin.putback(c)       |
| cin.ignore(n, EOF)       | cin.ignore()         |
| getline(cin, str)        | cout.put(c)          |

**参照位置**

```
ios::beg
ios::cur
ios::end
```

**字符串流**

```cpp
ostrstream(char *buffer, int n, int mode=ios::out);
istrstream(char *buffer, int n=1);
strstream(char *buffer, int n, int mode);
```



### 第 14 章 C++ 工具

**异常处理**

```cpp
try
{...throw 表达式（变量）;...}
catch(异常信息类型[变量名])	//如 catch(double); catch(double d);
{...}
catch(...)
{throw;}	//原样抛出
```

```cpp
float fun(float) throw(double, int);
float fun(float) throw();	//可能发生异常，但不抛出异常，程序非正常终止
float fun(float) noexcept;	//指出函数不会发生异常
```

**作用域**：文件、函数、复合语句、类

**命名空间**

```cpp
namespace ns1{}
namespace ns2 = ns1;
```

