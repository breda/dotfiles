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

### COLORS ###
b_bg="#303952"

seg_a="#4a69bd #ddc7a1"
seg_b="$b_bg #ddc7a1"

inactive_bg="#303952"
inactive_fg="#ddc7a1"
active_bg=$b_bg
active_fg="#ddc7a1"

set -gw window-status-current-style bold
set -g "@nova-status-style-bg" "$inactive_bg"
set -g "@nova-status-style-fg" "$inactive_fg"
set -g "@nova-status-style-active-bg" "$active_bg"
set -g "@nova-status-style-active-fg" "$active_fg"

set -g "@nova-pane-active-border-style" "#44475a"
set -g "@nova-pane-border-style" "#827d51"

### STATUS BAR ###
set -g @nova-segment-session "#{session_name}"
set -g @nova-segment-session-colors "$seg_a"

set -g @nova-segment-whoami "#(whoami)@#h"
set -g @nova-segment-whoami-colors "$seg_a"

set -g @nova-segment-cpu "cpu#(~/.dotfiles/tmux/plugins/tmux-cpu/scripts/cpu_percentage.sh) mem#(~/.dotfiles/tmux/plugins/tmux-cpu/scripts/ram_percentage.sh)"
set -g @nova-segment-cpu-colors "$seg_b"

set -g @nova-segments-0-left "session"
set -g @nova-segments-0-right "cpu whoami"
