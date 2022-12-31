# AutoHotKey



Hotkeys

```
^j::
Send, My First Script
return
```

Hotstrings

```
::ftw::Free the whales
```

Hotstrings without needing an ending character.

```
:*:btw::by the way
```

Multiple lines

```
Send,
(
Line 1
Line 2
)
```

Running programs & website

```
Run, %A_ProgramFiles%\Some_Program\Program.exe
Run, https://www.autohotkey.com
Run, notepad.exe
```

Commands & Functions

```
; These are commands:
MsgBox, This is some text.
StringReplace, Output, Input, AutoHotKey, AutoHotkey, All
SendInput, This is awesome{!}{!}{!}

; These are functions:
SubStr("I'm scripting, awesome!", 16)
FileExist(VariableContainingPath)
Output := SubStr("I'm scripting, awesome!", 16)
```

Code blocks

```
if (MyVar = %Var2%)
{
    MsgBox, MyVar equals %MyVar%!!
    ExitApp
}
```

Variables

```
MyVar = Text
MyVar = %MyVar2%
MyVar = %MyVar2% some text %MyVar3%.

MyVar := "Text"
MyVar := MyVar2
MyVar := 6 + 8 / 3 * 2 - Sqrt(9)
MyVar := "The value of 5 + " MyVar2 " is: " 5 + MyVar2
```

Objects

```
MyObject := ["one", "two", "three", 17] ;nmubered from 1 and up
Banana := {"Color": "Yellow", "Taste": "Delicious", "Price": 3}
MyObject := Array("one", "two", "three", 17)
Banana := Object("Color", "Yellow", "Taste", "Delicious", "Price", 3)
```





Examples

```
^j::
MsgBox, Wow!
MsgBox, There are
Run, notepad.exe
WinActivate, Untitled - Notepad
WinWaitActive, Untitled - Notepad
Send, 7 lines{!}{Enter}
SendInput, inside the CTRL{+}J hotkey.
return
```



Hotkey Modifer Symbols

| Symbol | Description                    | Symbol | Description                       |
| ------ | ------------------------------ | ------ | --------------------------------- |
| #      | `Win`                          | !      | `Alt`                             |
| ^      | `Ctrl`                         | +      | `Shift`                           |
| <      | e.g. <! $\Leftrightarrow$ LAlt | >      | e.g. >! $\Leftrightarrow$ RAlt    |
| <^>!   | `AltGr`                        | &      |                                   |
| *      | Wildcard                       | $\sim$ | Remain key's native function      |
| $      |                                | Up     | e.g. *LWin Up::send {LControl up} |





参考

[(8 封私信 / 80 条消息) autohotkey 输入法问题？ - 知乎 (zhihu.com)](https://www.zhihu.com/question/49152431)

[autohotkey v2 实现自动切换输入法,添加输入法切换快捷键 - 简书 (jianshu.com)](https://www.jianshu.com/p/c1b412c25712)

[[基础\] AHK 中循环的基本用法 - 简书 (jianshu.com)](https://www.jianshu.com/p/164ce8b4d8c1)













