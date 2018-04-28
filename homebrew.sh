#!/bin/bash -e

which -s brew && brew update
which -s brew || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

if ! brew doctor; then
  echo "\`brew doctor\` failed. Please resolve issues before continuing."
  exit 1
fi

brew tap homebrew/binary

formulae=(
  bash-completion
  caskroom/cask/brew-cask
  cloc
  coreutils
  docker
  docker-compose
  dos2unix
  fpp
  fzf
  git
  helm
  heroku
  heroku-toolbelt
  kubectl
  kubectx
  kops
  macvim
  mysql
  node
  nvm
  phantomjs
  pyenv-virtualenvwrapper
  python
  ranger
  reattach-to-user-namespace
  slackcat
  the_silver_searcher
  tmux
  tree
  wget
)

casks=(
  alfred
  dropbox
  google-chrome
  iterm2  
  skype
  slack
  spectacle
  sublime-text
  teamviewer
  virtualbox
  vlc
)

for formula in "${formulae[@]}"; do
  brew install $formula || brew upgrade $formula
done

for cask in "${casks[@]}"; do
  brew cask install $cask
done
