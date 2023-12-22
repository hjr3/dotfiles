# homebrew
if [ -s /opt/homebrew/bin/brew ]; then
  BREW_PREFIX="/opt/homebrew"
elif [ -s /usr/local/bin/brew ]; then
  BREW_PREFIX="/usr/local"
fi

if [ -n "${BREW_PREFIX}" ]; then
  #homebrew
  BREW_PATH="${BREW_PREFIX}/bin/brew"
  eval "$(${BREW_PATH} shellenv)"

  # fnm
  eval "$(fnm env)"
fi;
