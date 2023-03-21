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
export SDKMAN_DIR=$(brew --prefix sdkman-cli)/libexec
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"
