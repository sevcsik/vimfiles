"NeoBundle init
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#rc(expand('~/.vim/bundle/'))

"Common bundles
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle "tpope/vim-surround"
NeoBundle "scrooloose/syntastic"

"JS-related bundles

"JS abbrevations
ab jsvoid javascript:void(0)

"Code style
set shiftwidth=4

"Look'n'feel
set background=dark
set nohlsearch
set colorcolumn=77
set mouse=a
highlight ColorColumn ctermfg=darkred ctermbg=8

filetype plugin indent on
