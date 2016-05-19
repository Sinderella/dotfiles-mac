#!/usr/bin/env sh

# Pulling itself
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Update
brew update
brew upgrade
antigen update
nvim +PlugUpdate
