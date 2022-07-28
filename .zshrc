source /Users/william/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# golang
#antigen bundle golang

# google-cloud-sdk
# install: brew install --cask google-cloud-sdk
antigen bundle gcloud

# homebrew
antigen bundle brew

# nvm
#antigen bundle nvm
#antigen bundle davidparsson/zsh-nvm-lazy  # only for official nvm plugin?
antigen bundle lukechilds/zsh-nvm

# poetry
antigen bundle darvid/zsh-poetry

# pyenv
antigen bundle pyenv

# rbenv
antigen bundle rbenv

# rust
#antigen bundle rust
#antigen bundle cowboyd/zsh-rust  # error installing

# other bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle colored-man-pages
antigen bundle command-not-found
antigen bundle dotenv  # Auto load .env file when you cd into project root directory
antigen bundle git
#antigen bundle heroku
#antigen bundle lein
#antigen bundle pip
antigen bundle terraform
antigen bundle vscode

# other stuff
antigen bundle "MichaelAquilina/zsh-you-should-use"
antigen bundle sineto/web-search
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply
