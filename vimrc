"NeoBundle init
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#rc(expand('~/.vim/bundle/'))

"Common bundles
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle "tpope/vim-surround"
NeoBundle "scrooloose/syntastic"
NeoBundle "goatslacker/mango.vim"
NeoBundle 'Shougo/vimshell'

"Syntastic config
let g:syntastic_javascript_checkers = ['jshint']

"JS-related bundles
NeoBundleLazy "sidorares/node-vim-debugger", { "autoload": { "filetypes": "javascript" } }
NeoBundle "groenewege/vim-less"
NeoBundle "hail2u/vim-css3-syntax"
NeoBundle "pangloss/vim-javascript"
NeoBundle "maksimr/vim-jsbeautify"
NeoBundle "einars/js-beautify"

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
set encoding=utf-8

"Look'n'feel
let &t_Co=256
set background=dark
set nohlsearch
set colorcolumn=77
set mouse=a
set backspace=indent,eol,start
hi! VertSplit ctermfg=233  ctermbg=233
highlight ColorColumn ctermfg=darkred ctermbg=8
"Background color fix for MacVim
syntax enable
color mango
filetype plugin indent on
