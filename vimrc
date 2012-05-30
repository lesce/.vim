" add source ~/.vim/vimrc to your ~/.vimrc file
call pathogen#infect()

syntax enable
colorscheme advantage

filetype plugin indent on

" Run this at runtime.
runtime macros/matchit.vim

" Reload vimrc after save.
autocmd! bufwritepost vimrc source ~/.vim/vimrc

" Set backgroudn light
set background=light

" Don't make a swapfile.
set noswapfile

" Display line number.
set nu

" Set this for vim Powerline
set laststatus=2
set encoding=utf-8

" No vi compatibility.
set nocompatible

" Display incomplete commands.
set showcmd

" Display the mode you're in.
set showmode                      

" Intuitive backspacing.
set backspace=indent,eol,start

set hidden

set wildmenu

" Set vim shell.
set shell=/bin/bash

" Add interactive mode to shellcomandflag
" this will load ~/.bashrc
" set shcf=-ic

" Complete files like a shell.
set wildmode=list:longest

"Default file types
set ffs=unix,dos,mac 

" Case-insensitive searching.
set ignorecase 

" But case-sensitive if expression contains a capital letter.
set smartcase

set autoread

"Show matching braces 
set showmatch

" Show cursor position.
set ruler                         

" Highlight matches as you type.
set incsearch                     

" Highlight matches.
set hlsearch                      

" Turn on line wrapping.
set wrap                          

set scrolloff=3

" No beeping.
set visualbell                    

" Global tab width.
set tabstop=2                    

" Set indentation.
set shiftwidth=2 
" Use spaces instead of tabs.
set expandtab                    
set background=dark

set tags+=gems.tags

" make comma my leader key.
let mapleader = ','
let g:mapleader = ','

" , + e open vimrc.

map <leader>e :vne ~/.vim/vimrc<CR>

" tag all gems in your curent directory.
map <Leader>rt :!ctags --extra=+f --exclude=.git --exclude=log -R * `rvm gemdir`/gems/*<CR><CR>

" Move between windows with Ctrl + arrows.
map <C-Down> <C-W>j
map <C-Up> <C-W>k
map <C-Left> <C-W>h
map <C-Right> <C-W>l

" change current directory to the current files location directory.
map <leader>cd :cd %:p:h<cr>

" open NerdTree.
nmap <tab><tab> :NERDTreeToggle<CR>

" Find files from buffer.
map <leader>f :FufBuffer<cr>

" Check spelling
map <leader>ss :setlocal spell!<cr>
           
" goto first char from line
map 0 ^

" Clear the search buffer when hitting return
:nnoremap <CR> :nohlsearch<cr>

" Indent if we're at the beginning of a line. Else, do completion.
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>

" Tab mappings.
"map <leader>t :tabnew<cr>
"map <leader>tc :tabclose<cr>
"map <leader>tn :tabnext<cr>
"map <leader>tp :tabprevious<cr>
let ruby_space_errors = 1
let c_space_errors = 1
