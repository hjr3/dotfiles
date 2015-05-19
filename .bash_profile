export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export EDITOR=vim

export PS1='\u@\h \w !! '
export AUTHOR="Herman J. Radtke III"

export PATH=~/bin:/usr/local/git/bin:$PATH

source ~/.aws

export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/

source /usr/local/share/chruby/chruby.sh
chruby ruby-1.9
source /usr/local/share/chruby/auto.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export HISTSIZE=10000
export HISTFILESIZE=100000
