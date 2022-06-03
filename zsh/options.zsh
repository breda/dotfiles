# Options section
setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt autocd                                                   # if only directory path is entered, cd there.
setopt prompt_subst                                             # Enable substitutions for prompt
setopt NO_LIST_BEEP

# History
setopt APPEND_HISTORY                                           # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY                         # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS                                     # don't record dupes in history
setopt HIST_REDUCE_BLANKS

HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
WORDCHARS=${WORDCHARS//\/[&.;]}

# Better history
# Credits to https://coderwall.com/p/jpj_6q/zsh-better-history-searching-with-arrow-keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
