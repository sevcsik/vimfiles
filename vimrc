syntax enable
set tabstop=2
set shiftwidth=2
set autoindent
set expandtab
set number
set background=dark
set nohlsearch
set colorcolumn=77
highlight ColorColumn ctermfg=darkred ctermbg=8

"Javascript abs
ab jsvoid javascript:void(0)

"HTML abs
ab htskel <!DOCTYPE html><CR><html><CR><head><CR></head><CR><body><CR></body><CR></html><Up><Up><Up><Up>
ab htcss <link rel="stylesheet" href=""><Left><Left>
ab htscript <script src=""></script><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
ab htinput <input type="text" name=""><Left><Left>

"CSS abs
ab csabs position: absolute;<CR>
ab csrel position: relative;<CR>
iab csnul /* CSS reset */
      \<CR>*
      \<CR><Bs><Bs>{ 
      \<CR>margin: 0; 
      \<CR>padding: 0; 
      \<CR>text-decoration: none; 
      \<CR>border: none; 
      \<CR>}
      \<CR>

"Vundles
set nocompatible              
filetype off                   
if has("win32")
  set rtp+=~/vimfiles/vundle/
else
  set rtp+=~/.vim/vundle/
endif
call vundle#rc()
Bundle "pangloss/vim-javascript"
Bundle "othree/html5-syntax.vim"
Bundle "scrooloose/nerdtree"
Bundle "tpope/vim-surround"

"Home-only settings
if hostname() == "sevcsik-desktop" || hostname() == "sevcsik-netbook"
  Bundle "stephpy/vim-phpdoc"
  Bundle "shawncplus/php.vim"
endif

"Workplace-only settings
if hostname() == "D01002846"
"  Bundle "hallettj/jslint.vim"
endif

filetype plugin indent on
