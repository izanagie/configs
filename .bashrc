#
# ~/.bashrc
#

# If not running interactively, don't do anything


#
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='󰣇 \W '

#Display ISO version and distribution information in short
alias version="sed -n 1p /etc/os-release && sed -n 11p /etc/os-release && sed -n 12p /etc/os-release"

alias ..='cd ..'
alias rc='vim ~/.bashrc'
alias yml='vim ~/.config/alacritty/alacritty.yml'
alias la='ls -a'
# Some useful functions

fcode(){
	code "$(find -type f | fzf)"
}

pconf(){
	cd "/etc";
	sudo vim "$(find -type f 2>/dev/null | fzf)"
	cd "/home/vishnu"
}

play(){
	mpv "$(find -type f 2>/dev/null | fzf)"
}

alias miniconda='source ~/conda.bashrc'


#Pacman Shortcuts
alias sync="sudo pacman -Syyy"
alias install="sudo pacman -S"
alias update="sudo pacman -Syyu"
alias search="sudo pacman -Ss"
alias search-local="sudo pacman -Qs"
alias pkg-info="sudo pacman -Qi"
alias local-install="sudo pacman -U"
alias clr-cache="sudo pacman -Scc"
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias remove="sudo pacman -R"
alias autoremove="sudo pacman -Rns"


