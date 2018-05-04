# load antigen
source /usr/local/share/antigen/antigen.zsh
antigen init ~/.antigenrc

# virtualenv
export WORKON_HOME=~/virtualenvs
export PROJECT_HOME=~/syapse
source /usr/local/bin/virtualenvwrapper.sh

# aliases
# because keyboards are hadr
alias gti="git"
alias la="ls -la"
alias burp="brew update && brew upgrade"
alias ragner=ranger
alias dc=docker-compose
# alias "dc restart"="dc stop && dc start"

# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'"$*"'*' -ls ; }

fbr() {
    local branches branch
    branches=$(git branch -a) &&
    branch=$(echo "$branches" | fzf +s +m -e) &&
    git checkout $(echo "$branch" | sed "s:.* remotes/origin/::" | sed "s:.* ::")
}

export GPG_AGENT_INFO="~/.gnupg/S.gpg-agent:$(pgrep gpg-agent):1"
eval $(keychain --eval --quiet --agents gpg,ssh id_rsa F958C04DE2C60956)

### SPACESHIP CONFIG
# ORDER
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  node          # Node.js section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  pyenv         # Pyenv section
  kubecontext   # Kubectl context section
  exec_time     # Execution time
  battery       # Battery level and status

  # Line break
  line_sep      # Line break
  char          # Prompt character
)

# USER
SPACESHIP_USER_PREFIX="" # remove `with` before username
SPACESHIP_USER_SUFFIX="" # remove space before host

# DIR
SPACESHIP_DIR_PREFIX=""

# GIT
# Disable git symbol
SPACESHIP_GIT_SYMBOL="" # disable git prefix
SPACESHIP_GIT_BRANCH_PREFIX="" # disable branch prefix too
# Wrap git in `git:(...)`
SPACESHIP_GIT_PREFIX='git:('
SPACESHIP_GIT_SUFFIX=") "
SPACESHIP_GIT_BRANCH_SUFFIX="" # remove space after branch name
# Unwrap git status from `[...]`
SPACESHIP_GIT_STATUS_PREFIX=""
SPACESHIP_GIT_STATUS_SUFFIX=""

# VENV
SPACESHIP_VENV_PREFIX="venv:("
SPACESHIP_VENV_SUFFIX=") "

# PYENV
SPACESHIP_PYENV_PREFIX="python:("
SPACESHIP_PYENV_SUFFIX=") "
SPACESHIP_PYENV_SYMBOL=""

# KUBE
SPACESHIP_KUBECONTEXT_PREFIX="kube:("
SPACESHIP_KUBECONTEXT_SUFFIX=") "
SPACESHIP_KUBECONTEXT_SYMBOL=""

# EXEC TIME
SPACESHIP_EXEC_TIME_ELAPSED=0

# BATTERY
SPACESHIP_BATTERY_PREFIX=" - "
SPACESHIP_BATTERY_THRESHOLD=25
