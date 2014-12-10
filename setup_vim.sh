#!/bin/bash

# directory structure
rm -rf ~/.vim
mkdir ~/.vim/
mkdir ~/.vim/{autoload,bundle,ftplugin}

# config files
cp vimrc ~/.vimrc
cp python.vim ~/.vim/ftplugin

# setup Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install plugins
vim +PluginInstall +qall
