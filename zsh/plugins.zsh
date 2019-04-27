## Plugins section: Enable fish style features
# Use syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Use history substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
# bind UP and DOWN arrow keys to history substring search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up			
bindkey '^[[B' history-substring-search-down

case $(basename "$(cat "/proc/$PPID/comm")") in
  login)
    	RPROMPT="%{$fg[red]%} %(?..[%?])" 
    	alias x='startx ~/.xinitrc'      # Type name of desired desktop after x, xinitrc is configured for it
    ;;
  urxvt)
    	RPROMPT='$(git_prompt_string)'
    	# Use autosuggestion
    	source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
    	ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
    	ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
    ;;
  konsole|qterminal)
    	RPROMPT='$(git_prompt_string)'
    ;;   
  'tmux: server')
  	if $(ps -p$PPID| grep -q -e konsole -e qterminal); then
    	RPROMPT='$(git_prompt_string)'
    else
        RPROMPT='$(git_prompt_string)'
		## Base16 Shell color themes.
		#possible themes: 3024, apathy, ashes, atelierdune, atelierforest, atelierhearth,
		#atelierseaside, bespin, brewer, chalk, codeschool, colors, default, eighties, 
		#embers, flat, google, grayscale, greenscreen, harmonic16, isotope, londontube,
		#marrakesh, mocha, monokai, ocean, paraiso, pop (dark only), railscasts, shapesifter,
		#solarized, summerfruit, tomorrow, twilight
		#theme="eighties"
		#Possible variants: dark and light
		#shade="dark"
		#BASE16_SHELL="/usr/share/zsh/scripts/base16-shell/base16-$theme.$shade.sh"
		#[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
		# Use autosuggestion
		source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
		ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
  		ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
  	fi
    ;;
  *)
  	if $(ps -p$PPID| grep -q -e konsole -e qterminal); then
    	RPROMPT='$(git_prompt_string)'
    else
        RPROMPT='$(git_prompt_string)'
		# Use autosuggestion
		source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
		ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
  		ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
  	fi
    ;;
esac

#
