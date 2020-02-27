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
		abbr -a -g grading "cd ~/School/CS327E/grading-tools"
end

# git shortcuts
abbr -a -g gs "git status"
abbr -a -g glog "git log --all --decorate --oneline --graph"

# thefuck plugin
thefuck --alias | source
