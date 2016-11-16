#!/usr/bin/env bash
set -e

# takes 2 arguments, file and var
# if var not in file, append it
function append_if_not_exists {
    if ! grep -qe "^$2$" $1; then
        echo $2 >> $1
        echo "Appended $2 in $1"
    else
        echo "$2 was already in $1"
    fi
}

###############################################
# Install vim stuff
cp -r amix_vimrc/ ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Disable ctrl+s in .bashrc for multiple cursors to work
append_if_not_exists ~/.bashrc "stty -ixon"

# Set vim as default editor
append_if_not_exists ~/.bashrc "export EDITOR=vim"


##############################################
# Copy our bash aliases to ~/.bash_aliases
cp bash_aliases ~/.bash_aliases
