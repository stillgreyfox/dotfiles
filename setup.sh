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

# This pulls down the old copies of the embedded submodule repos
# (how old depends on when submodule changes were last committed to this repo)
git submodule init && git submodule update && git submodule status

# This line will actually update the submodules
# (will leave to user to commit versions to dotfiles)
git submodule foreach git pull origin master

# If you want to add a new submodule, do the following:
#   cd <dir to clone module into>
#   git submodule add <repo URL>

# More concretely: 
#   cd .vim/bundle
#   git submodule add https://github.com/plasticboy/vim-markdown.git
