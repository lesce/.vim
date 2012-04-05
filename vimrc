" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.
"TODO Find out why Ctrl - S isn\t working
"TODO clean code 
"TODO remove unecesary stuff
"TODO get spell checker
"TODO add rails support
set nu
let mapleader = ','
let g:mapleader = ','

map <C-Down> <C-W>j
map <C-Up> <C-W>k
map <C-Left> <C-W>h
map <C-Right> <C-W>l
call pathogen#infect()
map <leader>cd :cd %:p:h<cr>
nmap <tab><tab> :NERDTreeToggle<CR>
map <BS> <C-^> " Go to previous file
nmap <C-s> :w!<CR>
map <leader>ss :setlocal spell!<cr>

set nocompatible
syntax enable
map <leader>v :vne ~/.vim/vimrc<CR>

filetype plugin indent on

runtime macros/matchit.vim

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
" Useful status information at bottom of screen
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

colorscheme topfunky-light
"""""""""""""""""""""""""""""""""""""
" line highlight when in insert mode"
"""""""""""""""""""""""""""""""""""""
set cursorline
hi CursorLine cterm=NONE ctermbg=NONE guibg=NONE
autocmd InsertEnter * highlight CursorLine cterm=NONE ctermbg=darkgrey guibg=darkgrey
autocmd InsertLeave * highlight CursorLine cterm=NONE ctermbg=NONE guibg=NONE

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Uncomment to use Jamis Buck's file opening plugin
"map <Leader>t :FuzzyFinderTextMate<Enter>

" Controversial...swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;

"vnoremap ; :
"vnoremap : ;

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

