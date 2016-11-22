<h1 align="center">方便使用的代码库管理小项目-- manlib</h1>
miaogx@yeah.net
2016-10-07 17:15

##【版本】
----
* v0.0.1，2016-10-07，新增。发布初始版本。

<h2 name="1">1 概述</h2>
manlib 是一个整理代码库的小项目, 由两部分组成: 第一部分--manlib, 作为vim的插件存
在, 第二部分--manlibs, 他就是一个按照固定规则的源码目录. 本项目是第一部分--manlib. 

<h2 name="2">2 安装</h2>
安装它和安装vim其他插件是一样的, 如下介绍两种安装方式:
* 如果你的vim没有采用bundle的方式去管理插件, 你需要克隆此项目文件，然后将doc里面的manlib.txt放入~/.vim/doc中, 将pulgin里面的manlib.vim放入~/.vim/pulgin中即可.
* 如果你的vim采用的bundle的方式去管理插件, 那你只需要直接git clone即可.
```
$ cd ~/.vim/bundle
$ git clone https://github.com/xiaomiao22/manlib.git
```

<h2 name="3">3 配置</h2>
接下来你还需要进行简单的配置, 在配置之前你得首先具有代码库, 你可以通过如下步骤来建立一个代码库.
```
$ cd ~
$ mkdir -p manlibs/src 
$ touch manlib/index
```
以后你可以将代码组织进src目录, 还可以在index形成代码的文件索引. 当然, 你每次可能都要执行ctags -R来在manlibs目录下更新索引.

然后你可以在vim的配置文件进行如下配置:
```
$ vim ~/.vimrc 
```
```
let g:manlib_path = "/home/xiaomiao/manlibs"
source /home/xiaomiao/.vim/bundle/manlib/pulgin/manlib.vim

```
大功告成


<h2 name="4">4 使用</h2>
manlib共有5个命令, 做简单的介绍:
* :Manhelp {word}
    查看帮助.

* :Mantag {word}
    查看代码库中的tag标签.

* :Manfile {word}
    直接打开代码库中的文件.

* :Manindex {word}
    打开代码库中的索引文件, 可以通过gf等vim命令进行跳转.

* :Manlib {word}
	暂未使用, 留以备用.

* \<C-m\>i 
	通过快捷键的方式直接打开索引文件

<h2 name="5">5 其他</h2>
* 可以参考我的代码库:manlibs
* 分享是快乐的, 期待与你一起完善学习工作笔记, 我的邮箱: miaogx@yeah.net
* 借鉴是必要的, 但是期望你在每个笔记文档的结束处注明引用出处
