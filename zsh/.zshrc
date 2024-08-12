# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH=$PATH:$HOME/.stack/programs/
export PATH=$PATH:$HOME/.local/bin

# Path to your oh-my-zsh installation.
export ZSH="/Users/willisplummer/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

bindkey -s ^f "tmux-sessionizer\n"

plugins=( git zsh-syntax-highlighting zsh-autosuggestions nvm)

# User configuration

# POSTGRESQL
alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

alias vim="nvim"
alias vi="nvim"

alias cat="bat"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="${HOME}/.pyenv/shims:${PATH}"

export DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_LAZY_LOAD=true
export NVM_AUTO_LOAD=true



