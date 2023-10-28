#!/bin/bash

mkdir -p "$HOME/.config/alacritty"
mkdir -p "$HOME/.config/lvim/spell"
# mkdir -p "$HOME/.config/lvim/lua"
mkdir -p "$HOME/.local/share/lunarvim/site/pack/lazy/opt/nvim-treesitter/spell"
mkdir -p "$HOME/.repos"
mkdir -p "$HOME/.tmux/plugins"

dirs_to_link=(
  ".config/lvim/lua/"
  ".repos/antigen/"
  ".repos/gnome-shell-extension-clipboard-indicator/"
  ".tmux/plugins/tpm/"
)

# why not wokring with lua dir?
ln --symbolic "$(pwd)/.config/lvim/lua/" --target-directory="${HOME}/.config/lvim/" &&

for item in ${dirs_to_link[@]}; do
  from="$(pwd)/$item"
  to="$HOME/$item"

  filename=$(basename "$from")

  echo "DIRECTORY: $from -> $to"
  ln --symbolic "$from" --target-directory="$to" &&
  rm -rf $from/$filename
done

# ----------------------------------------------------------------------------------------------------

files_to_link=(
  ".config/alacritty/alacritty.toml"
  ".config/lvim/config.lua"
  ".config/lvim/spell/de.utf-8.spl"
  ".config/lvim/spell/de.utf-8.sug"
  ".local/share/lunarvim/site/pack/lazy/opt/nvim-treesitter/spell/en.utf-8.add"
  ".local/share/lunarvim/site/pack/lazy/opt/nvim-treesitter/spell/en.utf-8.add.spl"
  ".antigenrc"
  ".vale.ini"
  ".tmux.conf"
  ".zshrc"
)

for item in ${files_to_link[@]}; do
  from="$(pwd)/$item"
  to=$HOME/$item
  echo "FILE: $from -> $to"
  ln --symbolic --force "$from" "$to"
done
