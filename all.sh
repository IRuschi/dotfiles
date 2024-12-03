#!/bin/bash

SOURCE_ANY_SHELL=". ~/.bashrc || . ~/.zshrc"

./install_scripts/base.sh &&
./link.sh &&
${SOURCE_ANY_SHELL}
./built_from_source/neovim/install.sh &&
${SOURCE_ANY_SHELL}
./install_scripts/all_selective.sh
