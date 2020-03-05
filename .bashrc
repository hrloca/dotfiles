export EDITOR=vim

alias nv='nvim'

# git
alias g='git'
for a in $(git config --list | grep -E '^alias\.' | sed -E 's/^alias\.([^=]+)=.+$/\1/'); do
  alias "g${a}=git ${a}"
done

# docker
alias d='docker'
alias dcom='docker-compose'

# k8s
alias k='kubectl'
alias kc='kubectl config'

# npm
alias nr='npm run'
alias yr='yarn run'

# paco app
alias o='ls /Applications | grep ".app" | peco | xargs -I{} open -a "/Applications/{}"'

eval "$(direnv hook bash)"
