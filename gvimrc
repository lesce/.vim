" Giving vim some makeup
syntax enable
set background=dark
colorscheme solarized
set gfn=Anonymous\ Pro\ 12

" Hide toolbar, menubar and scrollbars
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=l
set guioptions-=m

" Reload gvimrc after save.
autocmd! bufwritepost gvimrc source ~/.vim/gvimrc
