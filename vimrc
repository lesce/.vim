" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.
"TODO Find out why Ctrl - S isn\t working
"TODO clean code 
"TODO remove unecesary stuff

call pathogen#infect()

syntax enable

filetype plugin indent on

runtime macros/matchit.vim

let mapleader = ','
let g:mapleader = ','

map <leader>e :vne ~/.vim/vimrc<CR>

map <C-Down> <C-W>j
map <C-Up> <C-W>k
map <C-Left> <C-W>h
map <C-Right> <C-W>l
map <leader>cd :cd %:p:h<cr>
nmap <tab><tab> :NERDTreeToggle<CR>
map <BS> <C-^> " Go to previous file
nmap <C-x> :q!<CR>
map <leader>f :FufFile<cr>
map <leader>ss :setlocal spell!<cr>
imap <tab> <C-n>
set noswapfile
set nu
set nocompatible

" Display incomplete commands.
set showcmd

" Display the mode you're in.
set showmode                      

" Intuitive backspacing.
set backspace=indent,eol,start

set hidden

set wildmenu
" Complete files like a shell.
set wildmode=list:longest
set ffs=unix,dos,mac "Default file types
set shell=/bin/bash

" Case-insensitive searching.
set ignorecase 
" But case-sensitive if expression contains a capital letter.
set smartcase

set autoread
"Show matching braces 
set showmatch
"Reload vimrc after save
autocmd! bufwritepost vimrc source ~/.vim/vimrc

set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time

colorscheme topfunky-light
"""""""""""""""""""""""""""""""""""""
" line highlight when in insert mode"
"""""""""""""""""""""""""""""""""""""
" set cursorline
" hi CursorLine cterm=NONE ctermbg=NONE guibg=NONE
" autocmd InsertEnter * highlight CursorLine cterm=NONE ctermbg=darkgrey guibg=darkgrey
" autocmd InsertLeave * highlight CursorLine cterm=NONE ctermbg=NONE guibg=NONE

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
