" Huang zhenchuan's vimrc file.

set nocompatible	"Be iMproved

set timeoutlen=1000		"map delay
set backspace=indent,eol,start

set autowrite
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set tabstop=4
set autoindent
set cindent
set shiftwidth=4
set softtabstop=4
set nobackup
set foldmethod=syntax         " Fold on the syntax
set foldcolumn=0
setlocal foldlevel=1
set foldlevelstart=99
let mapleader =','
let maplocalleader =','
" Don't use Ex mode, use Q for formatting
map Q gq

inoremap <C-U> <C-G>u<C-U>

set mouse=a
set mousehide
set splitbelow
set splitright

set tags+=~/.tags			"add you own lib tags path here
map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

filetype off        " required for vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" " required!
Bundle 'gmarik/vundle'

Bundle 'molokai'
"set t_Co=256
colorscheme desert


Bundle 'c.vim'
Bundle 'taglist.vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'a.vim'
Bundle 'OmniCppComplete'
"Bundle 'Conque-Shell'
" " vim-scripts repos
" Bundle 'vim-plugin-foo'
" Bundle 'vim-plugin-bar'
"
filetype plugin indent on    " required!
set completeopt=longest,menu
