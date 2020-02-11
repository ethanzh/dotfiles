set -gx PATH ~/anaconda3/bin $PATH
set -gx PATH /Users/ethanzh/.local/bin $PATH
set fish_greeting

abbr -a -g fishc vim ~/.config/fish/config.fish
abbr -a -g gs "git status"

abbr -a -g activate ". venv/bin/activate.fish"

abbr -a -g dots "cd ~/Code/dotfiles"
abbr -a -g udots "cd ~/Code/dotfiles;git pull;rsync config.fish ~/.config/fish/config.fish; rsync .vimrc ~/.vimrc; source ~/.config/fish/config.fish; cd -"

abbr -a -g status "echo $status"

abbr -a -g lab "ssh ethanzh@kierkegaard.cs.utexas.edu"

abbr -a -g resume "cd ~/Code/latex-resume;echo houston_ethan_resume.tex | xelatex; cd -"

abbr -a -g todo "cd ~/todo;cat todo;cd --"

abbr -a -g pl "cd ~/UT/Courses/CS345"
abbr -a -g db "cd ~/UT/Courses/CS327E"
abbr -a -g intro "cd ~/UT/Courses/CS361"
