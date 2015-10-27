"NeoBundle init
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

"Common bundles
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle "tpope/vim-surround"
NeoBundle "scrooloose/syntastic"
NeoBundle "vim-scripts/wombat"
NeoBundle 'Shougo/vimshell'

"Syntastic config
let g:syntastic_javascript_checkers = ['eslint']

"JS-related bundles
NeoBundle "groenewege/vim-less"
NeoBundle "hail2u/vim-css3-syntax"
NeoBundle "pangloss/vim-javascript"
NeoBundle "maksimr/vim-jsbeautify"
NeoBundle "mxw/vim-jsx"
NeoBundle "vim-scripts/Smart-Tabs"

call neobundle#end()

"JS abbrevations
ab jsvoid javascript:void(0)

"vim-javascript
let b:javascript_fold = 1
let g:javascript_conceal = 1
let g:javascript_enable_domhtmlcss = 1

"Code style
set shiftwidth=4
set tabstop=4
set noexpandtab
set softtabstop=4
set encoding=utf-8
set smarttab

command Todo grep TODO -A1 -r . 

"Look'n'feel
color wombat
let &t_Co=256
set background=dark
set hlsearch
set colorcolumn=80
set mouse=a
set backspace=indent,eol,start
syntax enable
filetype plugin indent on
hi! VertSplit ctermfg=233  ctermbg=233
hi! ColorColumn ctermfg=darkred ctermbg=black
hi! Search ctermfg=yellow ctermbg=235

set exrc
