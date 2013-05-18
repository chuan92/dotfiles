" Huang zhenchuan's vimrc file.

set nocompatible	"Be iMproved

set timeoutlen=600		"map delay
set backspace=indent,eol,start

set autowrite
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set autoindent
set cindent
set tabstop=4
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

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [t :Tlist<CR>
nnoremap <silent> [n :NERDTree<CR>
inoremap <C-U> <C-G>u<C-U>

set mouse=a
set mousehide
set splitbelow
set splitright

set tags+=~/.tags			"add you own lib tags path here
map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"the c.vim style
let g:C_Styles = { '*.c,*.h' : 'default', '*.cc,*.cpp,*.hh' : 'CPP' }
filetype off        " required for vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" " required!
Bundle 'gmarik/vundle'
Bundle 'molokai'


colorscheme molokai
set t_Co=256


Bundle 'c.vim'
Bundle 'taglist.vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'a.vim'
Bundle 'OmniCppComplete'
Bundle 'bash-support.vim'
Bundle 'rails.vim'
Bundle 'javacomplete'
"Bundle 'Conque-Shell'
" " vim-scripts repos
" Bundle 'vim-plugin-foo'
" Bundle 'vim-plugin-bar'
"
filetype plugin indent on    " required!
set completeopt=longest,menu

" option for OmniCppComplete
let OmniCpp_MayCompleteScope = 1
" option for javacomplete
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
autocmd Filetype python setlocal expandtab

"set encondig to avoid garbled
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp936
