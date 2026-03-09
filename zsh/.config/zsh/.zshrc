# --- XDG Base Directory Setup for History and Cache ---
mkdir -p "$HOME/.local/state/zsh"
mkdir -p "$HOME/.cache/zsh"

# --- History Configuration ---
export HISTFILE="$HOME/.local/state/zsh/history"
export HISTSIZE=1000
export SAVEHIST=1000

# --- Zsh Options ---
setopt autocd beep extendedglob nomatch
bindkey -v

# --- Autocompletion System ---
zstyle :compinstall filename "$HOME/.config/zsh/.zshrc"

autoload -Uz compinit
compinit -d "$HOME/.cache/zsh/compdump"

# Starship
eval "$(starship init zsh)"
