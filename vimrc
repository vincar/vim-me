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

" 缩进
filetype indent on
filetype plugin indent on
autocmd FileType html set tabstop=2 shiftwidth=2
"自动将tab转成空格
set expandtab
" 换行后自动缩进
set shiftwidth=2

" 配色方案，查看colors目录下
colorscheme github

" pathogen 配置
execute pathogen#infect()

" 把 F8 映射到 启动NERDTree插件  
map <F8> :NERDTree<CR>

" fuzzyfinder 查找提示文字，缺省为 >CoverageFile!>
let g:fuf_coveragefile_prompt='=>'

" fuzzyfinder设置查找匹配个数，缺省为50个
let g:fuf_enumeratingLimit=5000

" fuzzyfinder映射快捷键为,,
map ,, :FufCoverageFile!<CR>

" fuzzyfinder设置不列入筛选的文件
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|(tmp|log|db/migrate|\.gitkeep|**/.*.png)'

" 设置注释行颜色
hi Comment ctermfg=6
