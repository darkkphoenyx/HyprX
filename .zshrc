# fastfetch
fastfetch --kitty-direct /home/darkkphoenyx/.config/fastfetch/pngs/image.png
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Initialize NVM (Node Version Manager)
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Update PATH to include custom bin directories
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:/usr/bin:$PATH

# Set the path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Set the theme for Oh My Zsh (Powerlevel10k)D
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins to load in Oh My Zsh
plugins=(git)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# User configurations

# Set preferred editor (can change based on SSH connection)
# export EDITOR='nvim'

# Aliases for common commands
alias ls="exa -la"
alias wf="wifite"

# Source Powerlevel10k configuration if it exists
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
