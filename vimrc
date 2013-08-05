filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

syntax on
syntax enable

set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized
set background=dark

set ruler
set number
set showcmd
set noerrorbells

set ts=4
set sw=4

set encoding=utf-8
let mapleader=","
set ignorecase
set smartcase
set gdefault
set incsearch
"set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

set ofu=syntaxcomplete#Complete
"let g:SuperTabDefaultCompletionType = "<C-P>"

nnoremap <leader>t :NERDTreeToggle<CR>

set clipboard=unnamed

set wrap
set textwidth=79
set formatoptions=qrn1
if exists('+colorcolumn')
	set colorcolumn=80
endif

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

vmap <C-U><C-E> :!~/.vim/bin/urlencode<CR>:s/%0a$//<CR>:s/%0a/<C-V><CR>/g<CR> 
vmap <C-U><C-D> :!~/.vim/bin/urlencode -d<CR>

if has("gui_macvim")
	set guifont=DejaVu\ Sans\ Mono:h12
else
	set guifont=DejaVu\ Sans\ Mono\ 12
endif

au BufNewFile,BufRead *.less set filetype=less

nnoremap <F3> :NumbersToggle<CR>

set laststatus=2
let g:Powerline_colorscheme = 'solarized256'
