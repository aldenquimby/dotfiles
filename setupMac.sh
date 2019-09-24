#!/bin/bash

echo "Copying .vimrc"
cp .vimrc ~/.vimrc

echo "Copying .gitconfig"
cp .gitconfig ~/.gitconfig

echo "Copying .bash_profile"
cp .bash_profile ~/.bash_profile

echo "Making .nvm directory"
mkdir ~/.nvm

echo "Installing brew packages"
sh ./brew.sh

echo "Installing git https credential helper"
curl -s -O https://github-media-downloads.s3.amazonaws.com/osx/git-credential-osxkeychain
chmod u+x git-credential-osxkeychain
sudo mv git-credential-osxkeychain "$(dirname $(which git))/git-credential-osxkeychain"
git config --global credential.helper osxkeychain
