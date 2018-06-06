let $PYTHONPATH='/usr/lib/python3.5/site-packages/'

if &compatible
	set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state("~/.cache/dein")
	call dein#begin("~/.cache/dein")
	call dein#add("tpope/vim-fugitive")
	call dein#add("flazz/vim-colorschemes")
	call dein#add("scrooloose/syntastic")
	call dein#add("wakatime/vim-wakatime")
	call dein#add("editorconfig/editorconfig-vim")
	call dein#add("vim-airline/vim-airline")
	call dein#add("vim-scripts/DrawIt")
	call dein#add("mattn/emmet-vim")
	call dein#add("hsanson/vim-android")
	call dein#add("idanarye/vim-vebugger")
	call dein#add("artur-shaik/vim-javacomplete2")
	call dein#add("morhetz/gruvbox")
	call dein#add("mhinz/vim-startify")
	call dein#add("vim-scripts/vim-gitgutter")
	call dein#add("tpope/vim-abolish")
	call dein#add("wincent/terminus")
	call dein#add("groenewege/vim-less")
	call dein#add("hail2u/vim-css3-syntax")
	call dein#add("pangloss/vim-javascript")
	call dein#add("Quramy/tsuquyomi")
	call dein#add("leafgarland/typescript-vim")
	call dein#add("davidhalter/jedi-vim")
	call dein#add("zchee/deoplete-jedi")
	call dein#add("Shougo/vimproc.vim", { 'build': 'make' })
	call dein#add("Shougo/deoplete.nvim")
	call dein#add("rudism/deoplete-tsuquyomi")
	call dein#add("rafaqz/ranger.vim")
	call dein#add("JalaiAmitahl/maven-compiler.vim")
	call dein#add("mfukar/robotframework-vim")
	call dein#end()
	call dein#save_state()
endif

if dein#check_install()
	call dein#install()
endif

let g:airline_powerline_fonts = 1
let g:deoplete#enable_at_startup = 1

"Syntastic config
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']
let g:syntastic_solidity_checkers = ['solium']
let g:syntastic_typescript_tsc_fname = ''
let g:syntastic_java_checkers=[]
let g:syntastic_java_javac_config_file_enabled = 1

"close brackets
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ( ()<Left>


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
map <leader>rr :RangerEdit<cr>
map <leader>rv :RangerVSplit<cr>
map <leader>rs :RangerSplit<cr>
map <leader>rt :RangerTab<cr>
map <leader>ri :RangerInsert<cr>
map <leader>ra :RangerAppend<cr>
map <leader>rc :set operatorfunc=RangerChangeOperator<cr>g@
map <leader>rR :set operatorfunc=RangerBrowseEdit<cr>g@
map <leader>rT :set operatorfunc=RangerBrowseTab<cr>g@
map <leader>rS :set operatorfunc=RangerBrowseSplit<cr>g@
map <leader>rV :set operatorfunc=RangerBrowseVSplit<cr>g@

"Look'n'feel
filetype plugin indent on
syntax enable
set list
set listchars=tab:»\ ,trail:.
set background=dark
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox
hi! Normal ctermfg=223 ctermbg=none guifg=#ebdbb2 guibg=none
let g:airline_theme="gruvbox"
let &t_Co=256
set t_ut=
set hlsearch
set colorcolumn=120
set mouse=a
set backspace=indent,eol,start
set number

set guioptions-=T
set guioptions-=m

"Load local config files
silent! so .vimrc
silent! so ../.vimrc
