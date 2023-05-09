############
## aliases #
############

# General
alias cd="z"
alias c="z"
alias cp="cp -i"
alias df='df --sync -h'
alias free='free -wh --mega'
alias vim="nvim"
alias v="nvim"
alias vi="nvim"
alias n="nvim"
alias cls="clear"
alias fz="zoxide query -i"

alias ll="ls --color -lhF --group-directories-first"
alias l="ls --color -lhaF --group-directories-first"
alias lf="ls --color -lhaF | grep -v /"

# Tmux
alias tn="tmux new -s "
alias tl="tmux list-sessions"
alias ta="tmux attach -t "
alias tkill="tmux kill-session"

# System
alias reload!="source $HOME/.zshrc"
alias stl="sudo systemctl"

# Wifi
alias wifioff="sudo nmcli radio wifi off"
alias wifion="sudo nmcli radio wifi on"
alias wifilist="sudo nmcli device wifi rescan && sudo nmcli device wifi list"
function wifico() {
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
alias gr="git rebase"
alias gri="git rebase -i"
# Push new branch
function gpushn() {
	git push --set-upstream origin `git branch --show-current`
}

# Go
alias goh="z $GOPATH/github.com/breda"

# Ansible
alias apl="ansible-playbook --extra-vars='ansible_ssh_private_key_file=$ANSIBLE_PRIVATE_KEY'"
alias av="ansible-vault"

# Vagrant
alias vg="vagrant"
alias vgstatus="vagrant global-status --prune"

# PostgreSQL
export PGDATA="/var/lib/postgres/data"
alias pgctl="su postgres -c 'pg_ctl -D $PGDATA'"

# Screen recording, usage: sr demo.mp4
alias sr="ffmpeg -y -f pulse -i default -f x11grab -r 25 -s 1920x1080 -i :0.0+0,0 -acodec libmp3lame -vcodec libx264 -preset ultrafast"

# LXD/LXC
alias lxcll="lxc list -c n,s,image.os,image.version,4,m,D,u,a,P"
alias lxcl="lxc list -c n,s,4"

# Crypto
# Generate random bytes in hex/base64: randhex OUTPUT NUM_BYTES
function randb() {
	local output="${1:-base64}"
	local bytes="${2:-16}"

	openssl rand -$output $bytes | tr -d "/+=\n"
}

# Display control
alias rightDark="xrandr --output $RIGHT_DISPLAY --brightness 0.55"
alias rightLight="xrandr --output $RIGHT_DISPLAY --brightness 1"
