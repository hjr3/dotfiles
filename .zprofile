# nvm
export NVM_DIR=~/.nvm
source $(/opt/homebrew/bin/brew --prefix nvm)/nvm.sh

#homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="$HOME/.jenv/bin:$PATH"
# this is very slow
# eval "$(jenv init -)"
