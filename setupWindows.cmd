#!/bin/bash

# install packages
./choco.cmd

# install config files
cp .vimrc ~/.vimrc
cp .gitconfig ~/.gitconfig
cp .bash_profile_windows ~/.bash_profile

# setup vundle
if [ ! -d "${HOME}/.vim/bundle/vundle" ]; then
  git clone https://github.com/gmarik/vundle.vim.git ~/.vim/bundle/vundle
fi

# create colors directory for vim
if [ ! -d "${HOME}/.vim/colors" ]; then
  mkdir ~/.vim/colors
fi

# install vim bundles
vim +BundleInstall +qall
