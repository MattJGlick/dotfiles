[[ $- = *i* ]] || return

#add git branch to prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

#autocomplete git branches
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# virtualenv
export WORKON_HOME=~/virtualenvs
export PROJECT_HOME=~/syapse
source /usr/local/bin/virtualenvwrapper.sh

# aliases
# because keyboards are hadr
alias gti="git"
alias la="ls -la"

# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'"$*"'*' -ls ; }

# node version manager
export NVM_DIR="$HOME/.nvm"
    . "$(brew --prefix nvm)/nvm.sh"
