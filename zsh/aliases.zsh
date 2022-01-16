############
## aliases #
############

# General
alias cp="cp -i"
alias df='df --sync -h'
alias free='free -wh --mega'
alias v="vim"
alias vi="vim"
alias cls="clear"

alias ll="ls --color -lhF --group-directories-first"
alias l="ls --color -lhaF --group-directories-first"
alias lf="ls --color -lhaF | grep -v /"

# System
alias reload!="source $HOME/.zshrc"
alias stl="sudo systemctl"

# Wifi
alias wifioff="sudo nmcli radio wifi off"
alias wifion="sudo nmcli radio wifi on"
alias wifilist="sudo nmcli device wifi rescan && sudo nmcli device wifi list"
wifico() {
	sudo nmcli device wifi connect $1 password $2
}

# PHP
alias ar="php artisan"
alias pt="phpunit"
alias ptf="phpunit --filter"
alias sc="php bin/console"

# Git
alias gla="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gch="git checkout"
alias gb="git --no-pager branch"
alias gc="git commit"
alias gcm="git commit -m"
alias gpush="git push"
alias gpull="git pull"
alias gf="git fetch"
alias gs="git status"
alias ga="git add"
alias gaa="git add --all"
alias gdf="git diff"

# Vagrant
alias vg="vagrant"
alias vgstatus="vagrant global-status --prune"

# PostgreSQL
export PGDATA="/var/lib/postgres/data"
alias pgctl="su postgres -c 'pg_ctl -D $PGDATA'"

# Screen recording, usage: sr demo.mp4
alias sr="ffmpeg -y -f pulse -i default -f x11grab -r 25 -s 1920x1080 -i :0.0+0,0 -acodec libmp3lame -vcodec libx264 -preset ultrafast"
