# DotFiles

Personal dotfiles managed with GNU Stow.

## How this repo is organized

Each top-level folder is a **Stow package**.  
Inside each package, files are laid out exactly like they should appear in `$HOME`.

Current packages:

- `bat` → `.config/bat/...`
- `btop` → `.config/btop/...`
- `fontconfig` → `.config/fontconfig/...`
- `niri` → `.config/niri/...`
- `nvim` → `.config/nvim/...`
- `nvtop` → `.config/nvtop/...`
- `starship` → `.config/starship/...`
- `systemd` → `.config/systemd/user/...`
- `wezterm` → `.config/wezterm/...`
- `yazi` → `.config/yazi/...`
- `zsh` → `.config/zsh/...` and `.zshenv`

## My workflow (save/update configs)

When I change config files in `$HOME`, I move them back into this repo package structure with `mv`.

Example pattern:

```bash
mv ~/.config/nvim/init.lua ~/DotFiles/nvim/.config/nvim/init.lua
mv ~/.config/zsh/.zshrc ~/DotFiles/zsh/.config/zsh/.zshrc
```

Then commit and push from this repo.

## Apply dotfiles on a machine

From the repo root:

```bash
cd ~/DotFiles
stow *
```

This creates symlinks in `$HOME` for all packages.

## Re-link safely (when needed)

If links already exist or changed manually, restow with adoption:

```bash
cd ~/DotFiles
stow --adopt *
```

Then review changes and commit if needed.

## Useful Stow commands

```bash
# Remove all symlinks managed by these packages
stow -D *

# Recreate symlinks
stow -R *
```
