#!/bin/bash
# Simple setup.sh for installing git-tracked dofiles

if [ -d $HOME/.vim/ ]; then
    mv $HOME/.vim $HOME/.vim.old
fi
ln -sb dotfiles/.bash_logout ..
ln -sb dotfiles/.bash_profile ..
ln -sb dotfiles/.bashrc ..
ln -sb dotfiles/.bashrc_custom ..
ln -sb dotfiles/.vimrc ..
ln -sf dotfiles/.vim ..
