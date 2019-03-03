#!/bin/sh

clear

echo "Copying vimrc"
echo ".vimrc -> ~/.vimrc"
cp ~/.vimrc .vimrc
echo "Done copying"

echo "Uploading to GitHub"
echo "Adding files"
git add .
echo "Committing files"
git commit -m "Update .vimrc"
echo "Pushing files"
git push

echo "Done!"
