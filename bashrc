[[ $- = *i* ]] || return

#add git branch to prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

#autocomplete git branches
# if [ -f `brew --prefix`/etc/bash_completion ]; then
#    . `brew --prefix`/etc/bash_completion
# fi

# virtualenv
export WORKON_HOME=~/virtualenvs
export PROJECT_HOME=~/syapse
# source /usr/local/bin/virtualenvwrapper.sh

# aliases
# because keyboards are hadr
alias gti="git"
alias la="ls -la"
alias burp="brew update && brew upgrade"
alias ragner=ranger

# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'"$*"'*' -ls ; }

fbr() {
    local branches branch
    branches=$(git branch -a) &&
    branch=$(echo "$branches" | fzf +s +m -e) &&
    git checkout $(echo "$branch" | sed "s:.* remotes/origin/::" | sed "s:.* ::")
}

eval $(keychain --eval --quiet --confhost id_rsa /home/glick/.ssh/id_rsa)
