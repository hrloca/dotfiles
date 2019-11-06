# prompt
export PS1="$ "

set -o vi
source ~/.bashrc

PATH=$PATH:${HOME}/.gitignore_global
PATH=/usr/local/bin:$PATH
PATH=$PATH:./node_modules/.bin
PATH=$PATH:${HOME}/local/bin

export PATH
export XDG_CONFIG_HOME=~/.config
test -r ~/.bash_profile.local && source ~/.bash_profile.local

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/suda-h/google-cloud-sdk/path.bash.inc' ]; then . '/Users/suda-h/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/suda-h/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/suda-h/google-cloud-sdk/completion.bash.inc'; fi
