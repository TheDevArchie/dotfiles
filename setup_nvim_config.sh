#!/bin/bash

user_directory=$HOME
dot_config_dir="$HOME/.config"

cd ~/

git clone --depth 1 https://github.com/wbthomason/packer.nvim\\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Get dotfiles
git clone https://github.com/spicy-spice-dev/dotfiles.git

rm -rf ~/.config/nvim

# Create symlinks
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/nvim_plugins/packer
