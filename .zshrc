# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

###############################################
# GENERAL
###############################################

# Auto-update every 30 days
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 30

# Enable command auto-correction
ENABLE_CORRECTION="true"

export EDITOR='vim'

###############################################
# THEME. See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
###############################################
ZSH_THEME="robbyrussell"
# Add time in yellow to prompt. 3 directories instead of 1.
export PROMPT='%{$fg[yellow]%}%T %{$fg[cyan]%}%3~%{$reset_color%} $(git_prompt_info)'
# "g" instead of "git" to shorten prompt
export ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}g:(%{$fg[red]%}"
export ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
export ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
export ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

###############################################
# GIT
###############################################

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

###############################################
# PLUGINS
###############################################

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(1password aws gh git node npm nvm sublime)

###############################################
# oh-my-zsh. run `alias` to see active aliases.
###############################################

source $ZSH/oh-my-zsh.sh
