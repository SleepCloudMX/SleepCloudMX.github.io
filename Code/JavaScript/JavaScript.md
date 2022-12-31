# JavaScript



**写入 HTML 输出流**

```html
document.write("<h1>标题</h1>");	// 有没有分号都可以
```

**对事件的响应**

```html
<button type="button" onclick="alert('欢迎!')">点我!</button>
```

**改变 HTML 内容**

```html
<p>改变 HTML 元素的内容为</p>
<script>
// HTML 只有 JS 的部分可以这样注释
function myFunction() {
    x = document.getElementById("demo");
    x.innerHTML = "Hello JavaScript";		// 等号两边可以有空格
}											/* 这样可以注释多行 */
</script>
<button type="button" onclick="myFunction()">
    点击改变内容
</button>
```

**改变 HTML 图像**

```html
<script>
function changeImage() {
    element = document.getElementById('myImage');
    if (element.src.match("bulbon")) {
        element.src = "/images/pic_bulboff.gif";
    } else {
        element.src = "/images/pic_bulbon.gif";
    }	// match 指包含字符串, 而无需完全相同
}
</script>
<img loading="lazy" id="myImage" onclick="changeImage" src="/images/pic_bulbboff.gif" width="100" height="180">
```

**改变 HTML 样式**

```html
<script>
function myFunction() {
    x=document.getElementById("demo") // 找到元素
	x.style.color="#ff0000";          // 改变样式
}
</script>
<button type="button" onclick="myFunction()">点击这里</button>
```

**验证输入**

```html
<p>请输入数字</p>
<input id="demo" type="text">
<script>
function myFunction() {
    var x = document.getElementById("demo").value;
    if (x == "" || isNaN(x)) {
        alert("不是数字");
    } // 注意还要判断是否非空
    if (isNaN(x) || x.replace(/(^\s*)|(\s*$)/g,"")=="") {
        alert("严格判断为不是数字")
    }
}
</script>
<button type="button" onclick="myFunction()">点击这里</button>
```

`<script>` 可以放在 `<body>` 或 `<head>` 中.

可以把脚本保存到外部文件中, 文件扩展名为 .js, 如

- HTML 文件

  ```html
  <!DOCTYPE html>
  <html>
      <body>
          <script src="myScript.js"></script>
      </body>
  </html>
  ```

- JavaScript 文件

  ```JavaScript
  function myFunction() {
      document.getElementById("demo").innerHTML="Hello world";
  }	// 外部脚本不能包含 <script> 标签
  ```

