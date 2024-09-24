export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export EDITOR=nvim

export PROMPT='%n@%m %~ !! '

export AUTHOR="Herman J. Radtke III"

export HISTSIZE=100000
export SAVEHIST=$HISTSIZE

# fix zsh of tab completion of git commands being slow
# https://superuser.com/a/459057
__git_files () {
    _wanted files expl 'local files' _files
}

# prevent history from recording duplicated entries
setopt hist_ignore_all_dups

# share history between sessions
setopt inc_append_history

# remove command lines from the history list when the first character on the line is a space
setopt hist_ignore_space

export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/ripgrep.conf"

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

pathadd "/usr/local/heroku/bin"

source $HOME/.cargo/env
PATH="$HOME/.cargo/bin:$PATH"

# so rust openssl crate can find the openssl installed by homebrew
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig/:$PKG_CONFIG_PATH"

pathadd "$HOME/bin/google-cloud-sdk/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "/Users/${USER}/bin/google-cloud-sdk/path.zsh.inc" ]; then
  source "/Users/${USER}/bin/google-cloud-sdk/path.zsh.inc"
fi

if [ -n "${BREW_PATH}" ]; then
  # fzf auto completion and key bindings
  source $($BREW_PATH --prefix fzf)/shell/completion.zsh
  source $($BREW_PATH --prefix fzf)/shell/key-bindings.zsh
fi

alias vi='nvim'
alias vim='nvim'
alias ls='eza'
alias cat='bat --paging=always'
alias git-branch-delete="git branch --merged | rg -v '(\*|\+)' | xargs -r git branch -d"

# reverse search
bindkey -v
bindkey '^R' history-incremental-search-backward

# Make forward/backward word behavior work like bash
autoload -Uz select-word-style
select-word-style bash

INC_DIR="$HOME/.zshrc.d"
if [[ -d "$INC_DIR" && -r "$INC_DIR" && -x "$INC_DIR" ]]; then
  for file in "$INC_DIR"/*; do
    [[ -f "$file" && -r "$file" ]] && source "$file"
  done
fi

# switch zsh back to emacs mode
bindkey -e
