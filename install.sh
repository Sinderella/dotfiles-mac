#!/usr/bin/env sh

export DOTFILES_DIR ZSH

# Current dir: https://stackoverflow.com/a/246128
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ZSH="$HOME/.dotfiles/oh-my-zsh"

# Pulling itself
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Install
. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/cask.sh"
. "$DOTFILES_DIR/install/neovim.sh"
. "$DOTFILES_DIR/install/tmux.sh"
. "$DOTFILES_DIR/install/zsh.sh"
. "$DOTFILES_DIR/install/iterm2.sh"

# Symlink
ln -sfv "$DOTFILES_DIR/startup/zshrc" ~/.zshrc
ln -sfv "$DOTFILES_DIR/git/gitconfig" ~/.gitconfig
ln -sfv "$DOTFILES_DIR/git/gitmessage" ~/.gitmessage
ln -sfv "$DOTFILES_DIR/git/gitignore_global" ~/.gitignore_global
ln -sfv "$DOTFILES_DIR/cfg/hammerspoon" ~/.hammerspoon
ln -sfv "$DOTFILES_DIR/startup/nvimrc" ~/.nvimrc
ln -sfv "$DOTFILES_DIR/startup/aliases" ~/.aliases
ln -sfv ~/.nvimrc ~/.config/nvim/init.vim

# Other config
mkdir ~/.nvm

