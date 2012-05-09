" add source ~/.vim/gvimrc to your ~/.gvimrc file

" Hide toolbar.
syntax enable
set gfn=Anonymous\ Pro\ 10
set background=dark
colorscheme solarized
set guioptions-=T

" Reload gvimrc after save.
autocmd! bufwritepost gvimrc source ~/.vim/gvimrc
