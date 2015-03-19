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

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [t :TagbarToggle<CR>
nnoremap <silent> [n :NERDTree<CR>
inoremap <C-U> <C-G>u<C-U>

set mouse=a
"set mousehide
set splitbelow
set splitright

"set tags+=../tags
map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
let g:tagbar_width=30

"the c.vim style
"let g:C_Styles = { '*.c,*.h' : 'default', '*.cc,*.cpp,*.hh' : 'CPP' }
filetype off        " required for vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" " required!
Bundle 'gmarik/vundle'
Bundle 'c.vim'
Bundle "majutsushi/tagbar.git"
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'a.vim'
Bundle 'OmniCppComplete'
Bundle 'bling/vim-airline'
"for git
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'
"Bundle 'bash-support.vim'
"Bundle 'perl-support.vim'
Bundle 'klen/python-mode'
"Bundle 'rails.vim'
"Bundle 'javacomplete'
"Bundle 'terryma/vim-multiple-cursors'
Bundle 'tomasr/molokai'
Bundle 'ervandew/supertab'
Bundle 'Raimondi/delimitMate'
Bundle 'altercation/vim-colors-solarized'
Bundle 'duythinht/vim-coffee'
Bundle 'abra/vim-abra'
Bundle 'chmllr/elrodeo-colorscheme'
Bundle 'rizzatti/dash.vim'
" " vim-scripts repos
" Bundle 'vim-plugin-foo'
" Bundle 'vim-plugin-bar'
"
colorscheme desert

filetype plugin indent on    " required!
"set completeopt=longest,menu

"settings for syntastic
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_open = 0

"settings for python-mode
let g:pymode_rope_lookup_project = 0
"do not show colorcolumn when exceed max_length
let g:pymode_options_colorcolumn = 0
"Interaction with Syntastic
let g:pymode_lint_write = 0

"settings for OmniCppComplete
let OmniCpp_MayCompleteScope = 1

"settings for vim-airline
set laststatus=2

"settings for delimitMate		do not match {}  << in c,cpp,java
au FileType c,cpp,java let b:delimitMate_matchpairs = "(:),[:]"

"option for javacomplete
"autocmd Filetype java setlocal omnifunc=javacomplete#Complete
autocmd Filetype python setlocal expandtab
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.md  set filetype=markdown
"autocmd Filetype cpp setlocal tags+=~/.tags			"add cpp std lib tags path here

"set encondig to avoid garbled
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp936

if has("gui_running")
	"set guifont=Monaco:h16
	set guifont=Consolas:h18

	"set transparency=5
	set go=aAce
	set showtabline=2
	"set background=light
	colorscheme solarized
	"colorscheme molokai
	"colorscheme desert
endif
