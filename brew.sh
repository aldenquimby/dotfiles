#!/bin/bash

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# homebrew apps
brew install ansible
brew install bash
brew install gdal --enable-unsupported --complete
brew install git
brew install gnupg
brew install hub
brew install htop
brew install jq
brew install ncdu
brew install nvm
brew install pre-commit
brew install python
brew install sshrc
brew install the_silver_searcher
brew install wget

# some packages may be installed automatically:
#   "brew uses --installed X" to see what depends on X

# cask apps that need to happen early
brew cask install java

# cask apps
brew cask install bettertouchtool
brew cask install betterzipql
brew cask install disk-inventory-x
brew cask install firefox
brew cask install google-chrome
brew cask install intellij-idea
brew cask install jd-gui
brew cask install kdiff3
brew cask install licecap
brew cask install qlcolorcode
brew cask install qlmarkdown
brew cask install qlprettypatch
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install rdm
brew cask install slack
brew cask install sublime-text
brew cask install suspicious-package
brew cask install vagrant
brew cask install virtualbox
brew cask install visual-studio-code

# homebrew apps that depend on cask apps
brew install maven
brew install scala

# verify
brew doctor
