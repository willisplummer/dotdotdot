# References
# - https://ianyepan.github.io/posts/moving-away-from-ohmyzsh/
# - https://thevaluable.dev/zsh-install-configure-mouseless/

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH=$PATH:$HOME/.stack/programs/
export PATH=$PATH:$HOME/.local/bin
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.pyenv/shims:$PATH"

# Aliases

## POSTGRESQL
alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

## NVIM
alias vim="nvim"
alias vi="nvim"

## BAT
alias cat="bat"

# FNM
alias nvm="fnm"

## GIT
# https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/git.plugin.zsh
alias g='git'
alias ga='git add'
alias gd='git diff'
alias gb='git branch'
alias gcl='git clone'
alias gco='git checkout'
alias gc='git commit --verbose'
alias gl='git pull'
alias gp='git push'
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias gst='git status'
alias gsta='git stash'

#---

export DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=10000
HISTSIZE=10000
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completions
fpath+="/opt/homebrew/share/zsh/site-functions"

autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'


# ---
# keybindings
bindkey -s ^f "tmux-sessionizer\n"
# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# fnm
FNM_PATH="/home/wmp224/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/willisplummer/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi
eval "$(fnm env --use-on-cd --shell zsh)"

// TODO: make this OS agnostic -- on linux its /usr/share/ and on mac its /opt/homebrew/share
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
