" add source ~/.vim/vimrc to your ~/.vimrc file
call pathogen#infect()

syntax enable
set background=dark

filetype plugin indent on

" Run this at runtime.
runtime macros/matchit.vim

" Reload vimrc after save.
autocmd! bufwritepost vimrc source ~/.vim/vimrc

" Don't make a swapfile.
set noswapfile

" Display line number.
set nu

" Set this for vim Powerline
"let g:Powerline_theme="skwp"

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
set shell=/bin/zsh

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

set tags+=gems.tags

" Configure FuzzyFinder
let g:ctrlp_custom_ignore = '\v[\/]\.(DS_Storegit|hg|svn|optimized|compiled|)|(node_modules|tmp|coverage)$'
let g:fuf_dir_exclude = '\v(^|[/\\])((\.(hg|git|bzr))|node_modules|vendor)($|[/\\])'


" make comma my leader key.
let mapleader = ','
let g:mapleader = ','

" , + e open vimrc.

map <leader>e :vne ~/.vimrc<CR>

" tag all gems in your curent directory.
map <Leader>rt :!ctags --extra=+f --exclude=.git --exclude=log -R * `rvm gemdir`/gems/*<CR><CR>
" map for bash
nmap <Leader>t :ConqueTermSplit bash<CR>
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

" Map leader '['  ']' to switch between tabs 
nmap <leader>[ :tabp <cr>
nmap <leader>] :tabn <cr>
" Babel
nmap <leader>b :Babel <cr>
vmap <leader>b :Babel <cr>
" JSHint
nmap <leader>js :JSHint <cr>
vmap <leader>js :JSHint <cr>

" Map syntastic checker
nmap <leader>c :SyntasticCheck<cr>
           
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
nmap <C-s> :w !sudo tee %<cr>
" set js checker for syntastic plugin
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_coffee_checkers = ['coffeelint']
let g:syntastic_javascript_eslint_exe = 'npm run eslint --'
let g:syntastic_coffee_coffeelint_args = '--file ~/.vim/coffeelint.json'
" set jsx syntax highlight in .js files
let g:jsx_ext_required = 0

let jshint2_read = 1
let jshint2_confirm = 0

let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>
nmap <Leader>cc :CodeClimateAnalyzeOpenFiles<CR>

nmap <Leader>gd :GoDef<CR>
nmap <Leader>tb :DlvToggleBreakpoint<CR>
nmap <Leader>de :DlvDebug<CR>

set autoread
au CursorHold * checktime

call plug#begin('~/.vim/plugged')
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'Shutnik/jshint2.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'direnv/direnv.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go'
Plug 'garbas/vim-snipmate'
Plug 'jbgutierrez/vim-babel'
Plug 'jparise/vim-graphql'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/ctrlp.vim'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-grepper'
Plug 'mileszs/ack.vim'
Plug 'mxw/vim-jsx'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ngmy/vim-rubocop'
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'othree/es.next.syntax.vim'
Plug 'othree/yajs.vim'
Plug 'pangloss/vim-javascript'
Plug 'roosta/srcery'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'sebdah/vim-delve'
Plug 'skammer/vim-css-color'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/FuzzyFinder'
Plug 'vim-scripts/L9'
Plug 'vim-scripts/Vimball'
Plug 'wfleming/vim-codeclimate'
call plug#end()
colorscheme srcery

let g:go_fmt_command = "goimports"
