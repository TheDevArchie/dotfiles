#!/bin/bash

user_directory=$HOME
dot_config_dir="$HOME/.config"

function create_config_dir() {
	mkdir "$dot_config_dir"
}

# Setup top level .config file
if [ -d "$dot_config_dir" ]; then
	echo ".config directory exists already"
else
	echo ".config directory doesn't exist"
	create_config_dir
fi


if [ -d "$dot_config_dir/nvim" ];
then
	echo "~/.config/nvim directory exists"
fi

echo $dot_config_dir


