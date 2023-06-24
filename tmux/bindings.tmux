# Tmux bindings

# Prefix is Ctrl+a
unbind C-b
set-option -g prefix C-e
bind-key C-e send-prefix

# Unbinds
unbind -n Enter
unbind -n C-BSpace
unbind -n C-r

# windows
bind c new-window -c "#{pane_current_path}"
bind h split-window -c "#{pane_current_path}"
bind v split-window -h -c "#{pane_current_path}"

bind N previous-window
bind n next-window

# zoom pane
bind b resize-pane -Z

# panes
bind o last-pane
bind l last-window
bind L switch-client -l

# Status bar toggle
bind B set-option -g status

# clear screen
bind-key -n C-S-r send-keys 'C-l'

# Reload config
bind R source-file ~/.tmux.conf
