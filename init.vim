call plug#begin('~/.local/share/nvim/plugged')

" " Plugins for autocomplete
" Plug 'davidhalter/jedi-vim'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'dense-analysis/ale'
" -------------
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/nerd-fonts'
" Plug 'vim-syntastic/syntastic'
Plug 'machakann/vim-highlightedyank'
Plug 'liuchengxu/vim-which-key'
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'joshdick/onedark.vim'
Plug 'mhinz/vim-startify'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-fugitive'
Plug 'nvie/vim-flake8'
Plug 'fatih/vim-go'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'

" Language Server Client
Plug 'autozimu/LanguageClient-neovim', {
\ 'branch': 'next',
\ 'do': 'bash install.sh',
\ }
let g:LanguageClient_serverCommands = {
\ 'rust': ['rust-analyzer'],
\ }

" For improved UI
Plug 'junegunn/fzf'

Plug 'rust-lang/rust.vim',         { 'for': 'rust' }

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

" sneak
let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" imediately move tot the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1

" remap so I can use , and ; with f and t
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

" Cool prompt
let g:sneak#prompt = '🔎 '

" I like quickscope better for this since it keeps me in the scope of a single line
" map f <Plug>Sneak_f
" map F <Plug>Sneak_F
" map t <Plug>Sneak_t
" map T <Plug>Sneak_T


" Useful info

" s<Enter>                 | Repeat the last Sneak.
" S<Enter>                 | Repeat the last Sneak, in reverse direction.

" silent! call repeat#set("\<Plug>Sneak_s", v:count)
" silent! call repeat#set("\<Plug>Sneak_S", v:count)


" enable tabline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''
"let airline#extensions#tabline#show_splits = 0
"let airline#extensions#tabline#tabs_label = ''

" enable powerline fonts
"let g:airline_powerline_fonts = 1
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''

" Switch to your current theme
"let g:airline_theme = 'onedark'

"let g:webdevicons_enable_airline_tabline = 1

"let g:airline#extensions#tabline#buffers_label = ''
"let g:airline#extensions#tabline#tabs_label = ''
"let g:airline#extensions#coc#enabled = 1

" Just show the file name
"let g:airline#extensions#tabline#fnamemod = ':t'

" enable powerline fonts
"let g:airline_powerline_fonts = 1
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''

" Always show tabs
"set showtabline=2

" We don't need to see things like -- INSERT -- anymore
"set noshowmode

" Enable trimmming of trailing whitespace
" let g:neoformat_basic_format_trim = 1

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" The lightline.vim theme
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ }

" Always show statusline
set laststatus=2

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode


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
            \ { 'f': '~/.config/fish/config.fish' },
            \ { 'c': '~/.config/awesome/rc.lua' },
            \ ]

let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0

let g:startify_custom_header = [
        \ '    _  __     _      ',
        \ '   / |/ /  __(_)_ _  ',
        \ '  /    / |/ / /  ` \ ',
        \ ' /_/|_/|___/_/_/_/_/ ',
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
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF

" configure nvcode-color-schemes
let g:nvcode_termcolors=256

syntax on
colorscheme nvcode " Or whatever colorscheme you make


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

10" cterm=italic
"let g:onedark_hide_endofbuffer=1
"let g:onedark_terminal_italics=1
"let g:onedark_termcolors=256

"syntax on
"colorscheme onedark


" checks if your terminal has 24-bit color support
"if (has("termguicolors"))
"set termguicolors
"hi LineNr ctermbg=NONE guibg=NONE
"endif

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

" set leader key
"let g:mapleader = "\<Space>"

" some boring autospacing and shit
let python_highlight_all=1
syntax on
set mouse=a
set clipboard=unnamedplus
set scrolloff=7
set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
