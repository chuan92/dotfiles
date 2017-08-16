" Huang Zhenchuan's vimrc file.

set nocompatible	"Be iMproved

set timeoutlen=600		"map delay
set backspace=indent,eol,start
set t_Co=256

syntax on
set autowrite
set history=50		" keep 50 lines of command line history
set nu
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set autoindent
set cindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nobackup
set cursorline
set foldmethod=syntax         " Fold on the syntax
set foldcolumn=0
setlocal foldlevel=1
set foldlevelstart=99
let mapleader =','
let maplocalleader =','
" Don't use Ex mode, use Q for formatting
map Q gq
set hlsearch

set mouse=a
"set mousehide
set splitbelow
set splitright

" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
filetype off        " required for vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" " required!
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'Raimondi/delimitMate'
" " vim-scripts repos
"
call vundle#end()
filetype plugin indent on    " required!
"set completeopt=longest,menu
colorscheme monokai



"settings for vim-airline
set laststatus=2

"settings for delimitMate		do not match {}  << in c,cpp,java
autocmd Filetype python setlocal expandtab
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.md  set filetype=markdown

"set encondig to avoid garbled
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp936

if has("gui_running")
	set guifont=Consolas:h18
	"set transparency=5
	set go=aAce
	set showtabline=2
	"set background=light
	colorscheme solarized
endif
