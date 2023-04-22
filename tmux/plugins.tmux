# Plugin config


# tmux-browser config
set -g @open_browser_key 'B'
set -g @new_browser_window 'google-chrome-stable --new-window'

# Session switch
set -g @session-wizard 's'
set -g @session-wizard-width 40

# fzf-url
set -g @fzf-url-bind 'M'

# Pomodoro plugin config
set -g @pomodoro_mins 25
set -g @pomodoro_break_mins 5
set -g @pomodoro_repeat true
set -g @pomodoro_notifications 'on'

set -g @pomodoro_start 't'
set -g @pomodoro_cancel 'T'

set -g @pomodoro_on "break in "
set -g @pomodoro_complete "resume in "

# 1password plugin
set -g @1password-copy-to-clipboard 'on'
