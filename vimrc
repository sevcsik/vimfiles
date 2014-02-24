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
NeoBundle "groenewege/vim-less"
NeoBundle "hail2u/vim-css3-syntax"

"Syntastic config
let g:syntastic_javascript_checkers = ['jsl']

autocmd vimenter * call OpenNetrw()
function OpenNetrw()
    30vsplit
    Explore 
    wincmd w
endfunction

"JS-related bundles
NeoBundleLazy "sidorares/node-vim-debugger", { "autoload": { "filetypes": "javascript" } }

"JS abbrevations
ab jsvoid javascript:void(0)

"Code style
set shiftwidth=4
set tabstop=8
set softtabstop=4
set noexpandtab
set encoding=utf-8

"Look'n'feel
let &t_Co=256
set background=dark
set nohlsearch
set colorcolumn=77
set mouse=a
highlight ColorColumn ctermfg=darkred ctermbg=8
"Background color fix for MacVim
syntax enable
color mango
filetype plugin indent on
