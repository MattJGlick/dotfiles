#!/bin/bash -ex
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

######## HomeBrew Installation
source homebrew.sh

########## Variables
files="bashrc bash_profile vimrc gitconfig tmux.conf zshrc antigenrc"    # list of files/folders to symlink in homedir

# make directories for vim
mkdir -p ~/.vim
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/swap
mkdir -p ~/.vim/undo
mkdir -p ~/.vim/autoload

# install plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# create symlinks
for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -sf ~/dotfiles/$file ~/.$file
done

git remote set-url origin git@github.com:MattJGlick/dotfiles.git

# prompt user for work envirn
echo "What should the work dir be?"
read work_dir

# make dirs for working
mkdir -p ~/personal
mkdir -p ~/$work_dir

source settings
