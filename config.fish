set -gx PATH ~/anaconda3/bin $PATH
set fish_greeting

abbr -a -g fishc vim ~/.config/fish/config.fish
abbr -a -g gs "git status"

abbr -a -g activate ". venv/bin/activate.fish"

abbr -a -g dots "cd ~/Code/dotfiles"
abbr -a -g udots "cd ~/Code/dotfiles;git pull;rsync config.fish ~/.config/fish/config.fish; rsync .vimrc ~/.vimrc; source ~/.config/fish/config.fish"

abbr -a -g status "echo $status"
