#
# Tmux config vars
#

# Nova theme/bar
set -g @nova-nerdfonts true
set -g @nova-nerdfonts-left 
set -g @nova-nerdfonts-right 

set -g @nova-segment-mode "#{?client_prefix,Ω,}"
set -g @nova-segment-mode-colors "#50fa7b #282a36"

set -g @nova-segment-whoami "#(whoami)@#h"
set -g @nova-segment-whoami-colors "#50fa7b #282a36"

set -g @nova-pane "#I#{?pane_in_mode,  #{pane_mode},}  #W"

set -g @cpu_percentage_format "%5.1f%%"
set -g @nova-segment-cpu "cpu #(~/.dotfiles/tmux/plugins/tmux-cpu/scripts/cpu_percentage.sh)"
set -g @nova-segment-cpu-colors "#282a36 #f8f8f2"

set -g @cpu_temp_unit "C"
set -g @cpu_temp_format "%3.0f"
set -g @nova-segment-cpu-temp "cpu_temp #(~/.dotfiles/tmux/plugins/tmux-cpu/scripts/cpu_temp.sh)"
set -g @nova-segment-cpu-temp-colors "#282a36 #f8f8f2"

set -g @ram_percentage_format "%5.1f%%"
set -g @nova-segment-ram "ram #(~/.dotfiles/tmux/plugins/tmux-cpu/scripts/ram_percentage.sh)"
set -g @nova-segment-ram-colors "#282a36 #f8f8f2"

set -g @net_speed_interfaces "wlp61s0 enp0s31f6"
set -g @net_speed_format "↓ %10s - ↑ %10s"
set -g @nova-segment-net "net #(~/.dotfiles/tmux/plugins/tmux-net-speed/scripts/net_speed.sh)"
set -g @nova-segment-net-colors "#282a36 #f8f8f2"

set -g @nova-rows 1
set -g @nova-segments-0-left "mode"
set -g @nova-segments-0-right "whoami"
set -g @nova-segments-1-left ""
set -g @nova-segments-1-right "cpu ram cpu-temp"
