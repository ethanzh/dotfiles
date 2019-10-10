set -gx PATH ~/anaconda3/bin $PATH

abbr -a -g fishc vim ~/.config/fish/config.fish
abbr -a -g gs "git status"

abbr -a -g dots "cd ~/Code/dotfiles;rsync config.fish ~/.config/fish/config.fish; rsync .vimrc ~/.vimrc"

