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
NeoBundle "wakatime/vim-wakatime"

NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

"Syntastic config
let g:syntastic_javascript_checkers = ['eslint']

"JS-related bundles
NeoBundle "groenewege/vim-less"
NeoBundle "hail2u/vim-css3-syntax"
NeoBundle "pangloss/vim-javascript"
NeoBundle "maksimr/vim-jsbeautify"
NeoBundle "mxw/vim-jsx"
NeoBundle "vim-scripts/Smart-Tabs"

"Typescript
NeoBundle "Quramy/tsuquyomi"
NeoBundle "leafgarland/typescript-vim"
NeoBundle "jason0x43/vim-js-indent"

call neobundle#end()

"JS abbreviations
ab jsvoid javascript:void(0)

"CSS abbreviations
ab lt480 @media only screen and (max-width: 479px) {<CR>
ab lt768 @media only screen and (max-width: 767px) {<CR>
ab lt1024 @media only screen and (max-width: 1023px) {<CR>
ab lt1280 @media only screen and (max-width: 1279px) {<CR>

ab gte480 @media only screen and (min-width: 480px) {<CR>
ab gte768 @media only screen and (min-width: 768px) {<CR>
ab gte1024 @media only screen and (min-width: 1024px) {<CR>
ab gte1280 @media only screen and (min-width: 1280px) {<CR>

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

set guioptions-=T
set guioptions-=m

set exrc
