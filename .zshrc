# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# set alias for dotfiles git repo
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# poetry
export PATH="$HOME/.poetry/bin:$PATH"

# android sdk
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools

# go
if [[ -x $(command -v go) ]]; then
  # if go command is available...
  export GOPATH=$(go env GOPATH)
  export GOROOT=$(go env GOROOT)
  export PATH="$PATH:${GOPATH}/bin"
fi

# antigen
source /Users/william/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# official plugins
antigen bundle brew
antigen bundle colored-man-pages
antigen bundle command-not-found
antigen bundle dotenv  # Auto load .env file when you cd into project root directory
antigen bundle gcloud  # install: brew install --cask google-cloud-sdk
antigen bundle git
antigen bundle pyenv
antigen bundle rbenv
antigen bundle terraform
antigen bundle vscode

# third-party plugins
antigen bundle lukechilds/zsh-nvm
antigen bundle "MichaelAquilina/zsh-you-should-use"
antigen bundle sineto/web-search
antigen bundle zsh-users/zsh-syntax-highlighting

# not using
#antigen bundle golang
#antigen bundle nvm
#antigen bundle davidparsson/zsh-nvm-lazy  # only for official nvm plugin?
#antigen bundle rust
#antigen bundle cowboyd/zsh-rust  # error installing
#antigen bundle heroku
#antigen bundle lein
#antigen bundle pip
#antigen bundle darvid/zsh-poetry

# Load the theme.
# antigen theme robbyrussell
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
