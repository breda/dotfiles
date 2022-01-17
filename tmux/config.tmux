#
# Tmux config vars
#

set -g default-terminal "xterm-256color"
set-option -sa terminal-overrides ",xterm*:Tc"
set -s escape-time 10
set -sg repeat-time 600
set -s focus-events on

# Expect UTF8 
set -q -g status-utf8 on
setw -q -g utf8 on

# Mouse on & history limit
set -g mouse on
set -g history-limit 100000

# loud or quiet? quit for sure
set-option -g visual-activity off
set-option -g visual-bell off
set-option -g visual-silence off
set-window-option -g monitor-activity off
set-option -g bell-action none

# title
set -g set-titles on
set -g set-titles-string '#T'

# start window numbering at 1 for easier switching
set -g base-index 1
setw -g pane-base-index 1
