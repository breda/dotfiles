#
# Tmux bindings
#

# Make sure new windows & splits open in the same working dir 
bind '"' split-window -c "#{pane_current_path}"
bind % split-window -h -c "#{pane_current_path}"
bind c new-window -c "#{pane_current_path}"
