
export JAVA_HOME=$(/usr/libexec/java_home)

# set umask
umask 0022

EDITOR=VIM
CDPATH=:$HOME
ENV=$HOME/.bash_profile

export EDITOR CDPATH ENV TERM

# History file
HISTFILE=$HOME/.bash_history
: ${HISTSIZE:=500}
export HISTSIZE

################
# PATH
################

export PATH=/usr/local/bin:$PATH
export PATH=$(brew --prefix ruby)/bin:$PATH

################
# COLORS
################

COLOR_OFF="\[\033[0m\]"
COLOR_BLACK="\[\033[0;90m\]"
COLOR_RED="\[\033[0;91m\]"
COLOR_GREEN="\[\033[0;92m\]"
COLOR_YELLOW="\[\033[0;93m\]"
COLOR_BLUE="\[\033[0;94m\]"
COLOR_PURPLE="\[\033[0;95m\]"
COLOR_CYAN="\[\033[0;96m\]"
COLOR_WHITE="\[\033[0;37m\]"

################
# PROMPT
################

# pull in __git_ps1
source /usr/local/git/contrib/completion/git-completion.bash
source /usr/local/git/contrib/completion/git-prompt.sh

# unstaged (*) and staged(+) changes
export GIT_PS1_SHOWDIRTYSTATE="1"
# whether there are stashed ($) changes
export GIT_PS1_SHOWSTASHSTATE="1"
# if there are untracked (%) files
export GIT_PS1_SHOWUNTRACKEDFILES="1"
# if we're ahead (>) or behind (<) or diverged (<>) relative to upstream
export GIT_PS1_SHOWUPSTREAM="auto"

# build prompt
TIME_12H="\T "
PATH_SHORT="\w "
MONEY_PROMPT=' $ '
export PS1=$COLOR_WHITE$TIME_12H$COLOR_YELLOW$PATH_SHORT'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    echo "'$COLOR_CYAN'"; \
  else \
    echo "'$COLOR_PURPLE'"; \
  fi)$(__git_ps1 "(%s)")"; \
fi)'$COLOR_OFF$MONEY_PROMPT

################
# HOMEBREW
################

# https://github.com/phinze/homebrew-cask/blob/master/USAGE.md#options
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

################
# CORE ALIASES
################

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
# GITHUB
################

eval "$(hub alias -s)"

################
# MAVEN
################

# maven quiet => fix maven logging, no other way to set default level to warn
mvnq()   { mvn "$@" > >(egrep -v "(^\[INFO\])") ; }
mvnrun() { echo mvn $@ ; eval mvn $@ ; }
mvnct()  { echo $1 | xargs | mvnrun clean test -DfailIfNoTests=false -Dtest=$1 ; }
mvncit() { echo $1 | xargs | mvnrun clean verify -DfailIfNoTests=false -Dtest=$1 -Dit.test=$1 ; }
mvndb()  { cd migration ; mvn initialize flyway:migrate ; cd .. ; }
mvndbc() { cd migration ; mvn initialize flyway:clean flyway:migrate ; cd .. ; }
mvndbr() { cd migration ; mvn initialize flyway:repair flyway:migrate ; cd .. ; }
mvnpkg() { mvn clean package -T 2C -Dmaven.test.skip=true ; }
