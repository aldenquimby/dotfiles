#!/bin/bash

# this script will install the dot files for the current user

cp .vimrc ~/.vimrc

cp .gitconfig ~/.gitconfig

cp .bash_profile ~/.bash_profile

# setup vundle
if [ ! -d "${HOME}/.vim/bundle/vundle" ]; then
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

# create colors directory for vim
if [ ! -d "${HOME}/.vim/colors" ]; then
  mkdir ~/.vim/colors
fi

vim +BundleInstall +qall
