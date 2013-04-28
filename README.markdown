`yum install ctags`

查看运行时路径

`:set runtimepath`

生成帮助文档

```
:Helptags

:h snipMate
```

NERDCommenter 注释或取消

`\c<space>`

分屏显示

```
Ctrl+K  分竖屏

Ctrl+J  分横屏
```

fuzzyfinder设置不列入筛选的文件

`:h g:fuf_coveragefile_exclude@en`

vim选中多行，并且复制粘贴

```
方式一：
按下v键，进入VISUAL模式下，通过<UP>或<DOWN>选中内容；
yy键复制选中内容，p键粘贴至目标处
方式二：
nyy
如9yy，拷贝从当前行开始往下的9条数据
```

----- Vim代码缩进设置 -----

与自动缩进相关的变量表
```
    变量名              缩进                              含义
(no)autoindent          ai          自动缩进，即为新行自动添加与当前行同等的缩进。
(no)cindent             ci          类似C语言程序的缩进
(no)smartindent         si          基于autoindent的一些改进
```
---------------------------
