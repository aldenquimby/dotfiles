#!/bin/bash

# install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew update

# homebrew taps
brew tap phinze/cask
brew tap jimbojsb/launchrocket

# homebrew apps
brew install brew-cask
brew install git
brew install heroku-toolbelt
brew install hub
brew install maven
brew install mongodb
brew install mysql
brew install neo4j
brew install node
brew install nginx
brew install postgresql
brew install redis

# cask apps
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
brew cask install skydrive
brew cask install skype
brew cask install sublime-text
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
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
neo4j install
ln -sfv /usr/local/opt/nginx/*.plist ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents

# verify
brew doctor
