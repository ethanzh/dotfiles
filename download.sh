#!/bin/sh

echo "Pulling from GitHub"
git pull

echo "Copying files"
echo ".vimrc -> ~/.vimrc"
cp .vimrc ~/.vimrc
echo ".zshrc -> ~/.zshrc"
cp .zshrc ~/.zshrc

echo "Done!"
