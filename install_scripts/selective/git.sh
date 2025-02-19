#!/bin/bash


git config --global core.editor lvim &&
git config --global init.defaultBranch main &&
git config --global help.autocorrect 10 &&
git config --global bash.showDirtyState true &&
git config --global bash.showUntrackedFiles true &&
git config --global pull.rebase true &&
git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager.exe"
git config --global user.email "run9bue@bosch.com"
git config --global user.name "Nico Ruschmann"
