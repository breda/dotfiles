#
# Tmux config vars
#

set -g default-terminal "xterm-256color"
set-option -sa terminal-overrides ",xterm*:Tc"
set -gs escape-time 0
set -sg repeat-time 600
set -s focus-events on

# Expect UTF8 
set -q -g status-utf8 on
setw -q -g utf8 on

# Panes & windows
set-option -g allow-rename off
set -g base-index 1
setw -g pane-base-index 1

# means that closing window #2 will renumber window #3 to #2 and opening a new window will place it at #3.
set -g renumber-windows on

# Mouse on & history limit
set -g mouse on
set -g history-limit 10000

# loud or quiet? quit for sure
set-option -g visual-activity off
set-option -g visual-bell off
set-option -g visual-silence off
set-window-option -g monitor-activity off
set-option -g bell-action none

# don't exit from tmux when closing a session
set -g detach-on-destroy off
