#!/bin/bash

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# homebrew taps
brew tap caskroom/cask
brew tap caskroom/versions
brew tap homebrew/services
brew tap homebrew/versions

# homebrew apps
brew install brew-cask
brew install git
brew install gnupg
brew install heroku-toolbelt
brew install hub
brew install nginx
brew install node
brew install sshrc
# some packages may be installed automatically:
#   icu4c   - for node
#   openssl - for node, nginx
#   pcre    - for git, node

# DBs and other services will be on a VM, no need to add them
# brew install elasticsearch mariadb mongodb neo4j postgresql redis

# cask apps that need to happen early
brew cask install java

# cask apps
brew cask install bettertouchtool
brew cask install caffeine
brew cask install disk-inventory-x
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome
brew cask install google-hangouts
brew cask install intellij-idea
brew cask install jd-gui
brew cask install kdiff3
brew cask install rdm
brew cask install skype
brew cask install slack
brew cask install sublime-text3
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc

# homebrew apps that depend on cask apps
brew install maven
brew install scala

# cask quick look plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql suspicious-package

# launch some things on startup
sudo brew services start nginx

# verify
brew doctor

# sublime packages
# SideBarEnhancements
# SublimeCodeIntel
# HTML5
# LESS
# Pretty JSON
