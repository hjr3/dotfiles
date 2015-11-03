export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export EDITOR=vim

export PS1='\u@\h \w !! '
export AUTHOR="Herman J. Radtke III"

export PATH=~/bin:/usr/local/git/bin:$PATH

source ~/.aws

export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export HISTSIZE=10000
export HISTFILESIZE=100000

# boot2docker
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/herman/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export PATH="/usr/local/sbin:$PATH"
