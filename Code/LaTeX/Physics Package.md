# Physics 宏包

[TOC]

---

### 各种括号

```latex
\qty( \frac{a}{b} )
\qty[ \frac{a}{b} ]
\qty| \frac{a}{b} |
\qty{ \frac{a}{b} }
```

$$
\qty( \frac{a}{b} )
\qty[ \frac{a}{b} ]
\qty| \frac{a}{b} |
\qty{ \frac{a}{b} }
\nonumber
$$

```latex
\pqty{ \frac{a}{b} }
\bqty{ \frac{a}{b} }
\vqty{ \frac{a}{b} }
\Bqty{ \frac{a}{b} }
```

$$
\pqty{ \frac{a}{b} }
\bqty{ \frac{a}{b} }
\vqty{ \frac{a}{b} }
\Bqty{ \frac{a}{b} }
\nonumber
$$

```latex
\abs{ \frac{a}{b} } \quad
\norm{ \frac{a}{b} } \quad
\eval( x |_0^\infty \quad
\eval[ x |_0^\infty \nonmuber
```

$$
\abs{ \frac{a}{b} } \quad
\norm{ \frac{a}{b} } \quad
\eval( x |_0^\infty \quad
\eval[ x |_0^\infty
\nonumber
$$

```latex
\order{x^2}
\comm{A}{B}
\comm\Big{A}{B}
\anticommutator{A}{B}
\poissonbracket\Big{A}{B}
```

$$
\order{x^2}
\comm{A}{B}
\comm\Big{A}{B}
\anticommutator{A}{B}
\poissonbracket\Big{A}{B}
\nonumber
$$

---

### 向量

```latex
\vb{a} ~ \vb*{a} ~ \vb*{\theta} \\
\va{a} ~ \va*{a} ~ \va*{\theta} \\
\vu{r} ~ \vu*{r} ~ \vu*{\theta} \\
\cdot \vdot \times \cross \cp
```

$$
\vb{a} ~ \vb*{a} ~ \vb*{\theta} \\
\va{a} ~ \va*{a} ~ \va*{\theta} \\
\vu{r} ~ \vu*{r} ~ \vu*{\theta} \\
\cdot \vdot \times \cross \cp
\nonumber
$$

---

### $\nabla$ 算子

```latex
\grad(\frac{f}{g}) \\
\div[ \vb*{A} ] \\
\curl{ \vb*{A} } \\
\laplacian{\Psi}
```

$$
\grad(\frac{f}{g}) \\
\div[ \vb*{A} ] \\
\curl{ \vb*{A} } \\
\laplacian{\Psi}
\nonumber
$$

---

### 正体算符

```latex
\sin x \quad
\sin^2x \quad
\sin[3](x) \nonumber
```

$$
\sin x \quad
\sin^2x \quad
\sin[3](x) \nonumber
$$

```latex
\exp(x) \quad
\log(x) \quad
\ln(x) \quad
\det(x) \quad
\Pr(x) \nonumber
```

$$
\exp(x) \quad
\log(x) \quad
\ln(x) \quad
\det(x) \quad
\Pr(x) \nonumber
$$

```latex
\tr{\vb{A}} \quad
\Tr{\vb{A}} \quad
\rank{\vb{A}} \nonumber
```

$$
\tr{\vb{A}} \quad
\Tr{\vb{A}} \quad
\rank{\vb{A}} \nonumber
$$

```latex
\Res{f(z)} \quad
\Re{z} \quad
\Im{z} \nonumber
```

$$
\Res{f(z)} \quad
\Re{z} \quad
\Im{z} \nonumber
$$

```latex
\pv{ \int f(z)\dd{z} } \quad
\PV{ \int f(z)\dd{z} } \nonumber
```

$$
\pv{ \int f(z)\dd{z} } \quad
\PV{ \int f(z)\dd{z} } \nonumber
$$

---

### 带铅空文本

```latex
f(x) \textup{function} f(x) \\
f(x) \qq{functoin} f(x) \\
f(x) \qq*{function} f(x) \\
```

$$
f(x) \textup{function} f(x) \\
f(x) \qq{functoin} f(x) \\
f(x) \qq*{function} f(x) \\
\nonumber
$$

---

### 特殊宏

```latex
f(x) \qcomma g(x) \\
f(x) \qif g(x) \\
\qthen \qelse \qgiven
```

$$
f(x) \qcomma g(x) \\
f(x) \qif g(x) \\
\qthen \qelse \qgiven
\nonumber
$$

---

### 导数

```latex
\dd[3]{x} \quad
\dd(\cos\theta)
```

$$
\dd[3]{x} \quad
\dd(\cos\theta)
\nonumber
$$

```latex
\dv*{y}{x} \quad
\dv[2]{x} (\dv[n]{y}{x})
```

$$
\dv*{y}{x} \quad
\dv[2]{x} (\dv[n]{y}{x})
\nonumber
$$

---

### 偏导

```latex
\pdv*{f}{x} \quad
\pdv{f}{x}{y} \nonumber
```

$$
\pdv*{f}{x} \quad
\pdv{f}{x}{y}
\nonumber
$$

---

### 泛函

```latex
\var{F[g(x)]} \quad
\var(E-TS) \nonumber
```

$$
\var{F[g(x)]} \quad
\var(E-TS) \nonumber
$$

```latex
\fdv*{F}{x} \quad
\fdv[2]{g} \quad
\fdv[3]{F}{g} \\
\fdv{V}(E-TS) \nonumber
```

$$
\fdv*{F}{x} \quad
\fdv[2]{g} \quad
\fdv[3]{F}{g}
\\
\fdv{V}(E-TS)
\nonumber
$$
