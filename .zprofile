# homebrew
if [ -s /opt/homebrew/bin/brew ]; then
  BREW_PATH="/opt/homebrew/bin/brew"
elif [ -s /usr/local/bin/brew ]; then
  BREW_PATH="/usr/local/bin/brew"
fi

if [ -n "${BREW_PATH}" ]; then
  # nvm
  export NVM_DIR=~/.nvm
  source $(${BREW_PATH} --prefix nvm)/nvm.sh --no-use

  #homebrew
  eval "$(${BREW_PATH} shellenv)"
fi;

if [ -d $HOME/.jenv/bin ]; then
  export PATH="$HOME/.jenv/bin:$PATH"
  # manually run the below command because it is very slow on shell startup
  # eval "$(jenv init -)"
fi
