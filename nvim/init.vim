call plug#begin('~/.config/nvim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'udalov/kotlin-vim'

call plug#end()

" onedark colorscehme
syntax on
" let g:onedark_termcolors = 16
colorscheme onedark

" lighltine colorscheme
let g:lightline = {'colorscheme': 'onedark'}

" Set curson to be the one set in terminal
" set guicursor=

" Indent with 4 spaces
set tabstop=4
set expandtab
set shiftwidth=4

" Auto indent
set autoindent
set smartindent

" Search settings
set ignorecase " Ignore case when searching
set smartcase  " Check case if cases used in query
set incsearch  " Show match as search proceeds
set hlsearch  " Highlight search

" Show line numbers
set number

" Use system clipboard
set clipboard+=unnamedplus
