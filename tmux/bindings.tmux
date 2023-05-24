# Tmux bindings

# Prefix is Ctrl+a
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix

# Unbinds
unbind -n Enter
unbind -n C-BSpace

# Rebinds
bind-key p previous-window
bind L switch-client -l

# Make sure new windows & splits open in the same working dir 
bind 'h' split-window -c "#{pane_current_path}"
bind 'v' split-window -h -c "#{pane_current_path}"
bind c new-window -c "#{pane_current_path}"

# Status bar toggle
bind b set-option -g status

# clear screen (Alt-Backspace)
bind-key -n M-BSpace send-keys 'C-l'

# Reload config
bind R source-file ~/.tmux.conf

