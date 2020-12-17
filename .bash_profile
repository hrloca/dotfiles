# prompt
export PS1="$ "

set -o vi
test -r ~/.bashrc && . ~/.bashrc

PATH=$PATH:${HOME}/.gitignore_global
PATH=/usr/local/bin:$PATH
PATH=$PATH:./node_modules/.bin
PATH=$PATH:${HOME}/local/bin

export PATH
export XDG_CONFIG_HOME=~/.config

test -r ~/.bash_profile.local && source ~/.bash_profile.local

export PATH="$HOME/.cargo/bin:$PATH"

source ~/.cargo/env
