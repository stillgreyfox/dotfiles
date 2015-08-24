#!/bin/bash
# Simple setup.sh for installing git-tracked dofiles

if [ -d $HOME/emacs.d/ ]; then
    mv $HOME/.emacs.d $HOME/.emacs.d.old
fi
if [ -d $HOME/.vim/ ]; then
    mv $HOME/.vim $HOME/.vim.old
fi
ln -sb dotfiles/.screenrc ..
ln -sb dotfiles/.bash_logout ..
ln -sb dotfiles/.bash_profile ..
ln -sb dotfiles/.bashrc ..
ln -sb dotfiles/.bashrc_custom ..
ln -sb dotfiles/.vimrc ..
ln -sf dotfiles/.emacs.d ..
ln -sf dotfiles/.vim ..
