# remove fish prompt
set fish_greeting

# path
set -gx PATH /usr/local/bin $PATH

# fish configuration
abbr -a -g fc vim ~/.config/fish/config.fish
abbr -a -g theme fish_config

# for python venv
abbr -a -g activate ". venv/bin/activate.fish"

# utcs lab
abbr -a -g lab "ssh ethanzh@kierkegaard.cs.utexas.edu"

switch (uname)
	case Linux
		set -gx PATH /home/linuxbrew/.linuxbrew/bin $PATH
end

# shortcut to dotfiles
abbr -a -g dots "cd ~/Code/dotfiles/"

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

# git shortcuts
abbr -a -g gs "git status"
abbr -a -g glog "git log --all --decorate --oneline --graph"

# thefuck plugin
thefuck --alias | source
