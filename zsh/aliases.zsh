############
## aliases #
############
alias cp="cp -i"
alias df='df -h'
alias free='free -m'
alias v="vim"
alias vi="vim"
alias ll="ls --color -lhF --group-directories-first"
alias lf="ls -lhaF --color | grep -v /"
alias l="ls --color -lhaF --group-directories-first"
alias cls="clear"
alias c="clear"
alias subl="subl3"
alias eprofile="$EDITOR ~/.zshrc"
alias rprofile="source ~/.zshrc"
alias g="grep --color=auto"
alias k9="kill -9"
alias phpserve="php -S localhost:8080"
alias tat="tmux new-session -As"
alias sctl="sudo systemctl"

alias wifioff="sudo nmcli radio wifi off"
alias wifion="sudo nmcli radio wifi on"
alias wifilist="sudo nmcli device wifi rescan && sudo nmcli device wifi list"
wifico() {
	sudo nmcli device wifi connect $1 password $2
}

# PHP dev
alias ar="php artisan"
alias pt="phpunit"
alias ptf="phpunit --filter"

# git aliases
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
alias gdff="git diff-tree --no-commit-id --name-only -r "

# Vagrant
alias vg="vagrant"
alias vgstatus="vagrant global-status --prune"
alias vghalt="vagrant halt"
alias vgup="vagrant up"
alias vgdst="vagrant destroy -f"

# PostgreSQL
export PGDATA="/var/lib/postgres/data"
alias pgctl="su postgres -c 'pg_ctl -D $PGDATA'"

# Screen recording, usage: sr demo.mp4
alias sr="ffmpeg -y -f pulse -i default -f x11grab -r 25 -s 1920x1080 -i :0.0+0,0 -acodec libmp3lame -vcodec libx264 -preset ultrafast"

# Tv monitor setup
alias tvon="xrandr --output HDMI2 --auto --scale 2x2  --right-of eDP1"
alias tvoff="xrandr --output HDMI2 --off"
