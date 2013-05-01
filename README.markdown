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

#### Vim代码缩进设置

###### 与自动缩进相关的变量表
```
    变量名              缩进                              含义
(no)autoindent          ai          自动缩进，即为新行自动添加与当前行同等的缩进
(no)cindent             ci          类似C语言程序的缩进
(no)smartindent         si          基于autoindent的一些改进
```

###### 与TAB相关的变量表
```
    变量名              缩进                              含义
tabstop=X               ts          编辑时一个TAB字符占多少个空格的位置
shiftwidth=X            sw          使用每层缩进的空格数
(no)expandtab           (no)et      是否将输入的TAB自动展开成空格
softtabstop=X           sts         开启et后，每次退格(backspace)删除X个空格
(no)smarttab            (no)sta     开启时，在行首按TAB将加入sw个空格，否则加入ts个空格
```

#### Vim代码缩进

```
zf+4j   折叠当前行后面的4行代码(日常操作中难以使用)
zd    删除折叠

zf+%	折叠闭包内容，如{code...}

按v进入可视模式下，选中行，然后按zf进行折叠

zk	跳到上一个折叠位置，貌似没效果
zj	跳到下一个折叠位置

zo	打开折叠
zc	关闭折叠

多层折叠中常用快捷键

zr	打开同一级别所有折叠
zm	合上同一级别所有折叠

zR	打开所有折叠级别
zM	关闭所有的折叠级别

:mkview	保持当前的折叠设置
:loadview	重新打开后，重新折叠设置

自动折叠方式
:set foldmethod=indent
```

#### 文件自动补齐

```
vi .vimrc

" 忽略大小写，ignorecase
set ic
" 设置常用单词的词典
set dictionary+=/usr/share/dict/words
map ,ss :setlocal spell!<cr>
" 开启文件类型插件，代码万能补齐
filetype plugin on
" 自定义插入文档创建时间，cdate<space>
ia cdate <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>

英文单词的联想和补全功能: Ctrl+x Ctrl+k

单词拼写检查
:set spell

修正错误单词: Ctrl+x s    (必须打开单词拼写检查)

Ctrl+x f 编辑模式下，跳出文件路径选中

Ctrl+n 补全当前文件中已存在的单词

联想补齐全行:

输入首字母，Ctrl+x l

:h i_CTRL-@	查看编辑模块下，快捷键的文档

Ctrl+x o	文件万能补全，vi需设置filetype plugin on

:h new-omni-completion	查看万能补全文档
```

buffers操作
```
:h buffers

:vs [filename]    竖屏

:ls 查看缓冲区

:b [n] 查看ls出来的buffer缓冲区

:bd	# buffer delete. 关闭缓冲区

:tabnew [tab_name]	# 新建标签
:tabclose		# 关闭标签
:tabNext		# 标签跳转

.vimrc
set laststatus=2	# 随时随地显示状态栏
set statusline=%F:\ %l	# 状态栏格式：%F - 当前文件名；%l - 当前的行号

:split [filename]	# 横屏载入新buffer

ctrlw w		# buffer之间切换
ctrlw +		# 扩大buffer窗口大小
ctrlw -		# 将当前buffer最大

ctrlw o		# 关闭所有其它buffer窗口

:set filetype	# 打印文件文件类型
:set ft
```
