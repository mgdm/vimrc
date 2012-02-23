filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

syntax on
syntax enable

set background=dark
colorscheme solarized

set ruler
set showcmd

set ts=4
set sw=4

set encoding=utf-8
let mapleader=","
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
if exists('+colorcolumn')
	set colorcolumn=80
endif

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
