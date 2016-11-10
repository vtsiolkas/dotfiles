#!/usr/bin/env bash
set -e

. setup_vim.sh
. change_caps_esc.sh

# Copy our bash aliases to ~/.bash_aliases
cp bash_aliases ~/.bash_aliases
