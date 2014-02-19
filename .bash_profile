
export JAVA_HOME=$(/usr/libexec/java_home)

# set umask
umask 0077

EDITOR=VIM
CDPATH=:$HOME
ENV=$HOME/.bash_profile

export EDITOR CDPATH ENV 

# History file
HISTFILE=$HOME/.bash_history
: ${HISTSIZE:=500}
export HISTSIZE

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# set up PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM for Ruby scripting

export PATH TERM

# pull in __git_ps1
source /usr/local/git/contrib/completion/git-prompt.sh

# set up promt
export PS1='$PWD\[\033[01;34m\]$(__git_ps1 " (%s)")\[\033[0m\] $ '

# set up homebrew cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/usr/local/Caskroom"

# force mv, rm and cp to ask user before clobbering file
alias mv="mv -i $*"
alias rm="rm -i $*"
alias cp="cp -i $*"
alias ls="ls -hFG"         # add colors for filetype recognition
alias ll="ls -al"          # show hidden files
alias lx="ls -lXB"         # sort by extension
alias lk="ls -lSr"         # sort by size, biggest last
alias lc="ls -ltcr"        # sort by and show change time, recent last
alias lt="ls -ltr"         # sort by date, recent last
alias lm="ls -al |more"    # pipe through 'more'
alias lr="ls -lR"          # recursive ls
alias g="git"              # faster git!
