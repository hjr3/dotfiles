export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export EDITOR=nvim

export PS1='\u@\h \w !! '
export AUTHOR="Herman J. Radtke III"

export PATH=~/bin:/usr/local/git/bin:$PATH

if [ -d "~/.aws" ]; then
  source ~/.aws
fi

export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/

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

# fzf auto completion and key bindings
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias vi='nvim'
alias vim='nvim'
alias grep='echo "Use rg!"'
alias ls='exa'
alias cat='bat --paging=always'
