# homebrew
if [ -s /opt/homebrew/bin/brew ]; then
  BREW_PATH="/opt/homebrew/bin/brew"
elif [ -s /usr/local/bin/brew ]; then
  BREW_PATH="/usr/local/bin/brew"
fi

if [ -n "${BREW_PATH}" ]; then
  #homebrew
  eval "$(${BREW_PATH} shellenv)"

  # fnm
  eval "$(fnm env)"
fi;

if [ -d $HOME/.jenv/bin ]; then
  export PATH="$HOME/.jenv/bin:$PATH"
  # manually run the below command because it is very slow on shell startup
  # eval "$(jenv init -)"
fi
