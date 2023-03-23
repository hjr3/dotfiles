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


# install using:
# brew tap sdkman/tap
# brew install sdkman-cli
#
# generally a good idea to install the maven sdk as well via:
# sdk install maven
#
# you may need to install java versions no longer supported by sdkman
# install them via brew (or manually)
# use `/usr/libexec/java_home -V` to find the path
# sdk install java 15.0.2-open /Library/Java/JavaVirtualMachines/adoptopenjdk-15.jdk/Contents/Home

# note: we do not use $(brew --prefix sdkman-cli) because it is slow
export SDKMAN_DIR="${BREW_PREFIX}/opt/sdkman-cli/libexec"
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"
