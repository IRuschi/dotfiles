#!/bin/bash
# https://www.lunarvim.org/docs/installation

sudo apt install python3-pynvim
bash ~/.local/share/lunarvim/lvim/utils/installer/uninstall.sh

sudo apt-get -y install luarocks xclip
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
