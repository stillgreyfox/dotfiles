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
cp -a dotfiles/.vim ..
# symlinks above are just copies, but for the .vim/ dir, need a recursive copy

# This should pull down the latest remote HEAD of the embedded submodule repos
# (how old depends on when submodule changes were last committed to this repo)
git submodule init && git submodule update --remote && git submodule status

# If the above doesn't pull with the update --remote,
# then this line will actually update the submodules
# (will leave to user to commit versions to dotfiles)
#git submodule foreach git pull origin master

# If you want to add a new submodule, do the following:
#   cd <dir to clone module into>
#   git submodule add <repo URL>

# More concretely: 
#   cd .vim/bundle
#   git submodule add https://github.com/plasticboy/vim-markdown.git
