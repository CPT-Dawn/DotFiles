# ==========================================
# XDG Base Directories
# ==========================================
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

# ==========================================
# Shell & UI
# ==========================================
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

# ==========================================
# Development Tools
# ==========================================
# Rust
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

# Bun
export BUN_INSTALL="$XDG_DATA_HOME/bun"

# Node / NPM
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"

# .NET
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"

# GnuPG
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

# 1Password CLI
export OP_CONFIG_DIR="$XDG_CONFIG_HOME/1Password"

# NVIDIA / CUDA Caches
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export __GL_SHADER_DISK_CACHE_PATH="$XDG_CACHE_HOME/nv"

# ==========================================
# PATH Additions (Grouped for cleanliness)
# ==========================================
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$CARGO_HOME/bin:$PATH"
export PATH="$DOTNET_CLI_HOME/tools:$PATH"

# Ollama and claude
export ANTHROPIC_BASE_URL="http://localhost:11434"
export ANTHROPIC_AUTH_TOKEN="ollama"
export CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=1
