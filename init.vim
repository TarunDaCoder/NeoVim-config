call plug#begin(stdpath('data'))

" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" File Explorer
Plug 'scrooloose/NERDTree'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
" Themes
Plug 'joshdick/onedark.vim'

call plug#end()

" sourcing different files
source C:\Users\indra\AppData\Local\nvim\general\settings.vim
source C:\Users\indra\AppData\Local\nvim\keys\mappings.vim 
source C:\Users\indra\AppData\Local\nvim\themes\onedark.vim 


" BASIC SETUP:

" enter the current millenium
set nocompatible

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on
