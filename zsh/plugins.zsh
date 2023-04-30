# Load theme (Starship: https://awesomeopensource.com/project/starship/starship)
export STARSHIP_CONFIG="$HOME/.dotfiles/zsh/starship.toml"
eval "$(starship init zsh)"

# Init zoxide
eval "$(zoxide init zsh)"

# NVM
[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec

# PyENV
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# ZSH ask (OpenAPI client)
source $HOME/.dotfiles/zsh/plugins/zsh-ask/zsh-ask.zsh
