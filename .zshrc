export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ethanzh/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"

DEFAULT_USER="ethanzh"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(ssh status)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

export EDITOR='vim'

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# itermocil install
compctl -g '~/.itermocil/*(:t:r)' itermocil

# autocomplete
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# NVM magic
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
