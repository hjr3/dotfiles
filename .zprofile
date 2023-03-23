# homebrew
if [ -s /opt/homebrew/bin/brew ]; then
  BREW_PREFIX="/opt/homebrew"
  BREW_PATH="${BREW_PREFIX}/bin/brew"
elif [ -s /usr/local/bin/brew ]; then
  BREW_PREFIX="/usr/local"
  BREW_PATH="${BREW_PREFIX}/bin/brew"
fi

if [ -n "${BREW_PATH}" ]; then
  #homebrew
  eval "$(${BREW_PATH} shellenv)"

  # fnm
  eval "$(fnm env)"
fi;
