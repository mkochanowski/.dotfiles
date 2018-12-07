set nocp

set ruler
set nu
set hlsearch
set autoindent
set cmdheight=1
set wildmenu
set showcmd
set confirm
set laststatus=2
set mouse=a
set ignorecase
set smartcase
set clipboard=unnamedplus
set tabstop=2
set shiftwidth=2
set expandtab

if !has("gui_running")
    set term=xterm
    set mouse=a
    " perhaps `nocompatible` is not required
    set nocompatible
endif

execute pathogen#infect()

let g:rainbow#pairs = [['(', ')'], ['[', ']']]

augroup rainbow_lisp
	autocmd!
	autocmd FileType lisp,clojure,scheme,racket RainbowParentheses
augroup END

filetype indent plugin on
syntax on
