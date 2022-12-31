<h1 style="text-align:center;">HTML</h1>

[TOC]

# HTML 教程

文档后缀名 .html 或 .htm

[HTML 标签参考手册](https://www.runoob.com/tags/html-reference.html)

[HTML/CSS/JS 在线工具](https://c.runoob.com/front-end/61)

**HTML 编辑器**

- VS Code
- Sublime Text

**实例**

```html
<!DOCTYPE html>
<html>
    <head>
        <meta charset = "utf-8">
        <title>标题</title>
    </head>
    <body>
        <h1>
            一级标题
        </h1>
        <p>
            一个段落。
        </p>
    </body>
</html>
```

- HTML 标签、HTML 元素

- 只有 body 部分才会显示。

- doctype 声明和 HTML 标签都==不区分大小写==。

- 如果属性值中含有双引号，那么引用属性值时使用单引号。

- 属性和属性值对==大小写不敏感==

| 属性  | 描述                                                         |
| :---- | :----------------------------------------------------------- |
| class | 为html元素定义一个或多个类名（classname）(类名从样式文件引入) |
| id    | 定义元素的唯一id                                             |
| style | 规定元素的行内样式（inline style）                           |
| title | 描述了元素的额外信息 (作为工具条使用)                        |

当显示页面时，浏览器会==移除源代码中多余的空格和空行==。所有连续的空格或空行都会被算作一个空格。需要注意的是，HTML 代码中的所有连续的空行（换行）也被显示为一个空格。







### 图像

```html
<img src="C:/Users/lenovo/Pictures/QQ/warma_good.png" width="95" height="74" />
```

### 换行

```html
</br>
```

### 水平线

```html
<hr>
```

### 注释

```html
<!-- 注释 -->
```

### 字体

```html
<font size="6">6 号字体</font>
```

### 段落

```html
<p>一个段落</p>
<!-- 浏览器会自动在段落的前后添加空行 -->
```

### 文本格式化标签

```html
<b>粗体 bold</b>
<i>斜体 italic</i>
<strong>更常见的粗体标签</strong>
<em>更常见的斜体标签</em>
<small>小号字</small>
<sub>下标</sub>
<sup>上标</sup>
<ins>插入字</ins>
<del>删除字</del>
```

### “计算机输出”标签

```html
<code>int a = 1;</code>
<kbd>键盘码</kbd>
<samp>计算机代码样本</samp>
<var>定义变量：x</var>
<pre>定义预格式文本</pre>
```

### 引文、引用、标签定义

| 标签           | 描述               |
| :------------- | :----------------- |
| `<abbr>`       | 定义缩写           |
| `<address>`    | 定义地址           |
| `<bdo>`        | 定义文字方向       |
| `<blockquote>` | 定义长的引用       |
| `<q>`          | 定义短的引用语     |
| `<cite>`       | 定义引用、引证     |
| `<dfn>`        | 定义一个定义项目。 |

### 链接

```html
<a href="https://www.cubing.com/">粗饼网</a>
<a href="https://www.cubing.com/" target="_blank" rel="noopener noreferrer">粗饼网</a>

<a id="tips">提示</a>
<a href="#tips">访问提示</a>
<a href="***.com/html/html-links.html#tips">访问提示</a>
```

- 链接文本不一定是纯文本，图片或其它 HTML 元素都可以称为链接.
- 始终将正斜杠添加到子文件，即 `href="https://www.cubing.com/"` 而非 `href="https://www.cubing.com"`.



### HTML 头部 `<head>` 元素

可以添加在头部区域的元素标签为: <title>, <style>, <meta>, <link>, <script>, <noscript> 和 <base>

### HTML `<title>` 元素

- 定义了不同文档的标题。
- 在 HTML / XHTML 文档中是必须的。

- 定义了浏览器工具栏的标题。

- 当网页添加到收藏夹时，显示在收藏夹中的标题。
- 显示在搜索引擎结果页面的标题。

### HTML `<base>` 元素

标签描述了基本的链接地址/链接目标，该标签作为HTML文档中所有的链接标签的默认链接

```html
<head>
    <base href="https://www.cubing.com/" target="_blank">
</head>
```

### HTML `<link>` 元素

- 定义了文档与外部资源的关系，通常用于链接到样式表

```html
<head>
    <link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
```

### HTML `<style>` 元素

```html
<head>
<style type="text/css">
body {background-color:yellow}
p {color:blue}
</style>
</head>
```

### HTML `<meta>` 元素

- 为搜索引擎定义关键词:

```html
<meta name="keywords" content="HTML, CSS, XML, XHTML, JavaScript">
```

- 为网页定义描述内容:

```html
<meta name="description" content="免费 Web & 编程 教程">
```

- 定义网页作者:

```html
<meta name="author" content="Runoob">
```

- 每30秒钟刷新当前页面:

```html
<meta http-equiv="refresh" content="30">
```

### HTML `<script>` 元素

- 用于加载脚本文件，如： JavaScript



### 内联样式

```html
<p style="color:blue;margin-left:20px;">
    一个段落.
</p>
```

### 背景颜色

```html
<body style="background-color:yellow;">
    <h2 style="background-color:red;">
        一个标题
    </h2>
    <p style="background-color:green;">
        一个段落.
    </p>
</body>
```

### 字体设置

```html
<h1 style="font-family:verdana;">
    一个标题
</h1>
<p style="font-family:arial;color:red;font-size:20px;">
    一个段落。
</p>
```

### 对齐方式

```html
<h1 style="text-align:center;">
    居中对齐的标题
</h1>
```

### 内部样式表

```html
<head>
    <style type="text/css">
        body{background-color:yellow;}
        p{color:blue;}
    </style>
</head>
```

### 外部样式表

```html
<head>
    <link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
```

### 引入外部标签

```html
<link rel="stylesheet" href="标签路径">
<!-- 上面这种方式使用最多, 稳定 -->
<style>
@import url("标签路径")
</style>
```

### 图像

```html
<img src="url" alt="some_text" width="304" height="228">
```

除了定义图像, 还可以定义图像地图: `<map>` 和 `<area>`.

```html
<map name="planetmap">
  <area shape="rect" coords="0,0,82,126" alt="Sun" href="sun.htm">
  <area shape="circle" coords="90,58,3" alt="Mercury" href="mercur.htm">
  <area shape="circle" coords="124,58,8" alt="Venus" href="venus.htm">
</map>
```

```html
<area shape="rect" coords="x1,y1,x2,y2" href=url>
<area shape="circle" coords="x1,y1,r" href=url>
<area shape="poly" coords="x1,y1,x2,y2......" href=url>
```

### 表格

```html
<table border="1">
    <tr>
    	<th>Header 1</th>
        <th>Header 2</th>
    </tr>
    <tr>
        <td>11</td>
        <td>12</td>
        <td>13</td>
    </tr>
    <tr>
        <td>21</td>
        <td>22</td>
        <td>23</td>
    </tr>
</table>
```

<table border="1">
    <tr>
    	<th>Header 1</th>
        <th>Header 2</th>
    </tr>
    <tr>
        <td>11</td>
        <td>12</td>
        <td>13</td>
    </tr>
    <tr>
        <td>21</td>
        <td>22</td>
        <td>23</td>
    </tr>
</table>

### 表格标签

| 标签         | 描述         |
| ------------ | ------------ |
| `<table>`    | 表格         |
| `<th>`       | 表格的表头   |
| `<tr>`       | 表格的行     |
| `<td>`       | 表格单元     |
| `<caption>`  | 表格标题     |
| `<colgroup>` | 表格列的组   |
| `<col>`      | 表格列的属性 |
| `<thead>`    | 表格的页眉   |
| `<tbody>`    | 表格的主体   |
| `<tfoot>`    | 表格的页脚   |

### 无序列表

```html
<ul>
    <li>Coffee</li>
    <li>Milk</li>
</ul>
```

### 有序列表

```html
<ol>
    <li>Coffee</li>
    <li>Milk</li>
</ol>
```

### 自定义列表

```html
<dl>
    <dt>Coffee</dt>
    <dd>- black hot drink</dd>
    <dt>Milk</dt>
    <dd>- white cold drink</dd>
</dl>
```

- unordered lists
- list item
- ordered lists
- definition lists
- definition term
- definition description
- navigation lists
- table row
- table header cell
- table data cell

### 区块

区块元素 与 内联元素

- `<div>` 定义文档的区域, 块级 (block-level)

- `<span>` 用来组合文档中的行内元素, 内联元素 (inline)

### 表单

#### 输入元素

```html
<form action="">
First name: <input type="text" name="user"><br/>
Last name: <input type="password" name="password"><br/>
</form>
```

<form action="">
First name: <input type="text" name="user"><br/>
Last name: <input type="password" name="password"><br/>
</form>
#### 单选按钮

```html
<form action="">
    <input type="radio" name="sex" value="male">Male<br/>
    <input type="radio" name="sex" value="female">Female<br/>
</form>
```

<form action="">
    <input type="radio" name="sex" value="male">Male<br/>
    <input type="radio" name="sex" value="female">Female<br/>
</form>

#### 提交按钮

```html
<form name="input" action="html_form_action.php" method="get">
    Username: <input type="text" name="user">
    <input type="submit" value="Submit">
</form>
```

<form name="input" action="html_form_action.php" method="get">
    Username: <input type="text" name="user">
    <input type="submit" value="Submit">
</form>

### 框架

#### 设置宽与高

```html
<iframe loading="lazy" src="demo_iframe.html" width="200" height="200">
    
</iframe>
```

#### 移除边框

```html
<iframe src="demo_iframe.html" frameborder="0">
    
</iframe>
```

#### 显示链接页面

```html
<iframe src="demo_iframe.html" name="iframe_a">
    <p>
        <a href="https://www.cubing.com" target="iframe_a" rel="noopener">Cubing</a>
    </p>
</iframe>
```

### 脚本

Javascript

```html
<script>
	document.write("Hello world!");
    document.write("<p>A Paragraph</p>");
</script>
```

### 实体


















## 实例

```html
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"> 
<title>菜鸟教程(runoob.com)</title> 
<base href="http://www.runoob.com/images/" target="_blank">
</head>

<body>
<img src="logo.png"> - 注意这里我们设置了图片的相对地址。能正常显示是因为我们在 head 部分设置了 base 标签，该标签指定了页面上所有链接的默认 URL，所以该图片的访问地址为 "http://www.runoob.com/images/logo.png"
<br><br>
<a href="http://www.runoob.com">菜鸟教程</a> - 注意这个链接会在新窗口打开，即便它没有 target="_blank" 属性。因为在 base 标签里我们已经设置了 target 属性的值为 "_blank"。

</body>
</html>
```



```html
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"> 
<title>菜鸟教程(runoob.com)</title> 
<meta name="description" content="免费在线教程">
<meta name="keywords" content="HTML,CSS,XML,JavaScript">
<meta name="author" content="runoob">
</head>
<body>

<p>所有 meta 标签显示在 head 部分...</p>

</body>
</html>
```

### 使用 `<div>` 元素进行布局

```html
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>HTML 布局</title>
    </head>
    <body>
        <div id="container" style="width:500px">
            <div id="header" style="background-color:#FFA500";>
                <h1 style="margin-bottom:0;">
                    主要的网页标题
                </h1>
            </div>
            <div id="menu" style="background-color:#FFD700; height:200px; width:100px; float:left;">
                <b>菜单</b><br/>
                HTML<br/>
                CSS<br/>
                JavaScript<br/>
            </div>
            <div id="content" style="background-color:#EEEEEE; height:200px; width:400px; float:left;">
                内容.
            </div>
            <div id="footer" style="background-color:#FFA500; clear:both; text-align:center;">
                版权 © ***.com
            </div>
        </div>
    </body>
</html>
```

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>HTML 布局</title>
    </head>
    <body>
        <div id="container" style="width:500px">
            <div id="header" style="background-color:#FFA500";>
                <h1 style="margin-bottom:0;">
                    主要的网页标题
                </h1>
            </div>
            <div id="menu" style="background-color:#FFD700; height:200px; width:100px; float:left;">
                <b>菜单</b><br/>
                HTML<br/>
                CSS<br/>
                JavaScript<br/>
            </div>
            <div id="content" style="background-color:#EEEEEE; height:200px; width:400px; float:left;">
                内容.
            </div>
            <div id="footer" style="background-color:#FFA500; clear:both; text-align:center;">
                版权 © ***.com
            </div>
        </div>
    </body>
</html>



### 使用表格进行布局

```html
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>使用表格进行布局</title>
    </head>
    <body>
        <table width="500" border="0">
            <tr>
            	<td colspan="2" style="background-color:#FFA500">
                	<h1>
                        主要的网页标题
                    </h1>
                </td>
            </tr>
            <tr>
            	<td style="background-color:#FFD700; width:100px">
                	<b>菜单</b><br/>
                    HTML<br/>
                    CSS<br/>
                    JavaScript<br/>
                </td>
                <td style="background-color:#eeeeee; height:200px; width: 400px;">
                	内容.
                </td>
            </tr>
            <tr>
            	<td colspan="2" style="background-color:#FFA500; text-align:center;">
                	版权 © ***.com
                </td>
            </tr>
        </table>
    </body>
</html>
```

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>使用表格进行布局</title>
    </head>
    <body>
        <table width="500" border="0">
            <tr>
            	<td colspan="2" style="background-color:#FFA500">
                	<h1>
                        主要的网页标题
                    </h1>
                </td>
            </tr>
            <tr>
            	<td style="background-color:#FFD700; width:100px">
                	<b>菜单</b><br/>
                    HTML<br/>
                    CSS<br/>
                    JavaScript<br/>
                </td>
                <td style="background-color:#eeeeee; height:200px; width: 400px;">
                	内容.
                </td>
            </tr>
            <tr>
            	<td colspan="2" style="background-color:#FFA500; text-align:center;">
                	版权 © ***.com
                </td>
            </tr>
        </table>
    </body>
</html>





[HTML 教程 | 菜鸟教程 (runoob.com)](https://www.runoob.com/html/html-tutorial.html)

[CSS 教程 | 菜鸟教程 (runoob.com)](https://www.runoob.com/css/css-tutorial.html)

[JavaScript 教程 | 菜鸟教程 (runoob.com)](https://www.runoob.com/js/js-tutorial.html)

[SCSS 教程 - 简书 (jianshu.com)](https://www.jianshu.com/p/a99764ff3c41)









