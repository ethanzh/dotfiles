#!/bin/sh

clear

echo "Copying vimrc"
echo ".vimrc -> ~/.vimrc"
cp ~/.vimrc .vimrc
echo "Done copying .vimrc"

echo ".zshrc -> ~/.zshrc"
cp ~/.zshrc .zshrc
echo "Done copying .zshrc"

echo "Uploading to GitHub"
echo "Adding files"
git add .
echo "Committing files"
git commit -m "Update dotfiles"
echo "Pushing files"
git push

echo "Done!"
