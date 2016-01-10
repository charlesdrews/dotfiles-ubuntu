# use interactive mode to prevent accidents (override w/ -f)
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# preferred ls usage & combine it with cd using "ca"
alias la='ls -ACF --color=auto'
alias ll='ls -AlFh --color=auto'
function ca() {
	if [ -n "$1" ]
	then
		cd "$1" && la;
	else
		cd && la;
	fi 
}
alias ..='ca ..'
function cl() {
	if [ -n "$1" ]
	then
		cd "$1" && ll;
	else
		cd && la;
	fi
}

# function to use bc quickly
function =() {
	if [ -n "$1" ]
	then
		bc -l <<< "$1";
	fi
}

# use gnome-open to open files/urls w/ preferred app
alias open='gnome-open'

# aliases for Solarized scripts (set theme light or dark)
alias slight='~/Dropbox/Charlie/Themes/Solarized/gnome-terminal-colors-solarized/set_light.sh'
alias sdark='~/Dropbox/Charlie/Themes/Solarized/gnome-terminal-colors-solarized/set_dark.sh'


# use script to open chrome via new tmux session
# chrome.sh is in a directory which is in $PATH
# alias chrome='chrome.sh'
# same with virtualbox
# alias vbox='vbox.sh'
# and Sim City 2000 via dosbox
# alias sc2k='sc2k.sh'

# nevermind, just use nohup and &
alias chrome='nohup google-chrome >/dev/null 2>&1 &'
alias vbox='nohup virtualbox >/dev/null 2>&1 &'
alias sc2k='nohup dosbox ~/Apps/Simcity2000/SC2000.EXE >/dev/null 2>&1 &'

# tmux aliases
# The terminal is using 16 colors to properly use the Solarized theme.
# In order to make tmux use the solarized colors, need to use a workaround
# that involves tmux thinking the terminal is using 256 colors. To accomplish
# this, run tmux with option -2 so it doesn't auto-detect the terminal colors.
alias tmux='tmux -2'
alias tls='tmux -2 ls'
function ta() {
	if [ -n "$1" ]
	then
		tmux -2 attach -t "$1";
	fi
}
function tn() {
	if [ -n "$1" ]
	then
		tmux -2 new-session -s "$1";
	fi
}
function tk() {
	if [ -n "$1" ]
	then
		tmux -2 kill-session -t "$1";
	fi
}

# convenience function
function currterm() {
	current='2014_Summer'
	cd /home/csd/Dropbox/Charlie/NYU/$current
	la
}

# convenience function
function sshnyu() {
	PS3='Pick type:'
	select type in "ssh" "sftp"
	do
		case "$type" in
			ssh) ssh csd305@access.cims.nyu.edu ;;
			sftp) sftp csd305@access.cims.nyu.edu ;;
			*) break ;;
		esac
		break
	done
}
function nyussh() {
	sshnyu
}
# or in lieu of sftp, especially to transfer an entire directory, use:
#   scp -r /fulllocalpath/sourcedir/ \
#   csd305@access.cims.nyu.edu:/fullremotepath/targetdir/

# show directory hierachy as a tree
# idea from "http://www.centerkey.com/tree/"
# not done; finish later
function tree() {
	if [ -n "$1" ]
	then
		find "$1" -path "./.*" -prune -maxdepth 2 -type d | head -36
	else
		find . -path "./.*" -prune -maxdepth 2 -type d | head -36
	fi
}
