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
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" " required!
Plugin 'VundleVim/Vundle.vim'
Plugin 'c.vim'
Plugin 'majutsushi/tagbar.git'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'a.vim'
Plugin 'OmniCppComplete'
Plugin 'bling/vim-airline'
"for git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
"Plugin 'bash-support.vim'
"Plugin 'perl-support.vim'
Plugin 'klen/python-mode'
"Plugin 'rails.vim'
"Plugin 'javacomplete'
"Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomasr/molokai'
"Plugin 'ervandew/supertab'
Plugin 'Raimondi/delimitMate'
Plugin 'altercation/vim-colors-solarized'
Plugin 'duythinht/vim-coffee'
Plugin 'abra/vim-abra'
Plugin 'chmllr/elrodeo-colorscheme'
Plugin 'rizzatti/dash.vim'
Plugin 'JuliaLang/julia-vim'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'bkad/CamelCaseMotion'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'tpope/vim-markdown'
" " vim-scripts repos
" Plugin 'vim-plugin-foo'
" Plugin 'vim-plugin-bar'
"
call vundle#end()
filetype plugin indent on    " required!
"set completeopt=longest,menu
colorscheme desert

"settings for syntastic
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_open = 0
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

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

"settings for golden-ratio
let g:golden_ratio_exclude_nonmodifiable = 1
"let g:golden_ratio_autocommand = 0

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
