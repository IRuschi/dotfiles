#!/bin/bash

sudo apt install tmux 
sudo npm install -g @angular/cli

# https://github.com/starship/starship
curl -sS https://starship.rs/install.sh | sh
starship preset nerd-font-symbols -o ~/.config/starship.toml

# https://github.com/zdharma-continuum/zinit?tab=readme-ov-file#automatic
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

zcompile ~/.zshrc
