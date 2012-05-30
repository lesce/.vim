" add source ~/.vim/gvimrc to your ~/.gvimrc file

" Hide toolbar.
syntax enable
" set gfn=Anonymous\ Pro\ 10
set guioptions-=T
colorscheme solarized

" Reload gvimrc after save.
autocmd! bufwritepost gvimrc source ~/.vim/gvimrc
