#!/bin/bash -e

which -s brew && brew update
which -s brew || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

if ! brew doctor; then
  echo "\`brew doctor\` failed. Please resolve issues before continuing."
  exit 1
fi

brew tap homebrew/binary

formulae=(
  caskroom/cask/brew-cask
  bash-completion
  cloc
  docker
  docker-compose
  git
  heroku
  heroku-toolbelt
  macvim
  mysql
  node
  nvm
  phantomjs
  pyenv-virtualenvwrapper
  python
  slackcat
  tmux
  tree
  wget
  fpp
)

casks=(
  alfred
  dropbox
  google-chrome
  iterm2  
  skype
  slack
  spectacle
  #sublime-text3
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
