#!/bin/bash

# install config files
cp .vimrc ~/.vimrc
cp .gitconfig ~/.gitconfig
cp .bash_profile ~/.bash_profile

# install packages
sh ./brew.sh

# setup git credential helper
echo "Installing git https credential helper... "
curl -s -O \
  https://github-media-downloads.s3.amazonaws.com/osx/git-credential-osxkeychain
chmod u+x git-credential-osxkeychain
sudo mv git-credential-osxkeychain \
  "$(dirname $(which git))/git-credential-osxkeychain"
git config --global credential.helper osxkeychain

# setup vundle
if [ ! -d "${HOME}/.vim/bundle/vundle" ]; then
  git clone https://github.com/gmarik/vundle.vim ~/.vim/bundle/vundle
fi

# create colors directory for vim
if [ ! -d "${HOME}/.vim/colors" ]; then
  mkdir ~/.vim/colors
fi

# install vim bundles
vim +BundleInstall +qall
