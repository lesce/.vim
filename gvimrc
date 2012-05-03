" add source ~/.vim/gvimrc to your ~/.gvimrc file

" Hide toolbar.
set guioptions-=T

" Reload gvimrc after save.
autocmd! bufwritepost gvimrc source ~/.vim/gvimrc
