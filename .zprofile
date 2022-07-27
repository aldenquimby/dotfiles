# For login shells. Sourced before .zshrc

# Default file permissions
umask 0022

##################
# HOMEBREW
##################
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export HOMEBREW_NO_ANALYTICS=1
eval "$(/opt/homebrew/bin/brew shellenv)"


#################
# PATH
#################
export PATH=/opt/homebrew/opt/openjdk/bin:$PATH
export PATH=/opt/homebrew/opt/postgresql@12/bin:$PATH
export PATH=./node_modules/.bin:$PATH


#################
# NODE
#################
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
