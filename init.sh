#!/bin/bash

set -euo pipefail

# Directory of this script.
FILES_DIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# List of dotfiles.
FILES="vim tmux.conf zshrc hammerspoon"

for FILE in $FILES; do
    ln -s "$FILES_DIR/$FILE" "$HOME/.$FILE"
done

# Set up the ~/.vimrc to point to my configuration.
echo 'source ~/.vim/configuration.vim' > ~/.vimrc
echo 'source ~/.vim/configuration.vim' > ~/.nvimrc
mkdir -p ~/.config/nvim
echo 'source ~/.vim/configuration.vim' > ~/.config/nvim/init.vim

# Install Vundle.
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Oh-My-Zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

# Install Oh-My-Zsh custom plugins.
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Install all Vundle plugins.
vim +PluginInstall +qall
