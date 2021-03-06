"An example for a vimrc file.
"https://www.cnblogs.com/lsgxeva/p/8727590.html
" Maintainer:   Bram Moolenaar <Bram@vim.org>
" Last change:  2001 Jul 18
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"         for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"       for OpenVMS:  sys$login:.vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 一般设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设定默认解码
set guifont=-misc-simsun-medium-r-normal-*-*-120-*-*-c-*-iso10646-1
set bsdir=buffer
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,ucs-bom,gb2312,cp936,gbk,big5
set langmenu=zh_CN.UTF-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,latin1,gb2312,gb18030,cp936,gbk,big5
set termencoding=utf-8

"设置颜色
colorscheme desert

"set guifont=Nimbus\ Mono\ L\ 12
"set guifont=WenQuanYi\ Bitmap\ Song\ 12
"set guifont=Verdana\ 10
"set guifont=Courier\ 11
"set guifont=Bitstream\ Vera\ Sans\ Mono\ 10

" 显示中文帮助
if version >= 603
set helplang=cn
set encoding=utf-8
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
" 不要使用vi的键盘模式，而是vim自己的键盘模式
set nocompatible

" history文件中需要记录的行数
set history=100

" 显示行号
set number

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 与windows共享剪贴板
set clipboard+=unnamed

" 侦测文件类型
filetype on

" 载入文件类型插件
filetype plugin on

" 为特定文件类型载入相关缩进文件
filetype indent on

" 保存全局变量
set viminfo+=!

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 语法高亮显示
syntax on
"
"         """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""高亮显示gtk关键字""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax keyword gtkType gint gshort guint gushort gulong gdouble gfloat gchar guchar gboolean gpointer highlight link gtkType Type

" 高亮字符，让其不受100列限制
highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
match OverLength '\%101v.*'

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 不要备份文件（根据自己需要取舍）
set nobackup

" 不要生成swap文件，当buffer被丢弃的时候隐藏它
setlocal noswapfile
set bufhidden=hide

" 字符间插入的像素行数目
set linespace=0

" 增强模式中的命令行自动完成操作
set wildmenu

" 在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 输入的命令显示出来，看的清楚些
set showcmd

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=indent,eol,start

" 跨行移动
set whichwrap=b,s,<,>,[,]

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key

" 启动的时候不显示那个援助乌干达儿童的提示
set shortmess=atI

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 不让vim发出讨厌的滴滴声
set noerrorbells

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5

" 在搜索的时候忽略大小写
set ignorecase

" 不要高亮被搜索的句子（phrases）
set nohlsearch

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch

" 制表符可见
"set list

" 输入:set list命令是应该显示些啥？
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

" 不要闪烁
set novisualbell

" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" 总是显示状态行
set laststatus=2

" 屏幕放不下时，按一次屏幕移动一个字符
set sidescroll=1

" 下面的滚动条开启
"slet g:netrw_winsize = 20et guioptions+=b

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式，特别适用于多行注释
set autoindent

" 为C程序提供自动缩进
set smartindent

" 使用C样式的缩进
set cindent

" 制表符为4
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

" 不要用空格代替制表符
set noexpandtab

" 不要换行
set nowrap

" 在行和段开始处使用制表符
set smarttab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags的设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 按照名称排序
let Tlist_Sort_Type = "name"

" 在右侧显示窗口
let Tlist_Use_Right_Window = 1

" 压缩方式
let Tlist_Compart_Format = 1

" 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_Exist_OnlyWindow = 1

" 不要关闭其他文件的tags
let Tlist_File_Fold_Auto_Close = 0

" 不要显示折叠树
let Tlist_Enable_Fold_Column = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 键盘命令
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"imap <C-P> <C-X><C-P>
"imap <C-F> <C-X><C-F>
"imap <C-I> <C-X><C-I>
"imap <C-D> <C-X><C-D>
"imap <C-L> <C-X><C-L>

" 根据打开文件类型, 启用智能补全
set completeopt=longest,menu
" p命令可以使用剪切板上的内容来替换选中的内容
vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>

nmap <F2> :nohlsearch<CR>
map <F3> :copen<CR>:grep -R
map <F7> :w<CR><CR>:copen<CR>:make<CR><CR>
imap <F7> <Esc>:w<CR><CR>:copen<CR>:make<CR><CR>
map <F8> :cclose<CR>
map <F9> :TlistToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码折叠编译运行按键命令
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 只在下列文件类型被侦测到的时候显示行号，普通文本文件不显示

if has("autocmd")
autocmd FileType xml,html,c,cs,java,perl,shell,bash,cpp,python,vim,php,ruby set number
autocmd FileType xml,html vmap <C-o> <ESC>'<i<!--<ESC>o<ESC>'>o-->
autocmd FileType java,c,cpp,cs vmap <C-o> <ESC>'<o/*<ESC>'>o*/
autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl,python setlocal textwidth=78
autocmd Filetype html,xml,xsl source $VIMRUNTIME/plugin/closetag.vim
\ if line("'\"") > 0 && line("'\"") <=line("{1}quot;) |
\   exe "normal g`\"" |
\ endif
endif " has("autocmd")

autocmd FileType c,cc,cpp,python,ruby,java,sh,html,javascript autocmd BufWritePre <buffer> :%s/\s\+$//e 
" F5编译和运行C程序，F6编译和运行C++程序
" 请注意，下述代码在windows下使用会报错
" 需要去掉./这两个字符

" C的编译和运行
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
exec "!gcc % -o %<"
exec "! ./%<"
endfunc

" C++的编译和运行
map <F6> :call CompileRunGpp()<CR>
func! CompileRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./%<"
endfunc

" 能够漂亮地显示.NFO文件
set encoding=utf-8
function! SetFileEncodings(encodings)
let b:myfileencodingsbak=&fileencodings
let &fileencodings=a:encodings
endfunction
function! RestoreFileEncodings()
let &fileencodings=b:myfileencodingsbak
unlet b:myfileencodingsbak
endfunction

au BufReadPre *.nfo call SetFileEncodings('cp437')|set ambiwidth=single
au BufReadPost *.nfo call RestoreFileEncodings()

"高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt

" 用空格键来开关折叠
set foldenable
"set foldmethod=manual
set foldmethod=syntax
set foldlevel=100
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" minibufexpl插件的一般设置
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows= 1
let g:miniBufExplMapCTabSwitchBufs =1
let g:miniBufExplModSelTarget = 1

"设置快捷方式 Set mapleader
let mapleader = ","

"快捷加载,当输入",ss"时，加载.vimrc 文件
map <silent> <leader>ss :source ~/.vimrc<cr>
"快速打开编辑.vimrc配置文件--->",ee"
map <silent> <leader>ee :e ~/.vimrc<cr>
"快速保存文件--->",w"
map <silent> <leader>w :w<cr>
"快速保存并退出文件--->",w"
map <silent> <leader>wq :wq<cr>

"自动命令，每次写入.vimrc后，都会执行这个自动命令，source一次~/.vimrc
autocmd! bufwritepost .vimrc source ~/.vimrc
