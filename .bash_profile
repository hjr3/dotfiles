export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export EDITOR=nvim

if [ -n "$ZSH_VERSION" ]; then
  export PROMPT='%n@%m %~ !! '
elif [ -n "$BASH_VERSION" ]; then
  export PS1='\u@\h \w !! '
fi

# fzf auto completion and key bindings
if [ -n "$ZSH_VERSION" ]; then
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
elif [ -n "$BASH_VERSION" ]; then
  [ -f ~/.fzf.bash ] && source ~/.fzf.bash
fi

export AUTHOR="Herman J. Radtke III"

export PATH=~/bin:/usr/local/git/bin:$PATH

if [ -d "~/.aws" ]; then
  source ~/.aws
fi

export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export HISTSIZE=10000
export HISTFILESIZE=100000

# cargo
export PATH="$HOME/.cargo/bin:$PATH"
# so rust openssl crate can find the openssl installed by homebrew
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig/:$PKG_CONFIG_PATH"

# gcloud
export PATH="$HOME/bin/google-cloud-sdk/bin:$PATH"

# nvm
export NVM_DIR=~/.nvm
source $(/opt/homebrew/bin/brew --prefix nvm)/nvm.sh

alias vi='nvim'
alias vim='nvim'
alias grep='echo "Use rg!"'
alias ls='exa'
alias cat='bat --paging=always'
alias git-branch-delete="git branch --merged | rg -v '(\*|\+)' | xargs -r git branch -d"

#homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
