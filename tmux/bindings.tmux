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

# Numbers row selects windows
bind & select-window -t:=1
bind é select-window -t:=2
bind \" select-window -t:=3
bind \' select-window -t:=4
bind ( select-window -t:=5
bind - select-window -t:=6
bind è select-window -t:=7
bind _ select-window -t:=8
bind ç select-window -t:=9

# Make sure new windows & splits open in the same working dir 
bind '*' split-window -c "#{pane_current_path}"
bind % split-window -h -c "#{pane_current_path}"
bind c new-window -c "#{pane_current_path}"

# Status bar toggle
bind b set-option -g status

# clear screen (Alt-Backspace)
bind-key -n M-BSpace send-keys 'C-l'

# Reload config
bind R source-file ~/.tmux.conf

