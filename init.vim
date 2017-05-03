	let $PYTHONPATH='/usr/lib/python3.5/site-packages/'

"NeoBundle init
set runtimepath+=~/.config/nvim/bundle/neobundle.vim

call neobundle#begin(expand('~/.config/nvim/bundle/'))

"Common bundles
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle "tpope/vim-surround"
NeoBundle "scrooloose/syntastic"
NeoBundle "wakatime/vim-wakatime"
NeoBundle "tomlion/vim-solidity"
NeoBundle "candy.vim"
NeoBundle "editorconfig/editorconfig-vim"
NeoBundle "Shougo/deoplete.nvim"
NeoBundle "scrooloose/nerdtree"
NeoBundle "Xuyuanp/nerdtree-git-plugin"
NeoBundle "vim-airline/vim-airline"
NeoBundle "DrawIt"

let g:airline_powerline_fonts = 1
NeoBundle "keepcase.vim"
NeoBundle "tpope/vim-abolish"
NeoBundle "wincent/terminus"
let g:deoplete#enable_at_startup = 1

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
let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']
let g:syntastic_solidity_checkers = ['solium']
let g:syntastic_typescript_tsc_fname = ''

"CSS
NeoBundle "groenewege/vim-less"
NeoBundle "hail2u/vim-css3-syntax"

"JS
NeoBundle "pangloss/vim-javascript"
NeoBundle "mxw/vim-jsx"
NeoBundle "vim-scripts/Smart-Tabs"
set conceallevel=1
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇐"
let g:javascript_conceal_undefined            = "⊥"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"

"Typescript
NeoBundle "mhartington/deoplete-typescript"
NeoBundle "Quramy/tsuquyomi"
NeoBundle "leafgarland/typescript-vim"

"Ethereum
NeoBundle "tomlion/solidity"

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

"close brackets
inoremap [ []<C-o>i
inoremap { {}<C-o>i
inoremap ( {}<C-o>i


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

"Keyboard shortcuts
tnoremap <Esc> <C-\><C-n>

"Look'n'feel
colorscheme candy
let &t_Co=256
set background=dark
set hlsearch
set colorcolumn=150
set mouse=a
set backspace=indent,eol,start
syntax enable
set termguicolors
filetype plugin indent on
hi! VertSplit guifg=#cccccc guibg=#cccccc
hi! ColorColumn guifg=#ffffff guibg=#000000
hi! Search guifg=#ffffff guibg=#808000
hi! Normal guifg=#cccccc guibg=none
hi! Conceal guifg=#cc00cc guibg=none
set number

set guioptions-=T
set guioptions-=m

set exrc
