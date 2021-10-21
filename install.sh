#!/bin/bash

DOTFILES=$HOME/dotfiles
echo "creating symlinks"
linkables=$(ls -1 *.symlink)

for file in $linkables; do
  target="$HOME/.$(basename $file ".symlink")"
  echo "creating symlink for $file"
  ln -s $DOTFILES/$file $target
done
