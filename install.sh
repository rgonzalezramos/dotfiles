#!/bin/bash

set -e

echo "[*] Fetching external repositories..."
git submodule init
git submodule update

echo "[*] Creating .secrets file..."
touch $HOME/.secrets

echo "[*] Making sure ~/dev/opt/bin exists"
mkdir -p ~/dev/opt/bin

# Symlink bin and all dot folders
targets="bin `ls -A  | grep '^\.' | grep -v .git`"
for target in $targets
do
  echo "[*] Creating symlink `pwd`/$target -> $HOME/$target"
  ln -s -i `pwd`/$target $HOME/
done

echo "[*] SUCCESS"

