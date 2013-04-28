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

" 缩进
filetype indent on
filetype plugin indent on
autocmd FileType html set tabstop=2

" 配色方案，查看colors目录下
colorscheme github

" pathogen 配置
execute pathogen#infect()

" 把 F8 映射到 启动NERDTree插件  
map <F8> :NERDTree<CR>

" 设置注释行颜色
hi Comment ctermfg=6
