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


# source ~/.cargo/env

# homebrew
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/hiro/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
