#
# Tmux theme config
#

# Nova theme/bar
### THEME ###
#

set -g window-style fg=#c4c5cc

set -g status-left-length 85
set -g status-right-length 85

set -g @nova-pane "#W"
set -g @nova-rows 0
set -g @nova-nerdfonts false

set -gw window-status-current-style bold
set -g "@nova-status-style-bg" "default"
set -g "@nova-status-style-fg" "#ddc7a1"
set -g "@nova-status-style-active-bg" "#434343"
set -g "@nova-status-style-active-fg" "#ddc7a1"
set -g @nova-pane-active-border-style "#767987"
set -g @nova-pane-border-style "#282a36"


### STATUS BAR ###
set -g @nova-pane-justify "left"

set -g @nova-segment-whoami "#(whoami)@#h"
set -g @nova-segment-whoami-colors "default #92baff"

set -g @nova-segment-session "working on #S     "
set -g @nova-segment-session-colors "default #92baff"

set -g @nova-segment-pomodoro " #{pomodoro_status}"
set -g @nova-segment-pomodoro-colors "default #f39c12"

set -g @nova-segments-0-left "session"
set -g @nova-segments-0-right "pomodoro whoami"
