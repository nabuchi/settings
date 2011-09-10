""" general
set nocompatible

""" Vundle
filetype off
set rtp+=~/.vim/vundle/
call vundle#rc()
Bundle 'tpope/vim-fugitive'
Bundle 'ujihisa/quickrun'
Bundle 'Shougo/neocomplcache'
Bundle 'vim-scripts/AutoComplPop'
Bundle 'Shougo/unite.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-haml'
Bundle 'plsql.vim'
Bundle 'plsql.vim-syntax'
"Bundle 'molokai'
"Bundle 'oceandeep'
filetype plugin indent on

""" color
syntax on
"colorscheme oceandeep
"colorscheme molokai

""" zenkaku
highlight ZenkakuSpace cterm=underline ctermfg=lightblue
match ZenkakuSpace /　/
set list
set lcs=tab:>-,trail:_

""" disp
set number
set ruler
set showmatch
set showcmd

""" edit
set autoindent
set cindent
set scrolloff=5 "fast scroll
set wrap
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start

""" tab
set tabstop=4
set expandtab
set smarttab
set shiftwidth=4
set shiftround

""" search
set ignorecase
set smartcase
set nowrapscan
set hlsearch

""" statusline
set laststatus=2
set statusline=%<%f\ %m%r%h%w[%B/%b]
set statusline+=[%Y]%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}
set statusline+=%=%l/%L,%c%V%8P

""" keymap
nnoremap j gj
nnoremap k gk

""" plugin
filetype on
filetype plugin on

""" encode
set enc=utf-8
set fenc=utf-8
set fileencodings=ucs-bom,utf-8,euc-jp,cp932,sjis,default,latin1

""" plugin 
"" neocomplcache
let g:neocomplcache_enable_at_startup = 1
"buffer
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
"file
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"register
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
"recently
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
"ordinaly
nnoremap <silent> ,uu :<C-u>Unite buffer file_mru<CR>
"all
nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>

"" matchit.vim
source $VIMRUNTIME/macros/matchit.vim "for ruby do end
