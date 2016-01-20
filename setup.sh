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
if [ -d "../.local/share/nemo/actions" ]; then
    ln -sf ~/dotfiles/.vim.nemo_action ../.local/share/nemo/actions/
fi

# This pulls down the latest copies of the embedded submodule repos
git submodule init && git submodule update && git submodule status

# If you want to add a new submodule, do the following:
#   cd <dir to clone module into>
#   git submodule add <repo URL>

# More concretely: 
#   cd .vim/bundle
#   git submodule add https://github.com/plasticboy/vim-markdown.git
