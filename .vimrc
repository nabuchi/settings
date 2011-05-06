" general
set nocompatible

" color
syntax on
colorscheme oceandeep

highlight ZenkakuSpace cterm=underline ctermfg=lightblue
match ZenkakuSpace /　/
let lisp_rainbow = 1 " set ft=lisp

" disp
set number
set ruler
set showmatch
set showcmd

" edit
set autoindent
set cindent
set showmatch
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,]"行末-行頭
set wrap"折り返し
set scrolloff=5"スクロール時の余白確保

" tab
set tabstop=4
set expandtab
set smarttab
set shiftwidth=4
set shiftround

" search
set ignorecase
set smartcase
set nowrapscan
set hlsearch 

" plugin
filetype on
filetype plugin on
source $VIMRUNTIME/macros/matchit.vim

" statusline
set laststatus=2
set statusline=%<%f\ %m%r%h%w[%B/%b]
set statusline+=[%Y]%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}
set statusline+=%=%l/%L,%c%V%8P

" keymap
nnoremap j gj
nnoremap k gk
map <F2> <ESC>:bp<CR>
map <F3> <ESC>:bn<CR>
map <F4> <ESC>:bw<CR>
" japanese
set enc=utf-8
set fencs=utf-8
