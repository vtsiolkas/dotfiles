#!/usr/bin/env bash
set -e

# Install vim stuff
cp -r amix_vimrc/ ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Disable ctrl+s in .bashrc for multiple cursors to work
append_if_not_exists ~/.bashrc "stty -ixon"

# Set vim as default editor
append_if_not_exists ~/.bashrc "export EDITOR=vim"

