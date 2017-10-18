#!/usr/bin/env bash
stow zsh

stow compton
stow dunst
stow fonts
stow gtk
stow i3
stow nitrogen
stow polybar
#stow ranger
stow rc
stow termite
stow themes
#stow bins

# git
stow git
git submodule update --init --recursive

# nvim
stow nvim
pip3 install --user neovim
nvim +PlugInstall +qall

# zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
touch "$HOME/.local_paths"
