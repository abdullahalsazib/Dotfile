# Quick Reference Guide

A quick reference for common commands and keybindings across all configurations.

## 🚀 Quick Installation

### Automated Installation
```bash
cd ~/.dotfiles
./install.sh
```

### Manual Installation
```bash
# Neovim
ln -sf ~/.dotfiles/nvim ~/.config/nvim

# Vim
ln -sf ~/.dotfiles/vim/vim.vimrc ~/.vimrc

# tmux
ln -sf ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

# VS Code (Linux)
cp ~/.dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
```

---

## ⌨️ Neovim (LazyVim) Keybindings

| Action | Key |
|--------|-----|
| **Leader** | `<Space>` |
| **File Operations** |
| Find files | `<Space>ff` |
| Find in files | `<Space>fg` |
| Find buffers | `<Space>fb` |
| Save | `<Space>w` |
| Quit | `<Space>qq` |
| **Navigation** |
| File explorer | `<Space>e` |
| Go to definition | `gd` |
| Go to references | `gr` |
| Hover docs | `K` |
| **Code Actions** |
| Format | `<Space>cf` |
| Code actions | `<Space>ca` |
| Rename | `<Space>cr` |
| Diagnostics | `<Space>cd` |
| **Windows** |
| Split horizontal | `<Space>\|` |
| Split vertical | `<Space>-` |
| **Buffers** |
| Next buffer | `<Space>bn` |
| Previous buffer | `<Space>bp` |
| Close buffer | `<Space>bd` |

---

## ⌨️ Vim Keybindings

| Action | Key |
|--------|-----|
| **Leader** | `<Space>` |
| **File Operations** |
| Find files (fzf) | `<Space>f` |
| Find in files (ripgrep) | `<Space>g` |
| Save | `<Ctrl-s>` |
| **Navigation** |
| NERDTree | `<Space>e` |
| Undotree | `<Space>u` |
| Go to definition | `gd` |
| Show docs | `K` |
| **Buffers** |
| Buffergator | `<Space>bg` |
| Next buffer | `<Space>bn` |
| Previous buffer | `<Space>bp` |
| Delete buffer | `<Space>bd` |
| **Compile** |
| Compile C++ | `<Space>c` |

---

## ⌨️ tmux Keybindings

| Action | Key |
|--------|-----|
| **Leader** | `Ctrl+b` |
| **Reload** | `leader + r` |
| **Pane Management** |
| Split horizontal | `leader + %` |
| Split vertical | `leader + "` |
| Navigate (vim-style) | `leader + h/j/k/l` |
| Kill pane | `leader + x` |
| Resize | `leader + Ctrl + <arrow>` |
| **Window Management** |
| New window | `leader + c` |
| Next window | `leader + n` |
| Previous window | `leader + p` |
| List windows | `leader + w` |
| Rename window | `leader + ,` |
| Kill window | `leader + &` |
| **Session Management** |
| Detach | `leader + d` |
| List sessions | `tmux ls` |
| Attach | `tmux a` or `tmux a -t <name>` |
| New session | `tmux new -s <name>` |
| Kill session | `tmux kill-session -t <name>` |
| **Copy Mode** |
| Enter copy mode | `leader + [` |
| Paste | `leader + ]` |
| **Plugins** |
| Install plugins | `leader + I` |
| Update plugins | `leader + U` |

---

## 🔧 Common Commands

### Neovim
```bash
# Launch Neovim
nvim

# Open plugin manager
:Lazy

# Sync plugins
:Lazy sync

# Check LSP status
:LspInfo

# Open Mason (LSP installer)
:Mason
```

### Vim
```bash
# Launch Vim
vim

# Install plugins
:PlugInstall

# Update plugins
:PlugUpdate

# Clean unused plugins
:PlugClean

# Reload config
:source ~/.vimrc
```

### tmux
```bash
# Start tmux
tmux

# List sessions
tmux ls

# Attach to session
tmux a
tmux a -t <session-name>

# Create named session
tmux new -s <name>

# Kill session
tmux kill-session -t <name>

# Kill all sessions
tmux kill-server

# Reload config
tmux source-file ~/.tmux.conf
```

---

## 📦 Plugin Installation

### Neovim
Plugins install automatically on first launch. To manually sync:
```
:Lazy sync
```

### Vim
1. Install vim-plug (if not installed):
   ```bash
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```
2. Open Vim and run:
   ```
   :PlugInstall
   ```

### tmux
1. Install TPM (if not installed):
   ```bash
   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
   ```
2. Start tmux and press: `Ctrl+b` then `I` (capital I)

---

## 🎨 Themes

- **Neovim:** Tokyo Night (transparent)
- **Vim:** Gruvbox (transparent)
- **tmux:** Catppuccin

---

## 🔄 Reloading Configurations

| Tool | Command |
|------|---------|
| Neovim | Restart or `:Lazy reload` |
| Vim | `:source ~/.vimrc` |
| tmux | `Ctrl+b` then `r` or `tmux source-file ~/.tmux.conf` |
| VS Code | Restart VS Code |

---

## 📁 Configuration Locations

| Tool | Config Location |
|------|----------------|
| Neovim | `~/.config/nvim/` |
| Vim | `~/.vimrc` |
| tmux | `~/.tmux.conf` |
| VS Code (Linux) | `~/.config/Code/User/settings.json` |
| VS Code (macOS) | `~/Library/Application Support/Code/User/settings.json` |

---

## 🆘 Quick Troubleshooting

### Neovim plugins not installing
```vim
:Lazy clean
:Lazy install
```

### Vim plugins not installing
```vim
:PlugInstall
```

### tmux plugins not installing
1. Verify TPM: `ls ~/.tmux/plugins/tpm`
2. Inside tmux: `Ctrl+b` then `I`

### LSP not working (Neovim)
```vim
:Mason  # Install language servers
:LspInfo  # Check status
```

### LSP not working (Vim/coc.nvim)
```vim
:CocInstall  # Install language servers
:CocInfo  # Check status
```

---

## 📚 Additional Resources

- Full documentation: See [README.md](README.md)
- Neovim: [LazyVim Documentation](https://www.lazyvim.org/)
- Vim: [Vim-Plug Documentation](https://github.com/junegunn/vim-plug)
- tmux: See [tmux/tmux.md](tmux/tmux.md)

