#!/usr/bin/env bash
set -e

# Install vim stuff
cp -r amix_vimrc/ ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
