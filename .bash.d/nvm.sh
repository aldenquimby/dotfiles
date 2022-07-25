export NVM_DIR="$HOME/.nvm"

# Load NVM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"

# Bash completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -s "/usr/local/etc/bash_completion.d/nvm" ] && \. "/usr/local/etc/bash_completion.d/nvm"

export NODE_PATH=`which node`

# increase default node RAM from 512mb to 2gb
export NODE_OPTIONS=--max_old_space_size=2048

# below doesn't seem to actually work. i need to specify within each npm command
# alias npm='node --max-old-space-size=2048 /usr/local/bin/npm'
