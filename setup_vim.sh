#!/bin/bash

# directory structure
rm -rf ~/.vim
mkdir ~/.vim/
mkdir ~/.vim/{autoload,bundle,ftplugin}

# config files
cp vimrc ~/.vimrc
cp google.vim ~/.vim/google.vim

# setup Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install plugins
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
#./install.sh --clang-completer
./install.sh

cd ~/.vim/bundle/tern_for_vim
npm install
