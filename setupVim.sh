#!/bin/bash

# setup vundle
if [ ! -d "${HOME}/.vim/bundle/vundle" ]; then
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

# create colors directory for vim
if [ ! -d "${HOME}/.vim/colors" ]; then
  mkdir ~/.vim/colors
fi

# install vim bundles
vim +BundleInstall +qall
