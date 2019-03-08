#!/bin/sh

# This file copies files from Git into local

echo "Pulling from GitHub"
git pull

echo "Which files would you like to copy?:"
echo "(1): .vimrc"
echo "(2): .zshrc"
echo "(3): all"
read choice

if [ "$choice" -eq "1" ]; then
	echo ".vimrc -> ~/.vimrc"
	cp .vimrc ~/.vimrc
fi

if [ "$choice" -eq "2" ]; then
	echo ".zshrc -> ~/.zshrc"
	cp .zshrc ~/.zshrc
fi

if [ "$choice" -eq "3" ]; then
	echo ".vimrc -> ~/.vimrc"
	cp .vimrc ~/.zshrc
	echo ".zshrc -> ~/.zshrc"
	cp .zshrc ~/.zshrc
fi

echo "Done!"
