#!/bin/sh

clear

echo "Copying vimrc"
cp ~/.vimrc .vimrc

echo "Uploading to GitHub"
git add .
git commit -m "Update .vimrc"
git push

echo "Done!"
