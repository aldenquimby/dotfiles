#!/bin/bash

# install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew update

# homebrew taps
brew tap caskroom/cask
brew tap caskroom/versions
brew tap homebrew/versions

# homebrew apps
brew install ant
brew install brew-cask
brew install elasticsearch
brew install git
brew install gnupg
brew install heroku-toolbelt
brew install hub
brew install mariadb
brew install maven
brew install mongodb
brew install neo4j
brew install node
brew install nginx
brew install postgresql
brew install redis
brew install ruby
brew install scala

# cask apps
brew cask install apache-directory-studio
brew cask install atom
brew cask install bettertouchtool
brew cask install caffeine
brew cask install disk-inventory-x
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome
brew cask install google-hangouts
brew cask install hipchat
brew cask install intellij-idea-ultimate
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
brew cask install weka

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
