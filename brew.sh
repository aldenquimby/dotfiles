#!/bin/bash

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# homebrew taps
brew tap caskroom/cask
brew tap caskroom/versions
brew tap homebrew/versions

# homebrew apps
brew install ant
brew install brew-cask
brew install git
brew install gnupg
brew install heroku-toolbelt
brew install hub
brew install maven
brew install nginx
brew install node
brew install ruby
brew install scala

# homebrew databases
brew install elasticsearch
brew install mariadb
brew install mongodb
brew install neo4j
brew install postgresql
brew install redis

# cask apps
brew cask install apache-directory-studio
brew cask install bettertouchtool
brew cask install caffeine
brew cask install disk-inventory-x
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome
brew cask install google-hangouts
brew cask install hipchat
brew cask install intellij-idea
brew cask install java
brew cask install jd-gui
brew cask install kdiff3
brew cask install launchrocket
brew cask install skype
brew cask install sublime-text3
brew cask install the-unarchiver
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc

# cask quick look plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql suspicious-package

# launch some things on startup
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
neo4j install
ln -sfv /usr/local/opt/nginx/*.plist ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

# verify
brew doctor

# sublime packages
# SideBarEnhancements
# SublimeCodeIntel
# HTML5
# LESS
# Pretty JSON

# subl /Applications/IntelliJ\ IDEA\ 14.app/Contents/Info.plist 
# change JVMVersion to 1.8*
