export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export EDITOR=nvim

export PROMPT='%n@%m %~ !! '

export AUTHOR="Herman J. Radtke III"

export HISTSIZE=10000
export HISTFILESIZE=100000

if [ -d "~/.aws" ]; then
  source ~/.aws
fi

# https://superuser.com/a/39995
pathadd() {
  if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
    PATH="${PATH:+"$PATH:"}$1"
  fi
}

pathadd "$HOME/bin"

export EC2_HOME=~/.ec2
pathadd "$EC2_HOME/bin"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home

pathadd "/usr/local/heroku/bin"

source $HOME/.cargo/env
pathadd "$HOME/.cargo/bin"

# so rust openssl crate can find the openssl installed by homebrew
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig/:$PKG_CONFIG_PATH"

pathadd "$HOME/bin/google-cloud-sdk/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "/Users/${USER}/bin/google-cloud-sdk/path.zsh.inc" ]; then
  source "/Users/${USER}/bin/google-cloud-sdk/path.zsh.inc"
fi

# The next line enables shell command completion for gcloud.
if [ -f "/Users/${USER}/bin/google-cloud-sdk/completion.zsh.inc" ]; then
  source "/Users/${USER}/bin/google-cloud-sdk/completion.zsh.inc"
fi

if [ -n "${BREW_PATH}" ]; then
  # fzf auto completion and key bindings
  source $($BREW_PATH --prefix fzf)/shell/completion.zsh
  source $($BREW_PATH --prefix fzf)/shell/key-bindings.zsh
fi

alias vi='nvim'
alias vim='nvim'
alias ls='exa'
alias cat='bat --paging=always'
alias git-branch-delete="git branch --merged | rg -v '(\*|\+)' | xargs -r git branch -d"

# reverse search
bindkey -v
bindkey '^R' history-incremental-search-backward

INC_DIR="$HOME/.zshrc.d"
if [[ -d "$INC_DIR" && -r "$INC_DIR" && -x "$INC_DIR" ]]; then
  for file in "$INC_DIR"/*; do
    [[ -f "$file" && -r "$file" ]] && source "$file"
  done
fi

# switch zsh back to emacs mode
bindkey -e

# add default node version to path
pathadd "$HOME/.nvm/versions/node/v16.14.2/bin"
