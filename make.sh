#!/bin/bash -ex
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

######### HomeBrew Installation
#if [ -a homebrew.sh ]; then
    #./homebrew.sh
#fi

########## Variables
files="bashrc vimrc gitconfig tmux.conf"    # list of files/folders to symlink in homedir

# make directories for vim
#mkdir ~/.vim
#mkdir ~/.vim/backup
#mkdir ~/.vim/swap
#mkdir ~/.vim/undo
#mkdir ~/.vim/autoload

# install plugged
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# create symlinks
for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s ~/dotfiles/$file ~/.$file
done
