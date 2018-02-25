# load antigen
source /usr/local/share/antigen/antigen.zsh
antigen init ~/.antigenrc

# virtualenv
export WORKON_HOME=~/virtualenvs
export PROJECT_HOME=~/syapse

# aliases
# because keyboards are hadr
alias gti="git"
alias la="ls -la"
alias burp="brew update && brew upgrade"
alias ragner=ranger
alias dc=docker-compose

# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'"$*"'*' -ls ; }

fbr() {
    local branches branch
    branches=$(git branch -a) &&
    branch=$(echo "$branches" | fzf +s +m -e) &&
    git checkout $(echo "$branch" | sed "s:.* remotes/origin/::" | sed "s:.* ::")
}
