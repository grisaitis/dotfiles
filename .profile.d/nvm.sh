export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# something about bash completion
#[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"

# some sort of PATH mod...
#export PATH="$NVM_DIR/versions/node/$(ls $NVM_DIR/versions/node | sort -V | tail -n1)/bin:$PATH"

# lazy load:
#alias nvm="unalias nvm; [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"; nvm $@"
# source for lazy loading:
# https://github.com/nvm-sh/nvm/issues/1277#issuecomment-599019066
