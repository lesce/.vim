# INSTALL

##### Clone the project in your home directory
  ```git clone https://github.com/lesce/.vim.git```
##### Enter the .vim project , initialize the git submodules (vim plugins) and clone them 
  ```cd .vim && git submodule init && git submodule update```
##### Create a .vimrc file in your home dir that links to .vim/vimrc
  ```touch ~/.vimrc && echo 'source ~/.vim/vimrc' >> ~/.vimrc```