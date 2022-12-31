<h1 align="center">Python</h1>



# 第 1 章	初识 Python

运行程序

```
python path\file.py
```

IDLE 快捷键 p14



# 第 2 章	Python 语言基础

## 2.1	Python 语法特点

### 2.1.1	注释

1. 单行注释: #

2. 多行注释: '''

3. 文件编码声明注释: 在文件第一行如下声明 (任一方式均可)

   ```python
   #-*- coding:gbk -*-
   
   #coding:gbk
   
   #coding=gbk
   ```

### 2.1.2	代码缩进

### 2.1.3	编码规范

#### 1	编码规则

```python
import os, sys	#可以, 但不推荐

print("hhhhhhhhh"
     "hhhhhhhhh")	#推荐
print("hhhhhhhhh\
hhhhhhh")	#不推荐
```

循环中不使用 + 或 += 累加字符串, 而是在结束后使用 join() 方法连接.

#### 2	命名规范

- 模块名: 小写字母 + 下划线 '_'
- 包名: 小写字母 + 点 '.'
- 类名: 首字母大写, 驼峰式
- 模块内部的类: 下划线开头, 首字母大写, 驼峰式
- 函数, 类的属性与方法: 小写字母 + 下划线 '_'
- 常量: 全部大写字母 + 下划线 '_'
- 类私有变量或方法: 双下划线开头 '__'

## 2.2	变量

### 2.2.1	保留字与标识符

#### 1	保留字

查看保留字

```python
import keyword
keyword.kwlist
```

| 保留字 |      |        |          |        |          |
| ------ | ---- | ------ | -------- | ------ | -------- |
| and    | as   | assert | break    | class  | continue |
| def    | del  | elif   | else     | except | finally  |
| for    | from | False  | global   | if     | import   |
| in     | is   | lambda | nonlocal | not    | None     |
| or     | pass | raise  | return   | try    | True     |
| while  | with | yield  |          |        |          |

#### 2	标识符

### 2.2.2	理解变量

### 2.2.3	定义变量

查看数据类型

```Python
print(type(value))
```

查看内存地址

```python
id(value)
```

## 2.3	基本数据类型

### 2.3.1	数字

将数字转化成字符串

```python
print(str(number))
```

复数

```python
z = 1 + 2j
z = 1 + 2J
```

### 2.3.2	字符串

```python
s = 'Hello'
s = "world"
s = '''Hello'''
s = """World"""
```

| 转义字符 | 说明       | 转义字符 | 说明                      |
| -------- | ---------- | -------- | ------------------------- |
| \\       | 续行符     | \\'      | 单引号                    |
| \\n      | 换行符     | \\\\     | 反斜杠                    |
| \\0      | 空         | \\f      | 换页                      |
| \\t      | 水平制表符 | \\0dd    | 八进制数代表的 ASCII 码   |
| \\"      | 双引号     | \\xhh    | 十六进制数代表的 ASCII 码 |

### 2.3.3	布尔类型

以下值为假

- False 或 None
- 数值零, 包括 0 或 0J
- 空序列, 包括字符串, 元组, 列表, 字典
- 自定义对象的实例, `__bool__` 方法返回 False, 或 `__len__` 方法返回 0

### 2.3.4	数据类型转换

| 函数                    | 说明         | 函数     | 说明       |
| ----------------------- | ------------ | -------- | ---------- |
| int(x)                  |              | float(x) |            |
| complex(real [, image]) | 复数         | str(x)   |            |
| repr(x)                 | 表达式字符串 | eval(x)  | 计算表达式 |
| chr(x)                  | 字符         | ord(x)   | ASCII 码   |
| hex(x)                  | 十六进制     | oct(x)   | 八进制     |
| bin(x)                  | 二进制       |          |            |

## 2.4	基本输入输出

### 2.4.1	使用 input() 函数

```python
variable = input("提示文字")
number = int(input("请输入整数"))
```

### 2.4.2	使用 print() 函数

一次输出多个内容

```python
print(a, b)
```

输出条件表达式

```Python
print(a if a>b else b)
```

输出到指定文件

```python
fp = open(r'D:\text.txt', 'a+')
print("Hello world", file=fp)
```

指定分隔符

```python
print(a, end=' ')
```

不换行输出

```python
print(a, end='')
```





# 第 3 章	运算符与表达式

## 3.1	运算符

### 3.1.1	算术运算符

| 运算符 | 说明                           |
| ------ | ------------------------------ |
| %      | 如果除数是负数, 则结果也是负数 |
| //     | 取整                           |
| **     | 幂                             |

### 3.1.2	赋值运算符

%=, **=, //=

### 3.1.3	关系运算符

!=

### 3.1.4	逻辑运算符

and, or, not

### 3.1.5	位运算符

| 位运算符 | 说明     | 位运算符 | 说明     |
| -------- | -------- | -------- | -------- |
| &        | 按位与   | \|       | 按位或   |
| ^        | 按位异或 | $\sim$   | 按位取反 |
| <<       | 左移位   | >>       | 右移位   |

## 3.2	运算符的优先级

## 3.3	条件表达式

```python
if a>b:
    r = a
else:
    r = b
```

```python
r = a if a>b else b
```



# 第 4 章	流程控制语句

## 4.1	程序结构

## 4.2	选择语句

```python
if 表达式:
    语句块 1
elif:
    语句块 2
else:
    语句块 3
```

## 4.3	循环语句

### 4.3.1	while 循环

```python
while 条件表达式:
    循环体
```

### 4.3.2	for 循环

```python
for 迭代变量 in 对象:
    循环体
```

#### 1	数值循环

```python
range(start, end, step)
# start 省略则从 0 开始
# step 省略则为 1
# range(1, 7) 表示 1 到 6
```

实例

```python
for i in range(1, 10, 2)
	print(i, end=' ')
```

#### 2	遍历字符串

```python
for ch in string:
    print(ch)
```

还可以迭代 (遍历) 列表, 元组等.

## 4.4	break, continue 和 pass 语句



# 第 5 章	列表和元组

## 5.1	序列概述

### 5.1.1	索引

从零开始计数.

可以使用负数.

```python
ls = ['Hello', 'world']
print(ls[-1])	# 访问最后一个元素
```

### 5.1.2	切片

```python
ls = ['h', 'e', 'l', 'l', 'o']
print(ls[1:5])		# 获取第 2-5 个元素
print(ls[1:5:2])	# 获取第 2 和 4 个元素
```

### 5.1.3	序列相加

```python
ls1 = [1, 2, 3]
ls2 = ['hello', 'world']
print(ls1 + ls2)		# 正确的, 都是列表
print(ls1 + "Hello")	# 错误的, 后者为字符串
```

### 5.1.4	数乘

```python
print(ls * 3)
```

初始化指定长度的空列表

```python
emptylist = [None] * n
```

### 5.1.5	检查元素是否属于序列

使用关键词 in 和 not.

```python
print("Hello" in ls)
print("Hello" not in ls)
```

### 5.1.6	计算序列的长度、最大值和最小值

```python
num = [3, 1, 2]
print(len(num))		# 长度
print(max(num))		# 最大值
print(min(num))		# 最小值
```

其它内置函数

| 函数   | 说明          | 函数        | 说明                  |
| ------ | ------------- | ----------- | --------------------- |
| list() | 序列 → 列表   | sorted()    | 排序                  |
| str()  | 序列 → 字符串 | reversed()  | 逆序                  |
| sum()  | 计算元素和    | enumerate() | 组合为索引序列 (元组) |



## 5.2	列表

列表是可变序列.

任何类型的数据都可以放入列表, 且元素类型可以不同.

### 5.2.1	列表的创建与删除

#### 1	赋值运算直接创建

```python
ls = [1, 'a', "OP"]
```

#### 2	创建空列表

```python
emptylist = []
emptylist = [None] * n
```

#### 3	创建数值列表

```python
list(range(10, 20, 2))
```

#### 4	删除列表

```python
del listname
```

### 5.2.2	访问列表元素

输出单个元素不包括中括号,

如果是字符串, 也不包括引号.

### 5.2.3	遍历列表

#### 1	for 循环

```python
for item in listname:
    pritn(item)
```

#### 2	enumerate() 函数

```python
for index, item in enumerate(listname):
    print(index, item)
```

### 5.2.4	添加、修改和删除列表元素

#### 1	添加元素

```python
ls.append(obj)
ls1.extend(ls2)
```

#### 2	修改元素

```python
ls[2] = "Dream"
```

#### 3	删除元素

根据索引删除

```python
del ls[-1]
```

根据元素值删除

```python
if ls.count("HIM") > 0:
    ls.remove("HIM")
```

### 5.2.5	对列表统计计算

#### 1	获取元素出现的次数

```python
ls.count(obj)
```

#### 2	获取元素首次出现的下标

```python
ls.index(obj)
```

#### 3	统计数值列表的元素和

```python
sum(iterable [, start])
```

### 5.2.6	对列表进行排序

#### 1	sort() 方法

True 为降序, False 为升序.

默认为升序.

```python
ls.sort(key=None, reverse=False)
```

在排序时不区分字母大小写:

```python
ls.sort(key="str.lower")
```

#### 2	使用内置的 sorted() 函数

```python
sorted(iterable, key=None, reverse=False)
```

### 5.2.7	列表推导式

1. 生成指定范围的数值列表

   ```python
   import random
   ls1 = [random.randomint(10, 100) for i in range(10)]
   ```

2. 生成指定需求的列表

   ```python
   ls2 = [int(x*0.5) for x in ls1]
   ```

3. 从列表中选择符合条件的元素组成新的列表

   ```python
   ls3 = [x for x in ls2 if x>20]
   ```

### 5.2.8	二维列表

#### 1	直接定义二维列表

```python
ls = [
    [a11, a12],
    [a21, a22]
]
ls = [[a11, a12],
     [a21, a22]]
```

#### 2	使用 for 循环创建

```python
arr = []
for i in range(2):
    arr.append([])
    for j in range(3):
        arr[i].append(j)
# arr = [[0, 1, 2], [0, 1, 2]]
```

#### 3	使用列表推导式创建

```python
arr = [[j for j in range(3)] for i in range(2)]
# arr = [[0, 1, 2], [0, 1, 2]]
```

### 5.2.9	列表的函数

append(), extend(), insert(), remove(), pop().



## 5.3	元组

元组是不可变序列.

任何类型的数据都可以放入列表, 且元素类型可以不同.

列表不能作为字典的键, 而元组可以.

### 5.3.1	元组的创建和删除

#### 1	赋值运算符直接创建

```python
tuplename = (element1, element2, ...)
tuplename = element1, element2, ...
```

注意如果只有一个元素, 一定要加逗号, 否则将被识别为数字或字符串.

```python
name = ("Python",)
```

#### 2	创建空元祖

```python
emptytuple = ()
```

#### 3	创建数值元组

```python
tuple(data)		# data 如字符串, 元组, range 对象等.
```

#### 4	删除元组

```python
del tuplename
```

### 5.3.2	访问元组元素

使用下标索引 (注意输出)

```python
names = "Python", "Java", ("C", "C++")
print(names)
# ('Python', 'Java', ('C', 'C++'))
print(names[0])
# Python
print(names[:2])
# ('Python', 'Java')
```

使用 for() 与 enumerate()

```python
names = ("Python", "Java", "C", "C++")
for index, item in enumerate(names):
    if index%2 == 0:
        print(item + ", ", end='')	# 即不换行
    else:
        print(item + ",")
# 注意如果元素不是字符串的话, 就不能这样输出.
```

### 5.3.3	修改元组

元组可以重新赋值, 但不能直接修改单个元素.

元组可以连接组合, 但连接的内容只能是元组.

```python
name = ("Python")
name = name + ("C")
```

### 5.3.4	元组推导式

#### 1	生成器对象转为元组

```python
import random
nums = (random.randint(10, 100) for i in range(10))
nums = tuple(nums)	# 生成器对象转为元组
```

#### 2	使用 for 循环遍历

```python
number = (i for i in range(3))
for i in number:
    print(i, end='')
# 012
```

```python
number = tuple(number)
print(number)
# ()
```

#### 3	使用 \_\_next\_\_() 遍历

```python
number = (i for i in range(3))
for i in range(3):
    print(number.__next__(), end='')
# 012
```

```python
number = tuple(number)
print(number)
# ()
```



# 第 6 章	字典和集合

## 6.1	字典

字典又称为关联数组或散列表.

### 6.1.1	字典的创建和删除

#### 1	通过键值对创建

```python
dictionary = {'key1':'value1', ..., 'keyn':'valuen',}
dictionary = {keys:values}
```

- 这里的 key 不可变, 可以是字符串 (*不加引号* ) 或元组

#### 2	创建空字典

```python
dictionary = {}
dictionary = dict()
```

#### 3	通过映射函数创建

```python
dictionary = dict(key1='value1',..., keyn='valuen')
dictionary = dict(zip(list1, list2))
```

- 这里的 list1/2 可以是列表或元组

#### 4	创建值为空的字典

```python
dictionary = dict.fromkeys(list1)
```

#### 5	删除字典

```python
del dictionary
```

#### 6	删除元素

```python
dictionary.clear()			# 删除所有元素
dictionary.pop('key1')		# 删除并返回指定"键"的元素
dictionary.popitem()		# 删除并返回最后一对元素
```

### 6.1.2	访问字典

```Python
print(dictionary['key'])
print(dictionary['key'] if 'key' in dictionary in dictionary else None)		# 不存在则返回 None
dictionary.get(key [, default])		# 不存在则返回 None
```

### 6.1.3	遍历字典

获取键值对列表

```python
dictionary.items()
```

遍历元素

```python
for key, value in dictionary.items():
    print(key, value)
```

或者

```python
for key in dictionary.keys():
    for value in dictionary.values():
        print(key, value)
```

### 6.1.4	添加、修改和删除字典元素

添加或修改

```python
dictionary['key'] = 'value'
```

删除元素

```python
if 'key1' in dictionary:
    del dictionary['key1']
```

### 6.1.5	字典推导式

```python
import random
randomdict = {i : random.randint(10,100) for i in range(1,5)}
```

```python
dictionary = {i:j+'units' for i,j in zip(list1,list2)}
```

## 6.2	集合

可变集合 set, 不可变集合 frozenset.

### 6.2.1	创建集合

#### 1	直接创建

```python
setname = {element1, element2,...}
```

- 重复元素只保留一个

#### 2	使用 set() 函数

```python
setname = set(iteration)
```

- iteration 可以是列表, 元组, range 对象, 字符串等.
- 只能使用 set() 函数创建空集合.

### 6.2.2	添加或删除元素

#### 1	添加元素

```python
setname.add(element)
```

#### 2	删除元素

```python
setname.remove(element)		# 删除指定元素
setname.pop()				# 删除第一个元素
setname.clear()				# 清空集合
```

### 6.2.3	集合的运算

```python
print(set1 & set2)		# 交集
print(set1 | set2)		# 并集
print(set1 - set2)		# 差集
```



# 第 7 章	字符串

## 7.1	字符串编码转换

两种字符串类型:

1. str: Unicode 字符.

2. byte: 二进制字符.

   如 `b'\xd2\xb0'`, `b'mr'`.

### 7.1.1	使用 encode() 方法编码

```python
byte = str1.encode([encoding='utf-8'][, errors='strict'])
```

- 其中 encoding 可为 'gb2312'
- errors 可为 'ignore', 'replace' 或 '<u>xml</u>char<u>ref</u>replace'

### 7.1.2	使用 decode() 方法解码

```python
str1 = byte.decode([encoding="utf-8"][, errors="strict"])
```

## 7.2	字符串常用操作

### 7.2.1	拼接字符串

```python
str3 = str1 + str2
```

### 7.2.2	计算字符串的长度

```
len(str1)
```

### 7.2.3	截取字符串

```python
string[start:end:step]
```

### 7.2.4	分割、合并字符串

#### 1	分割字符串

```python
s.split(sep, maxsplit)
```

- sep 用于指定分隔符, 默认为 None, 即所有空字符, 包括 ' ', '\n', '\t'
- maxsplit 用于指定分割的次数, 不指定则为 -1

#### 2	合并字符串

```python
new_str = s.join(iterable)
```

- s 用于指定合并时的分隔符

### 7.2.5	检索字符串

#### 1	count() 方法

```python
s.count(sub[, start[, end]])
```

- s 表示原字符.
- sub 表示要检索的子字符串.
- start 和 end 表示检索范围.

#### 2	find() 方法

```python
s.find(sub[, start[, end]])
```

- 不存在则返回 -1

#### 3	index() 方法

```python
s.index(sub[, start[, end]])
s.rindex(sub[, start[, end]])	# 从右开始查找
```

- 不存在则抛出异常

#### 4	startswith() 方法

```python
s.startswith(prefix[, start[, end]])
```

- 检索字符串是否以指定子字符串开头, 是则返回 True.

#### 5	endswith() 方法

```python
s.endswith(suffix[, start[, end]])
```

### 7.2.6	字母的大小写转换

#### 1	lower() 方法

#### 2	upper() 方法

### 7.2.7	去除字符串中的空格和特殊字符串

```python
s.strip([chars])
s.lstrip([chars])
s.rstrip([chars])

s.removeprefix([chars])		# 不修改原字符串的内容
s.removesuffix([chars])		# 修改原字符串的内容
```

- 不指定则去除 ' ', '\n', '\t', '\r'

### 7.2.8	格式化字符串

#### 1	使用 "%" 操作符

```python
'%[-][+][0][m][n]格式字符'%exp
```

#### 2	使用 format() 方法

```python
s.format(args)
```

- s 用于指定模板
- args 用于指定要转换的项 (用逗号分隔)

```
{[index] [:[fill]align] [sign] [#] [width] [.precision] [type]}
```



# 第 8 章	正则表达式

## 8.1	正则表达式

### 8.1.1	行定位符

\^ 表示行的开始, \$ 表示行的结尾

### 8.1.2	元字符

| 元字符 | 说明                     | 元字符 | 说明                 |
| ------ | ------------------------ | ------ | -------------------- |
| .      | 匹配换行符以外的任意字符 | \\b    | 匹配单词的开始或结束 |
| \\w    | 字母, 数字, 下划线或汉字 | \^     | 字符串开始           |
| \$     | 字符串结束               | \\s    | 任意的空白符         |
| \\d    | 数字                     |        |                      |

### 8.1.3	限定符

| 限定符 | 说明                 | 限定符 | 说明                 |
| ------ | -------------------- | ------ | -------------------- |
| ?      | 前面的字符零次或一次 | +      | 前面的字符一次或多次 |
| *      | 前面的字符零次或多次 | {n}    | 前面的字符 n 次      |
| {n, }  | 前面的字符至少 n 次  | {n, m} | 前面的字符 [n, m] 次 |

### 8.1.4	字符类

```python
[a-z0-9A-Z]			# 即 \w
[\u4e00-\u9fa5]+	# 匹配连续多个汉字
```

### 8.1.5	排除字符

使用 \^

```python
[^a-zA-Z]
```

### 8.1.6	选择字符

例

```python
(^\d{15}$) | (^\d{18}$) | (^\d{17})(\d|X|x)$
```

- 即匹配 15 位或 18 位或 17 位数字, 且最后一位可以是数字或 X 或 x.

### 8.1.7	转义字符

括号需要转义.

### 8.1.8	分组

```python
(four|fif)th
```

匹配单词 fourth 或 fifth.

### 8.1.9	在 Python 中使用正则表达式

```python
'\\bm\\w*\\b'
r'\bm\w*\b'
```

## 8.2	使用 re 模块

### 8.2.1	匹配字符串

#### 1	使用 match() 方法

```python
re.match(pattern, string, [flags])
```

- pattern 表示模式字符串
- string 表示要匹配的字符串
- flags 表示标志位, 用于控制匹配方式

#### 2	使用 search() 方法

```python
re.search(pattern, string, [flags])
```

#### 3	使用 findall() 方法

```python
re.findall(pattern, string, [flags])
```

### 8.2.2	替换字符

```python
re.sub(pattern, repl, string, count, flags)
```

- pattern 为模式字符串.
- repl 为替换的字符串.
- string 为原始字符串.
- count 为替换的最大次数 (默认为 0)

### 8.2.3	用正则表达式分割字符串

```python
re.split(pattern, string, [maxsplit], [flags])
```



# 第 9 章	函数

## 9.1	函数的创建和调用

### 9.1.1	创建一个函数

```python
def functionName([parameterlist])
	['''comments''']	# 文档字符串 Docstrings
    [functionbody]
```

- 可以通过 functionName.\_\_doc\_\_ 或 help(functionName) 获取文档字符串.

### 9.2	参数传递

### 9.2.1	形式参数与实际参数

### 9.2.2	位置参数

### 9.2.3	关键字参数

### 9.2.4	默认值

### 9.2.5	可变参数

```python
def function(*parameter)
```

## 9.3	返回值

## 9.4	作用域

### 9.4.1	局部变量

### 9.4.2	全局变量

## 9.5	匿名函数

```python
result = lambda [args]: expression
```



# 第 10 章	面向对象程序设计

```python
class ClassName:
    """类的帮助信息"""
    num = 0;	# 类属性，C++ 中的 static
    def __init__(self):		# 构造函数
        
    def functionName(self, parameterlist)	# 类的方法
    	pass

classExample = ClassName()
classExample.functionName(parameterValue)
```







# 第 17 章	网络爬虫开发

## 17.2	网络爬虫常用技术

### 17.2.1	Python 的网络请求

#### 1	urllib 模块

| 子模块             | 说明                 |
| ------------------ | -------------------- |
| urllib.request     | 打开 URL             |
| urllib.error       | 异常类               |
| urllib.parse       | URL 解析，URL 引用   |
| urllib.robotparser | 解析 robots.txt 文件 |

urlopen() 与网页实例的 read()

```python
import urllib.request

response = urllib.request.urlopen("http://www.baidu.com")
html = response.read()
print(html)
```

urllib.parse

```python
import urllib.parse
import urllib.request

data = bytes(urllib.parse.urlencode({'word': 'hello'}), encoding='utf-8')
response = urllib.request.urlopen('http://httpbin.org/post', data=data)
html = response.read()
print(html)
```

#### 2	urllib3 模块

```python
import urllib3

http = urllib3.PoolManager()    # 创建 PoolManager 对象，用于处理与线程池的连接以及线程安全的所有细节
response = http.request('GET', 'https://www.baidu.com/')	# 发送请求
print(response.data)

response = http.request('POST', 'http://httpbin.org/post', field={'word': 'hello'})	# post 请求获取网页内容
```

#### 3	requests 模块

### 17.2.2	请求 headers 处理

### 17.2.3	网络超时

### 17.2.4	代理服务

### 17.2.5	BeautifulSoup

```python
from bs4 import BeautifulSoup4

soup = BeautifulSoup(html_doc, features="lxml")
```







## 17.3	开发框架 Scrapy



# 附录

## A.1	库

### A.1.1	datetime

```python
import datetime
day = datetime.datetime.now().weekday()
print(day)
```

### A.1.2	random

```python
import random
random.randint(10, 100)		# 10~100, 包括 100
```



快捷键：

| Alt + | 说明          | Alt + | 说明            |
| ----- | ------------- | ----- | --------------- |
| 1     | project files | 2     | bookmarks       |
| `     | vsc options   | 3     | find            |
| 4     | run           | 5     | debug           |
| 6     | problems      | 7     | structure       |
| 8     | services      | 9     | version control |
| 0     | commit        |       |                 |













