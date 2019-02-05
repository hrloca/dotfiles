# prompt
export PS1="$ "

set -o vi
source ~/.bashrc

PATH=$PATH:${HOME}/.gitignore_global
PATH=/usr/local/bin:$PATH
PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$PATH:./node_modules/.bin
export PATH
test -r ~/.bash_profile.local && source ~/.bash_profile.local
