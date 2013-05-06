" 设定文件浏览器目录为当前目录
set bsdir=buffer

" 设置编码  
set enc=utf-8

" 设置文件编码  
set fenc=utf-8  

" 设置文件编码检测类型及支持格式  
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936  

" 设置开启语法高亮  
syntax on  

" 显示行号  
set number  

" 查找结果高亮度显示  
set hlsearch

" 忽略大小写敏感
set ignorecase

" 缩进
filetype indent on
filetype plugin indent on
autocmd FileType html setlocal tabstop=2 shiftwidth=2   " setlocal: 只对当前buffer有效
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2   " setlocal: 只对当前buffer有效
"自动将tab转成空格
set expandtab
" 每层缩进空格数
set shiftwidth=2
" 设置expandtab后，每次退格删除空格数
set softtabstop=4

" 开启文件类型插件，在万能补齐时使用
filetype plugin on

" 配色方案，查看colors目录下
colorscheme github

" pathogen 配置
execute pathogen#infect()

" 把 F8 映射到 启动NERDTree插件  
map <F8> :NERDTree<cr>

" 把<F9>映射到 启动CtrlP插件
let g:ctrlp_map='<F9>'
" 缺省竖屏打开CtrlP的文件
let g:ctrlp_open_multiple_files='v'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore={'dir':'\v[\/]\.(git)$','file':'\v\.(log|jpg|png|jpeg)$'}

" 自定义插入文档创建时间，cdate<space>
ia cdate <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>
" 输出当前文件名
ia filename <c-r>%<cr>

" 设置注释行颜色
hi Comment ctermfg=6
