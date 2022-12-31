# Git

设置 Git 用户名并查看

```
$ git config --global user.name "SleepCloudMX"
$ git config --global user.name
```

为每个仓库设置电子邮件地址并查看

```
$ git config --global user.email 1737484281@qq.com
$ git config --global user.email
```

从 github 下载源码 (文件夹):

```
$ git clone http://github.com/...
```

.git 文件夹包含了和版本管理有关的文件

打开自己的 (源代码) 文件夹, 右键空白处打开 Git 控制台, 输入以下命令则可生成 .git 文件夹用来管理即将新建的源代码文件夹.

```
$ git init
```

写完源代码后提交, 输入下述命令即可 (第一步是把文件加入暂存区 (index/stage), 其中 '.' 表示当前文件夹)

```
$ git add .
$ git commit -m "本次提交的备注"
```

恢复至最后一次提交的内容:

```
$ git checkout HEAD filename.py
```

提交某一个文件: (建议分开提交)

```
$ git add main.py
$ git commit -m "已完成 main.py"
```

---

创建新的分支 (以下不再写 `$`).

```
git branch <分支名>
```

切换到新的分支上. 或者可以使用 git switch

```
git checkout <name>
```

创建一个新的分支并切换到这个分支

```
git checkout -b <your-branch-name>
```

合并分支

```
git merge <name>
```

另一种方式

```
git rebase <name>
```

checkout 也可以用于节点名 (哈希值), 此时为指定 (查看) HEAD 指向.

```
git checkout <name>
```

查看 HEAD 指向

```
cat.git/HEAD
```

如果 HEAD 指向一个引用, 还可以用下面这个命令查看器指向.

```
git symbolic-ref HEAD
```

相对引用

- 使用 `^` 向上移动 1 个提交记录
- 使用 `~<num>` 向上移动多个提交记录，如 `~3`

例: (其中 main 分支名)

```
git checkout main^
git checkout main~
git checkout main~2
```

强制修改分支位置

```
git branch -f main HEAD~3
```

撤销变更, 其中 `git reset` 只在本地有用, `git revert` 对远程分支也有效, 并且效果为增加新提交, 且内容与处理的提交的父提交相同.

```
git reset HEAD~1
git revert HEAD
```

整理提交记录

```
git cherry-pick <提交号>...
```

e.g. (其中 C2 是哈希值, 实际长度为四十位, 这里为方便演示仅简写)

```
git cherry-pick C2
git cherry-pick C2 C4
git cherry-pick C2 C4 C5
```

整理顺序, 其中 `-i` 也可写作 `-interacitve`

```
git rebase -i HEAD~4
```

本地栈式提交

```
git rebase -i
git cherry-pick
```

在之前的提交记录进行调整.

```
git rebase -i
git commit --amend
git rebase -i
```

更好的做法是用 cherry-pick.

Git 标签 (tag), 不能在其上做 commit.

```
git tag v1 c1
```

之后可以使用 `git checkout v1 / c1` 切换至标签所在提交.

如果上述命令不加 `c1`, 则默认为 `HEAD`.

描述最近的 "锚点" (标签):

```
git describe <ref>
```

其中 `<ref>` 为分支名, 也可以是哈希值, 或标签.

其输出结果为

```
<tag>_<numCommits>_g<hash>
```

查找提交记录

```
git bisect
```

穿梭于提交树: ^[num], ~[num], e.g.

```
git checkout HEAD~^2~2
```







### 参考文献

[Pro Git（中文版） (oschina.net)](https://git.oschina.net/progit/)

http://learngitbranching.js.org/?locale=zh_CN

https://ohshitgit.com



### 心得技巧

加速器: UU, steam++.

不要本地删除 / 重命名文件; 在使用 rm / mv 等操作时加上 git.

SourceTree 可管理 git 代码.

在使用 rebase 时, 会连带该分支上先前的提交.



SleepCloudMX.github.io

https://github.com/SleepCloudMX/sleepcloud.github.io

可以去阿里云修改网站域名



Valine: 无后端评论系统.























