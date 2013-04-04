" Huang zhenchuan's vimrc file.

set nocompatible	"Be iMproved

set timeoutlen=250
set backspace=indent,eol,start

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
set foldmethod=manual         " Fold on the manual
let mapleader =','
let maplocalleader=','
" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

set mouse=a
set mousehide
set splitbelow
set splitright

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

