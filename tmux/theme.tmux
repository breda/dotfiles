#
# Tmux theme config
#

# Nova theme/bar
### THEME ###
set -g @nova-nerdfonts true
set -g @nova-nerdfonts-left 
set -g @nova-nerdfonts-right 

set -g @nova-pane "#I #W"
set -g @nova-rows 0

set -gw window-status-current-style bold
set -g "@nova-status-style-bg" "#303952"
set -g "@nova-status-style-fg" "#ddc7a1"
set -g "@nova-status-style-active-bg" "#4a69bd"
set -g "@nova-status-style-active-fg" "#ddc7a1"

set -g "@nova-pane-active-border-style" "#44475a"
set -g "@nova-pane-border-style" "#827d51"

### STATUS BAR ###
set -g @nova-segment-session "#{session_name}"
set -g @nova-segment-session-colors "#4a69bd #ddc7a1"

set -g @nova-segment-whoami "#(whoami)@#h"
set -g @nova-segment-whoami-colors "#4a69bd #ddc7a1"

set -g @nova-segment-cpu "cpu #(~/.dotfiles/tmux/plugins/tmux-cpu/scripts/cpu_percentage.sh) temp #(~/.dotfiles/tmux/plugins/tmux-cpu/scripts/cpu_temp.sh) mem #(~/.dotfiles/tmux/plugins/tmux-cpu/scripts/ram_percentage.sh)"
set -g @nova-segment-cpu-colors "#303952 #ddc7a1"

set -g @nova-segments-0-left "session"
set -g @nova-segments-0-right "cpu whoami"