[Chrome 浏览器中执行 JavaScript | 菜鸟教程 (runoob.com)](https://www.runoob.com/js/js-chrome.html)

**显示数据**

- 弹出警告窗 window.alert()
- 写入文档中 document.write()
- 写入元素中 innerHTML
- 写入控制台 console.log()

```html
<script>
window.alert(5 + 6);	// 显示 11
</script>
```

**注**	如果在文档完成加载后执行 document.write(), 则整个 HTML 页面将被覆盖.

**字面量**

```JavaScript
// 数字字面量
3.14
1001
123e5

// 字符串字面量
"Hello"
'world'

// 表达式字面量
5 + 6
2 ** 3

// 数组字面量
[1, 2, 4, 7]

// 对象字面量
{Name: "Lazy", age: 12, eyeColor: "Black"}

// 函数字面量
function myFunction(a, b) {return a ** b;}
```

**变量**

```JavaScript
var a, str = "Hello";			// 其中 a 为 undefined
var r = 1e-0, s = 'world';		// 可以使用科学计数法
const var pi = 3.14;			// 定义常量
var S = pi * r**2;				// 支持指数运算
var S, w = true;				// 第二次声明后, 原来的值不会丢失
var color = ["Blue", "Red", "Green"];
var complex = {real: 7, imag: 5};
```

- 变量对大小写敏感, 常使用驼峰命名规则
- 变量必须以字母开头
- 变量也能以 \$ 或 _ 开头 (不过不建议)

**数据类型**

```
16 + "Hello"	// 可以在 edge 中按 Fn + F12 进入控制台输入此代码
				// 输出为 '16Hello'
```

**语句标识符**

```JavaScript
if (condition1) {
	statement1;
} else if (condition2) {
    statement2;
}

switch (variable) {
    case 1: break;
    default: break;
}

for (var i = 0; i < arr.length; ++i) {
    continue;
}

for (a in arr) {
    break;
} // a 为属性名

while (condition) {
    statement;
}

do {
    statement;
} while (condition);

function fun(a, b) {
    return;
}

try {
    throw "..."
} catch(err) {
	
} finally {
    
}
```

**对代码行进行拆行**

```javascript
document.write("Hello \
world!");	\\ 仅适用于文本字符串
```

**注**	JavaScript 是脚本语言, 浏览器会在读取代码时逐行执行, 而不会在执行前编译.

**数据类型**

- 值类型 (基本类型)
  - 字符串 strint
  - 数字 number
  - 布尔 boolean
  - 空 null (用于清空变量)
  - 未定义 undefined (不含有值)
  - symbol (独一无二的值)
- 引用数据类型 (对象类型)
  - 对象 object
  - 数组 array
  - 函数 function
  - 正则 regExp
  - 日期 date

```js
typeof "Lazy"					// string
typeof 3.14						// number
typeof false					// boolean
typeof [1, 3]					// object
typeof {name: "Lazy", age: 12}	// object
typeof NaN						// number
typeof undefined				// undefined
typeof null						// object
```

**数组**

```js
var arr = new Array();			// 不需要指定大小
arr[0] = "Hello";				// 数组元素可以非数
```

**对象**

```js
var person = {
    fisrtName: "John",
    lastName: "Doe",
    id: 9527,
    fullName: function() {
        return this.firstName + " " + this.lastName;
    }	// 注意对象方法的定义与函数有所区别; this "指针" 用 . 而非 ->
};	// 分号是可选的

var name = person.firstName;	// 属性寻址
name = person["lastName"];		// 另一方式
name = null;					// 清空变量

name = person.fullName();		// 获取返回值
name = person.fullName;			// 获取函数定义
```

**声明变量类型**

```html
var w = new Boolean;
var a = new Array;
var r = new String;
var m = new object
var a = new Number;
```

局部变量, 全局变量, 生存期

```js
var var1 = 1;				// 不可配置全局属性
var2 = 2;					// 未声明, 可配置全局属性

console.log(this.var1);		// 1
console.log(window.var1);	// 1
console.log(window.var2);	// 2

delete var1;				// false 无法删除
console.log(var1);			// 1

delete var2;				// 可删除
console.log(delete var2);	// true
```

**作用域**

```js
var var1 = 1;		// 全局变量
var2 = 2;			// 可配置全局属性的全局变量
// 可调用: var1, var2, var4
// 不可调用: var3

function fun() {
    var var3 = 3;	// 局部变量
    var4 = 4;		// 全局变量
    // 可调用以上所有变量
}
```

- 变量在声明时初始化.
- 全局变量是 window 对象.
- 所有数据变量都属于 window 对象.
- 全局变量和函数, 可以覆盖 window 对象的变量和函数.
- 局部变量和 window 对象可以覆盖全局变量和函数.
- 变量声明时如果不适用 var 关键字, 那么它就是全局变量 (即使在函数内定义)

**HTML 事件**

- 格式

```html
<some-html-element some-event='JavaScript Code'></some-html-element>
```

- 修改标签的内容

```html
<button onclick="getElementById('demo').innerHTML=Date()">
    现在的时间是?
</button>
<p id="demo"></p>
```

- 修改自身元素的内容

```html
<button onclick="this.innerHTML=Date()">
    现在的时间是?
</button>
```

- 调用常用函数

```html
<button onclick="displayDate()">
    现在的时间是?
</button>
```

| HTML 事件   | 描述               |
| ----------- | ------------------ |
| onchange    | HTML 元素改变      |
| onclick     | 用户点击 HTML 元素 |
| onmouseover | 鼠标指针移到元素上 |
| onmouseout  | 鼠标指针从元素移开 |
| onkeydown   | 用户按下键盘按键   |
| onload      | 已完成页面的加载   |

**字符串**

```js
var str = "Hello";					// 类型是字符串
var str2 = new String("Hello");		// 类型是对象
// 上述两种都可以, 但不建议创建 String 对象, 因为执行慢, 还有其它副作用.
// str 不等于 str2, 因为类型不同

var len = str.length;	// 获取长度
var ch = str[2];		// 从 0 开始

var ans1 = "He is 'Alex'";		// 双引号内单引号
var ans2 = 'He is "Alex"';		// 单引号内双引号
var ans3 = "He is \"Alex\"";	// 或者直接转义

ans3 = ans1 + ans2;
```

**转义字符**

```js
\'
\"
\\		// 反斜杠
\n		// 换行
\r		// 回车
\t		// 制表符
\b		// 退格符
\f		// 换页符
```

| 字符串的方法        | 描述                                                         |
| :------------------ | :----------------------------------------------------------- |
| charAt()            | 返回指定索引位置的字符                                       |
| charCodeAt()        | 返回指定索引位置字符的 Unicode 值                            |
| concat()            | 连接两个或多个字符串，返回连接后的字符串                     |
| fromCharCode()      | 将 Unicode 转换为字符串                                      |
| indexOf()           | 返回字符串中检索指定字符第一次出现的位置                     |
| lastIndexOf()       | 返回字符串中检索指定字符最后一次出现的位置                   |
| localeCompare()     | 用本地特定的顺序来比较两个字符串                             |
| match()             | 找到一个或多个正则表达式的匹配                               |
| replace()           | 替换与正则表达式匹配的子串                                   |
| search()            | 检索与正则表达式相匹配的值                                   |
| slice()             | 提取字符串的片断，并在新的字符串中返回被提取的部分           |
| split()             | 把字符串分割为子字符串数组                                   |
| substr()            | 从起始索引号提取字符串中指定数目的字符                       |
| substring()         | 提取字符串中两个指定的索引号之间的字符                       |
| toLocaleLowerCase() | 根据主机的语言环境把字符串转换为小写，只有几种语言（如土耳其语）具有地方特有的大小写映射 |
| toLocaleUpperCase() | 根据主机的语言环境把字符串转换为大写，只有几种语言（如土耳其语）具有地方特有的大小写映射 |
| toLowerCase()       | 把字符串转换为小写                                           |
| toString()          | 返回字符串对象值                                             |
| toUpperCase()       | 把字符串转换为大写                                           |
| trim()              | 移除字符串首尾空白                                           |
| valueOf()           | 返回某个字符串对象的原始值                                   |

**运算符**

- 用 % 取模
- 有自增 ++ 和自减 --
- 有 += 等赋值运算符.

**比较运算符**

```js
var x = 1;

x == 1;		// true
x == '1';	// true
x == 2;		// false

x === 1;	// true
x === "1";	// fase

x != 1;		// false
x != '1';	// false

x !== 1;	// false
x != '1';	// true
```

**逻辑运算符**

```js
w1 && w2;
w1 || w2;
!w;
```

**条件运算符**

```js
variable = condition ? value1 : value2;
```

**undefined 和 null 的区别**

```js
typeof undefined		// undefined
typeof null				// object
null === undefined		// false
null == undefined		// true
```

**constructor 属性**

```html
<script>
document.getElementById("demo").innerHTML = 
    "john".constructor + "<br>" +
    // 返回 function String() { [native code] }
    (3.14).constructor + "<br>" +
    false.constructor + "<br>" +
    [1,2,3,4].constructor + "<br>" +
    {name:'john', age:34}.constructor + "<br>" +
    new Date().constructor + "<br>" +
    function () {}.constructor;
</script>
```

**查看对象数据类型**

```js
function isArray(myArray) {
    return myArray.constructor.toString().indexOf("Array") > -1;
}	// 是否为数组
```

**类型转换**

```js
String(x)
String(123 + 321)
String(false)			// 返回 "false"

x.toString()
(123).toString()
true.toString()			// 返回 "true"

str.toExponential()		// 转为科学计数法
str.toFixed()			// 小数点后有效位
str.toPrecision()		// 指定为有效位数

Date()	// 返回 Mon Nov 07 2022 19:23:17 GMT+0800 (中国标准时间)
str = String(new Date())		// 同上
str = (new Date()).toString()	// 同上
```

[**正则表达式**](https://www.runoob.com/js/js-regexp.html)

```js
var str = "Hello world";
var n = str.search(/world/i);			// 返回 6; 不区分大小写
var txt = str.replace(/world/i, "JS");	// 不区分大小写的替换
```

RegExp 对象时一个预定义了属性和方法的正则表达式对象.

**test()**

```js
var patt = /e/;
patt.test("Hello");		// true
/e/.test("world");		// false
/e/.exec("Hello");		// 返回一个数组用于存放匹配的结果. 如没有, 则返回 null
```

**错误检查**

```js
function myFunction() {
    var message = document.getElementById("p1");
    message.innerHTML = "";
    var x = document.getElementById("demo").value;
    try {
        if (x == "") throw "空字符串";
        if (isNaN(x)) throw "非数";
    } catch(err) {
        message.innerHTML = "错误: " + err + ".";
    } finally {
        document.getElementById("demo").value = "";
    }
}
```

**调试**

- 浏览器调试工具: Fn + F12

  console.log(x);

- 设置断点.

- debugger 关键字

  ```js
  ...
  debugger;	// 与设置断点的效果相同
  ...
  ```

**声明提升**

变量或函数都可以先使用后声明. (即声明提升)

但是初始化不会提升.

**严格模式**

"use strict" 值允许出现在脚本或函数的开头.

```js
a = 1;			// 不报错
"use strict";	// 严格模式
x = 3.14;		// 报错 (x 未定义)

// 不允许删除变量
var y = 1;
delete y;		// 报错

// 不允许删除函数
function fun() {}
delete fun;		// 报错

// 不允许使用八进制
var x = 010;	// 报错

// 不允许使用转义字符
var x = \010;	// 报错

// 不允许删除一个不允许删除的属性
delete Object.prototype;	// 报错

// 变量名不能使用 eval
var eval = 3.14;	// 报错

with (Math){x = cos(2)};	// 报错

// eval() 创建的变量不能被调用
eval ("var x = 2");
alert(x);		// 报错
```

使用构造函数时, 如果未加 new, 则会默认为全局对象. 而使用严格模式时, 会直接报错, 并且禁止 this 关键字指向全局对象.

```js
function f() {
    return !this;
} // this 指向全局对象, 故返回全局对象

function f() {
    "use strict";
    return !this;
} // 返回 true, 因为严格模式下 this 的值为 undefined

function f2() {
    "use strict";
    this.a = 1;
}
f2();	// 报错, 因为 this 未定义
```

保留关键字: implements, interface, let, package, private, protected, public, static, yield.

**注意事项与常见错误**

- switch 语句中使用恒等计算符 `===` 进行比较.

- `0.1 + 0.2 == 0.3` 返回 `false`.

  [JavaScript 中精度问题以及解决方案 | 菜鸟教程 (runoob.com)](https://www.runoob.com/w3cnote/js-precision-problem-and-solution.html)

- 数字使用==数字==索引, 但对象可以使用==名字==作为索引.

  当对象使用名字作为索引时, JavaScript 会把数组重新定义为标准对象, 此时<u>不能使用数组的方法与属性</u>.

  ```js
  var person = [];
  person["name"] = "John";
  person["age"] = 32;
  var n = person.length;		// 返回 0
  var y = person[0];			// 返回 undefined
  ```

- 测试对象是否存在

  ```js
  if (typeof(x) !== "undefined" && x !== null) ;
  // 注意这两个顺序不能改变, 否则未定义时判断后者会抛出错误.
  ```

- 代码块的作用域==都是全局的==

  ```js
  for (var i = 0; i < 10; ++i);
  return i;	// 返回 10
  ```

**表单**

```js
// 验证表单
function validateForm() {
    var x = document.forms["myForm"]["fname"].value;
    if (x == null || x == "") {
        alert("为空!");
        return false;
    }
}
```

```html
<form name="myForm" action="demo_form.php" onsubmit="return validateForm()" method="post">
    名字: <input type="text" name="fname">
    <input type="submit" value="提交">
</form>
```

[JHTML 约束验证](https://www.runoob.com/js/js-validation.html)

**表单验证**

- E-mail 验证

```js
function validateForm() {
    var x = document.forms["myForm"]["email"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
        alert("无效地址");
        return false;
    }
}
```

```html
<form name="myForm" action="demo-form.php" onsubmit="return validateForm();" method="post">
    Email: <input type="text" name="email">
    <input type="submit" value="提交">
</form>
```

[约束验证 DOM 方法](https://www.runoob.com/js/js-validation-api.html)

- checkValidity() 检查 input 元素中的数据是否合法
- setCustomValidity() 

```html
<input id="id1" type="number" min="100" max="300" required>
<button onclick="myFunction()">
    验证
</button>
<p id="demo"></p>

<script>
	function myFunction() {
        var inpObj = document.getElementById("id1");
        if (inpObj.checkValidity() == false) {
            document.getElementById("demo").innerHTML = inp.validationMessage;
        }
    }
</script>
```

[保留关键字](https://www.runoob.com/js/js-reserved.html)

**this 关键字**

```js
var person = {
    firstName: "Max",
    lastName: "Park",
    fullName: function() {
        return this.firstName + " " + this.lastName;
    }
    fun: function() {
        return this;	// 这里 this 是 person 对象
    }
};
```

**单独使用 this**

```js
var x = this;
"use strict";
var y = this;	// 这里 x 和 y 都是 [object Window]
```

**函数中使用 this**

```js
function fun1() {
    return this;	// 即 [object Window]
}

function fun2() {
    "use strict";
    return this;	// 此时为 undefined
}
```

**事件中的 this**

```html
<button onclick="this.style.display='none'">
    点击后按钮消失
</button>
```

**显示函数的绑定**

```js
var person1 = {
    fullName: function() {
        return this.firstName + " " + this.lastName;
    }
}
var person2 = {
    firstName: "Max",
    lastName: "Park",
}
person1.fullName.call(person2);		// 返回 "Max Park"
```

**块级作用域**

- 注意代码块中使用 var 和 let 的作用域不同.
- let 无变量提升.

```js
var a = "qwq";	// 可以使用 window.a 访问
let a = "qwq";	// 不可使用 window.a 访问

// 代码块中的变量
var x = 0;		// 此时 x 为 0
{
    var x = 1;	// 全局的
    let y = 2;	// 局部的
}				// 此时 x 为 1

// for 循环中的变量
var i = 5;
for (let i = 0; i < 10; ++i);	// 之后 i 为 10

let i = 5;
for (let i = 0; i < 10; ++i);	// 之后 i 为 5

// 函数中的变量
function fun() {
    var a = "www";	// 局部
}
function fun() {
    let a = "www";	// 全局
}

// 重置变量
var x = 1;
var x = 2;	// 合法
let x = 3;	// 不合法
{
    let x = 3;	// 合法
    var x = 4;	// 不合法
}
```

**const 关键词**

```js
var x = 10;
{
    const x = 2;	// 合法; 局部作用域
}

// 常对象可变
const car = {
    type: "Fiat",
    model: "500",
}
car.model = "499";	// 修改属性
car.color = "red";	// 增加属性
car = {
    type: "toy";	// 非法
} // 不可以重新赋值!

// 常数组可变
const color = ["red", "yellow", "blue"];
color[0] = "green";		// 修改元素
color.push("black");	// 添加元素
color = ["red", "yellow", "blue"];	// 非法!
```

**冻结变量**

```js
const obj = {info: "immutable"};
Object.freeze(obj);		// 返回被冻结的对象
```

**JSON**	(JavaScript Object Notation)

```json
{"sites":[
    {"name":"Runoob", "url":"www.runoob.com"}, 
    {"name":"Google", "url":"www.google.com"},
    {"name":"Taobao", "url":"www.taobao.com"}
]}
```

- 数据为 键/值 对.
- 数据由逗号分隔.
- 大括号保存对象.
- 方括号保存数组.

```js
var text = '{ "sites" : [' +
'{ "name":"Runoob" , "url":"www.runoob.com" },' +
'{ "name":"Google" , "url":"www.google.com" },' +
'{ "name":"Taobao" , "url":"www.taobao.com" } ]}';

obj = JSON.parse(text);
document.getElementById("demo").innerHTML = obj.sites[1].name + " " + obj.sites[1].url;
```

| 函数               | 描述                               |
| ------------------ | ---------------------------------- |
| `JSON.parse()`     | 将 JSON 字符串转为 JavaScript 对象 |
| `JSON.stringify()` | 将 JavaScript 值转为 JSON 字符串   |

**void**

```js
void func()
javascript: void func()		// 指定要计算一个表达式但是不返回值

// 或者这样
void(func())
javascript: void(func())
```

```html
<a href="javascript:void(0)">点击后无效果</a>
<a href="javascript:void(alert('Warning!!!'))">点击后警告</a>
```

```js
var a = void ( b = 5, c = 7 );	// a 为 undefined
```

**网页内的超链接**

```html
<a href="#pos">点击后定位至指定位置</a>
<p id="pos">定位点</p>
```

**异步编程**

```js
function print() {
    document.getElementById("demo").innerHTML = "Hello";
} // 回调函数
setTimeout(print, 3000);	// 子线程等待 3 秒后执行回调函数

// 或者
setTimeout(function() {
    // something
}, 3000);
```

**异步 AJAX**

```js
var xhr = new XMLHttpRequest();

xhr.onload = function() {
    // 输出接收到的文字数据
    document.getElementById("demo").innerHTML = xhr.reponseText;
}

xhr.onerror = function() {
    document.getElementById("demo").innerHTML = "请求出错";
}

// 发送异步 GET 请求
xhr.open("GET", "https://www.cubing.com", true);
xhr.send();
```

**Promise**

- 不用 Promise (函数瀑布)

```js
setTimeout(function() {
    console.log("First");
    setTimeout(function() {
        console.log("Second");
        setTimeout(function() {
            console.log("Third");
        }, 3000)
    }, 2000)
}, 1000)
```

- 使用 Promise

```js
new Promise(function (resolve, reject) {
    setTimeout(function () {
        conold.log("First");
        resolve();
    }, 1000);
}).then(function () {
    return new Promise(function (resolve, reject) {
        setTimeout(function () {
            console.log("Second");
            resolve();
        }, 2000);
    })
}).then(function () {
    setTimeout(function () {
        console.log("Third");
    }, 3000);
});
```

- 另一种写法

```js
function print(delay, message) {
    return new Promise(function (resolve,reject) {
        setTimeout(function () {
            console.log(message);
            resolve();
        }, delay());
    });
}

print(1000, "First").then(function () {
    return print(2000, "Second");
}).then(function () {
    print(3000, "Third");
});
```

- 以下示例中包含了 then, catch 和 finally 三个方法

```js
new Promise(function (resolve, reject) {
    var a = 0;
    var b = 1;
    if (b == 0) reject("Divide zero");
    else resolve(a / b);
}).then(function (value) {
    console.log("a / b = " + value);
}).catch(function (err) {
    console.log(err);
}).finally(function () {
    console.log("End");
});
```

**代码规范**

载入外部 JavaScript 文件 (使用小写文件名)

```html
<script src="myscript.js"></script>
```

**函数表达式**

```js
var fun = function(a, b) {
    return a * b;
}	// 可以将函数存储在变量中 (匿名函数)
var z = fun(3, 2);

// 或者使用构造函数
var fun = new Function(a, b) {
    return a * b;
}
```

- 函数提升 (Hoisting)

**自调用函数**

```js
(function () {
    var x = "Hello!";
})();	// 匿名的自调用函数
```

**函数是对象**

```js
function fun(a, b) {
    return a * b;
}

var txt = fun.toString();	// 将函数作为一个字符串返回
```

**箭头函数**

```js
(para1, para2, ..., paraN) => {statement;}
(para1, para2, ..., paraN) => statement;
para1 => {statement;}	// 括号是可选的
() => {statement;}
```

箭头函数示例

```js
const fun = (x, y) => x * y;	// 使用 const 更加安全
```

- 箭头函数不能提升
- 如果函数部分只有一个语句, 则可以省略 return 和大括号.

**默认参数**

```js
function fun(x, y) {
    y ||= 0;	// 如果函数在调用时未提供隐式参数, 则会默认设置为 undefined, 此时像这样设置一个默认值.
}

function fun(x, y = 10) {
    // ES6 以上可以自带参数
}
```

**arguments 对象**

```js
x = findMax(1, 3, 2, 5, 4);

function findMax() {
    var max = arguments[0];
    if (arguments.length < 2)
        return max;
    for (var i = 0; i < arguments.length; ++i) {
        if (arguments[i] > max) {
            max = arguments[i];
        }
    }
    return max;
}
```

**函数调用**

1. 作为一个函数调用

```js
function fun(a, b) {
    return a * b;
}
fun(3, 2);
window.fun(3, 2);

function fun2() {
    return this;	// 返回 window 对象
}
```

2. 函数作为方法调用

```js
var person = {
    firstName: "Max",
    lastName: "Park",
    fullName: function () {
        return this.firstName + " " + this.lastName;
    }
    fun: function() {
        return this;
    }
}
person.fullName();	// 返回 "Max Park"
person.fun();		// 返回 person 对象
```

3. 使用构造函数调用函数

```js
function fun(arg1, arg2) {
    this.firstName = arg1;
    this.lastName = arg2;
}
var x = new fun("Max", "Park");
x.firstName;	// 返回 "Max"
```

4. 作为函数方法调用函数

```js
function fun(a, b) {
    return a * b;
}
obj = fun.call(obj, 3, 2);	// 返回 6
arr = [3, 2];
product = fun.apply(product, arr);	// 返回 6
									// 注意这里用的是 apply
```

**内嵌函数与闭包**	一种保护私有变量的机制. (形成一个不销毁的栈环境)

```js
// 计数问题
var add = (function () {
    var counter = 0;	// 只执行一次
    return function () {return ++counter;}
})
add();
```

看到这里了: [JavaScript 类(class) | 菜鸟教程 (runoob.com)](https://www.runoob.com/js/js-class-intro.html)





























示例 1

```html
<head>
	<sript>
		function displayDate() {
			document.getElementById("demo").innerHTML=Date();
		}
	</sript>
</head>

<body>
	<p id="demo">将在这里显示日期</p>
    <button type="button" onclick="displayDate()">
        显示日期
    </button>
</body>
```







