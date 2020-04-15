# remove fish prompt
set fish_greeting

# GPG signing
set -x GPG_TTY (tty)

# path
set -gx PATH /usr/local/bin $PATH
set -gx PATH ~/anaconda3/bin $PATH 

# fish configuration
abbr -a -g fc vim ~/.config/fish/config.fish
abbr -a -g theme fish_config

# print shell file
abbr -a -g shell "cat ~/Code/shell/README.md"

# pbcopy/pbpaste
switch (uname)
    case Linux
        abbr -a -g pbcopy 'xclip -selection clipboard'
        abbr -a -g pbpaste 'xclip -selection clipboard -o'
end

# for python venv
abbr -a -g a ". venv/bin/activate.fish"

# utcs lab
abbr -a -g lab "ssh ethanzh@kierkegaard.cs.utexas.edu"

# feverbase server
abbr -a -g fever "ssh root@159.65.71.64"
abbr -a -g fever_f "ssh root@159.89.142.177"
abbr -a -g fever_ms "ssh root@165.227.62.191"

# utcs
abbr -a -g utcs "ssh ethanzh@kierkegaard.cs.utexas.edu"

# scooter scraper
abbr -a -g ss "ssh root@138.68.49.152"

switch (uname)
	case Linux
		set -gx PATH /home/linuxbrew/.linuxbrew/bin $PATH
end

# shortcut to dotfiles
abbr -a -g dots "cd ~/Code/dotfiles/"

# shortcut to recorda
abbr -a -g recorda "cd ~/Code/recorda-django/recorda/api; vim -p views.py models.py urls.py"

# tidy
switch (uname)
    case Darwin
        abbr -a -g tidy "/usr/local/Cellar/tidy-html5/5.6.0/bin/tidy"
end

# shortcuts to courses
switch (uname)
	case Darwin
		abbr -a -g pl "cd ~/UT/Courses/CS345"
		abbr -a -g db "cd ~/UT/Courses/CS327E"
		abbr -a -g intro "cd ~/UT/Courses/CS361"
		abbr -a -g grading "cd ~/UT/Courses/CS327E/grading-tools"
	case Linux
		abbr -a -g pl "cd ~/School/CS345"
		abbr -a -g db "cd ~/School/CS327E"
		abbr -a -g intro "cd ~/School/CS361"
		abbr -a -g grading "cd ~/School/grading-tools"
end

# update shortcuts
switch (uname)
	case Darwin
	case Linux
		abbr -a -g update "sudo pacman -Syu"
end

# python venv
abbr -a -g gs "git status"
abbr -a -g pipr "activate;pip install -r requirements.txt"

# git shortcuts
abbr -a -g gs "git status"
abbr -a -g glog "git log --all --decorate --oneline --graph"

# ls shortcut
abbr -a -g l "ls -la"

# thefuck plugin
thefuck --alias | source

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ethanzh/google-cloud-sdk/path.fish.inc' ]; . '/Users/ethanzh/google-cloud-sdk/path.fish.inc'; end
