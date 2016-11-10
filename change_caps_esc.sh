#!/usr/bin/env bash
set -e

# Try to remove Caps lock, or fail silently
xmodmap -e "remove lock = Caps_Lock" &> /dev/null || \
    echo "Could not remove Caps lock binding..."
# Remap Caps lock to Escape
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
# Create a file ~/.xmodmap with the current remaps
xmodmap -pke > ~/.xmodmap
# Load this file on every session
VAR="xmodmap ~/.xmodmap"
if ! grep -qe "^$VAR$" ~/.xinitrc; then
    echo $VAR >> ~/.xinitrc
    echo "Remapped Caps lock to Escape permanently, see ~.xinitrc to re-enable"
else
    echo "Xmodmap was already loading ~/.xmodmap in ~/.xinitrc"
fi
