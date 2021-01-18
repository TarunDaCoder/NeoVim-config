call plug#begin('~/.local/share/nvim/plugged')

" " Plugins for autocomplete
" Plug 'davidhalter/jedi-vim'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'dense-analysis/ale'
" -------------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/nerd-fonts'
" Plug 'vim-syntastic/syntastic'
Plug 'machakann/vim-highlightedyank'
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'joshdick/onedark.vim'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
Plug 'nvie/vim-flake8'
Plug 'fatih/vim-go'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
" " Plug 'sbdchd/neoformat' 
Plug 'scrooloose/nerdtree' "d
" Folding and stuff
Plug 'tmhedberg/SimpylFold' "d
Plug 'neomake/neomake' "d
Plug 'arcticicestudio/nord-vim'
" something something asynchronium something (uncomment when understood)
" themes
" Plug 'morhetz/gruvbox' "d

nmap <space>e :CocCommand explorer<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

call plug#end()
" Enable alignment
let g:neoformat_basic_format_align = 1

" auto complete
let g:deoplete#enable_at_startup = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'onedark'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode

" Enable trimmming of trailing whitespace
" let g:neoformat_basic_format_trim = 1

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber
" enable all files in this by default
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=27
let g:NERDTreeShowHidden=1

let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ { 'c': '~/.config/awesome/rc.lua' },
            \ ]

let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0

let g:startify_custom_header = [
        \ '   _  __     _         __  ___         __     ___ ',
        \ '  / |/ /  __(_)_ _    /  |/  /__ _____/ /    |_  |',
        \ ' /    / |/ / /  ` \  / /|_/ / _ `/ __/ _ \  / __/ ',
        \ '/_/|_/|___/_/_/_/_/ /_/  /_/\_,_/\__/_//_/ /____/ ',
        \]

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" linting and shit
let b:ale_fixers = ['prettier', 'eslint']

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" the code checker
" let g:neomake_python_enabled_makers = ['pylint']
" call neomake#configure#automake('nrwi', 500)

" highlighting and shit
hi HighlightedyankRegion cterm=reverse gui=reverse

"go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
let g:go_def_mapping_enabled = 0

" configure treesitter
"lua << EOF
"require'nvim-treesitter.configs'.setup {
"  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
"  highlight = {
"    enable = true,              -- false will disable the whole extension
"    disable = { "c", "rust" },  -- list of language that will be disabled
"  },
"}
"EOF

" configure nvcode-color-schemes
"let g:nvcode_termcolors=256

"syntax on
"colorscheme nvcode " Or whatever colorscheme you make


" checks if your terminal has 24-bit color support
"if (has("termguicolors"))
"    set termguicolors
"    hi LineNr ctermbg=NONE guibg=NONE
"endif

" cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

syntax on
colorscheme onedark


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
set termguicolors
hi LineNr ctermbg=NONE guibg=NONE
endif

" themes and stuff
" colorscheme nord
" colorscheme gruvbox
" set background=dark
" let g:gruvbox_contrast_dark = 'hard'
" use dark mode

set rnu
set nu

" set split screen and shit
set splitbelow
set splitright


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" indentation and shit
au BufNewFile, BufRead *.py,*.cpp,*.cs,*.go
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=2
    \ set textwidth=120
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" running a file
autocmd Filetype python nnoremap <buffer> <F6> :w<CR>:python3 "%"<CR>

" indentation and shit for c
au BufNewFile, BufRead *.c
    \ setlocal tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix


"indentation and shit for web devoloupment
au BufNewFile, BufRead *.js, *.html, *.css
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=2

" remove unnecessary whitespace
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" wtf is encoding
set encoding=utf-8

" some boring autospacing and shit
let python_highlight_all=1
syntax on
"set mouse=a
set scrolloff=7
set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
