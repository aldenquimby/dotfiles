
export JAVA_HOME=$(/usr/libexec/java_home)

# set umask
umask 0022

EDITOR=VIM
CDPATH=:$HOME
ENV=$HOME/.bash_profile

export EDITOR CDPATH ENV TERM

# History file
HISTFILE=$HOME/.bash_history
: ${HISTSIZE:=1000}
export HISTSIZE
export HISTTIMEFORMAT="%d/%m/%y %T "

################
# PATH
################

export PATH=/usr/local/bin:$PATH
export PATH=./node_modules/.bin:$PATH

################
# COLORS
################

COLOR_OFF="\[\033[0m\]"
COLOR_BLACK="\[\033[0;90m\]"
COLOR_RED="\[\033[0;31m\]"
COLOR_GREEN="\[\033[0;92m\]"
COLOR_YELLOW="\[\033[0;93m\]"
COLOR_YELLOW_DIM="\[\033[0;33m\]"
COLOR_BLUE="\[\033[0;94m\]"
COLOR_MAGENTA="\[\033[0;35m\]"
COLOR_CYAN="\[\033[0;96m\]"
COLOR_WHITE="\[\033[0;97m\]"
COLOR_WHITE_DIM="\[\033[0;37m\]"

################
# PROMPT
################

# pull in __git_ps1
for f in /usr/local/etc/bash_completion.d/* ; do source $f; done

# git is aliased to g, need to alias autocompletion
__git_complete g __git_main

# unstaged (*) and staged(+) changes
export GIT_PS1_SHOWDIRTYSTATE="1"
# whether there are stashed ($) changes
export GIT_PS1_SHOWSTASHSTATE="1"
# if there are untracked (%) files
export GIT_PS1_SHOWUNTRACKEDFILES="1"
# if we're ahead (>) or behind (<) or diverged (<>) relative to upstream
export GIT_PS1_SHOWUPSTREAM="auto"
# color hints only work for PROMPT_COMMAND, not PS1, still trying to figure that out
export GIT_PS1_SHOWCOLORHINTS="true"

# build prompt
TIME_12H="\T "
PATH_SHORT="\w "
MONEY_PROMPT=' $ '
export PS1=$COLOR_WHITE_DIM$TIME_12H$COLOR_YELLOW$PATH_SHORT'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    echo "'$COLOR_BLUE'"; \
  else \
    echo "'$COLOR_MAGENTA'"; \
  fi)$(__git_ps1 "(%s)")"; \
fi)'$COLOR_OFF$MONEY_PROMPT

################
# CORE ALIASES
################

# Quicker navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias mv="mv -i $*"        # ask user before clobbering file
alias rm="rm -i $*"        # ask user before clobbering file
alias cp="cp -i $*"        # ask user before clobbering file
alias ls="ls -hFG"         # add colors for filetype recognition
alias ll="ls -al"          # show hidden files
alias lx="ls -lXB"         # sort by extension
alias lk="ls -lSr"         # sort by size, biggest last
alias lc="ls -ltcr"        # sort by and show change time, recent last
alias lt="ls -ltr"         # sort by date, recent last
alias lm="ls -al |more"    # pipe through 'more'
alias lr="ls -lR"          # recursive ls
alias g="git"              # faster git!

################
# ADDITIONAL FILES
################

# now pull in additional files
for f in ~/.bash.d/* ; do source $f; done
