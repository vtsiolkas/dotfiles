#!/usr/bin/env bash
set -e

# Install vim stuff
cp -r amix_vimrc/ ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Disable ctrl+s in .bashrc for multiple cursors to work
VAR="stty -ixon"
if ! grep -qe "^$VAR$" ~/.bashrc; then
    echo $VAR >> ~/.bashrc
    echo "Disabled ctrl+s in .bashrc"
else
    echo "ctrl+s was already disabled in .bashrc"
fi
