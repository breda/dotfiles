# Starship prompt 
export STARSHIP_CONFIG="$HOME/.dotfiles/zsh/starship.toml"
eval "$(starship init zsh)"

# Init zoxide
# eval "$(zoxide init zsh)"

# NVM
source $(brew --prefix nvm)/nvm.sh

# PyENV
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init --path)"
#eval "$(pyenv init -)"

# PHPenv
export PHPENV_ROOT="/Users/breda/.phpenv"
if [ -d "${PHPENV_ROOT}" ]; then
  export PATH="${PHPENV_ROOT}/bin:${PATH}"
  eval "$(phpenv init -)"
fi

# ZSH ask (OpenAPI client): https://github.com/Licheam/zsh-ask
#source $HOME/.dotfiles/zsh/plugins/zsh-ask/zsh-ask.zsh

# SSH quick connect plugin: https://github.com/breda/zsh-ssh-quickconnect
#source $HOME/.dotfiles/zsh/plugins/zsh-ssh-quickconnect/ssh-quickconnect.plugin.sh
