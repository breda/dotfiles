# Starship prompt 
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

# PHPEnv
export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"

# ZSH ask (OpenAPI client): https://github.com/Licheam/zsh-ask
source $HOME/.dotfiles/zsh/plugins/zsh-ask/zsh-ask.zsh

# SSH quick connect plugin: https://github.com/breda/zsh-ssh-quickconnect
source $HOME/.dotfiles/zsh/plugins/zsh-ssh-quickconnect/ssh-quickconnect.plugin.sh
