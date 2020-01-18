for file in $(ls ~/.profile.d/*.sh); do
    source $file
done

# ........ PATH edits

export PATH="/usr/local/sbin:$PATH"

# android tools
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# poetry
export PATH="$HOME/.poetry/bin:$PATH"

# ruby
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"

# ........ setup scripts

# rbenv
eval "$(rbenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

