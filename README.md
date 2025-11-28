# Dotfiles: Personal Configuration for Neovim, Vim, tmux, and VS Code

Welcome to my personal `dotfiles` repository! This repository provides custom configurations for **Neovim**, **Vim**, **tmux**, and **VS Code**, designed to streamline your development workflow. Achieve a consistent, highly productive terminal environment across all your machines with these tailored settings and efficient keybindings.

## 📦 Included Configurations

- **Neovim (nvim):** A powerful, modern editing experience built on LazyVim with comprehensive core settings, essential keymaps, and robust plugins
- **Vim (vim):** A `.vimrc` configuration specifically designed for traditional Vim users, ensuring a familiar yet optimized experience
- **tmux:** A custom setup including a polished status bar (Catppuccin theme), intuitive key bindings, and efficient session management
- **VS Code:** Custom settings for font, editor behavior, and development tools

## ✨ Highlights

- **Easy Installation:** Set up your environment quickly and effortlessly using symbolic links
- **Broad Compatibility:** Fully compatible with both Linux and macOS operating systems
- **Developer Ready:** A perfect starting point for developers looking to establish a highly productive and personalized terminal setup

---

## 🚀 Installation Instructions

### Prerequisites

- **Git** (for cloning the repository)
- **Neovim** (v0.9.0 or higher) - for Neovim configuration
- **Vim** (8.0 or higher) - for Vim configuration
- **tmux** (3.0 or higher) - for tmux configuration
- **Node.js** (v18 or higher) - required for some Neovim plugins

### Step 1: Clone the Repository

```bash
# Clone to your home directory
git clone https://github.com/abdullahalsazib/dotfile.git ~/.dotfiles

# Or clone to a custom location
git clone https://github.com/abdullahalsazib/dotfile.git /path/to/dotfiles
```

### Step 2: Install Individual Configurations

#### Neovim Configuration

1. **Create symbolic link:**
   ```bash
   # Backup existing config if it exists
   [ -d ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.backup
   
   # Create symbolic link
   ln -sf ~/.dotfiles/nvim ~/.config/nvim
   ```

2. **Install Neovim (if not already installed):**
   ```bash
   # Ubuntu/Debian
   sudo apt install neovim
   
   # macOS (using Homebrew)
   brew install neovim
   ```

3. **Launch Neovim:**
   ```bash
   nvim
   ```
   The first launch will automatically:
   - Install `lazy.nvim` plugin manager
   - Install LazyVim framework
   - Install all configured plugins
   - This may take a few minutes

4. **Verify installation:**
   - Check that plugins are loading: `:Lazy`
   - Check LazyVim version: `:LazyVim`

#### Vim Configuration

1. **Install Vim-Plug (plugin manager):**
   ```bash
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```

2. **Create symbolic link:**
   ```bash
   # Backup existing .vimrc if it exists
   [ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.backup
   
   # Create symbolic link (note: the file is named vim.vimrc in the repo)
   ln -sf ~/.dotfiles/vim/vim.vimrc ~/.vimrc
   ```

3. **Install Vim (if not already installed):**
   ```bash
   # Ubuntu/Debian
   sudo apt install vim
   
   # macOS (using Homebrew)
   brew install vim
   ```

4. **Install plugins:**
   ```bash
   vim
   ```
   Inside Vim, run:
   ```
   :PlugInstall
   ```
   Wait for all plugins to download and install.

5. **Reload configuration (optional):**
   Inside Vim:
   ```
   :source ~/.vimrc
   ```

#### tmux Configuration

1. **Install tmux (if not already installed):**
   ```bash
   # Ubuntu/Debian
   sudo apt install tmux
   
   # macOS (using Homebrew)
   brew install tmux
   ```

2. **Install TPM (Tmux Plugin Manager):**
   ```bash
   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
   ```

3. **Create symbolic link:**
   ```bash
   # Backup existing config if it exists
   [ -f ~/.tmux.conf ] && mv ~/.tmux.conf ~/.tmux.conf.backup
   
   # Create symbolic link
   ln -sf ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
   ```

4. **Install clipboard support (Linux only):**
   ```bash
   # For Wayland
   sudo apt install wl-clipboard
   
   # For X11
   sudo apt install xclip
   ```

5. **Start tmux and install plugins:**
   ```bash
   tmux
   ```
   Inside tmux, press `Ctrl+b` then `I` (capital I) to install plugins.

6. **Reload configuration:**
   Inside tmux, press `Ctrl+b` then `r` to reload, or:
   ```bash
   tmux source-file ~/.tmux.conf
   ```

#### VS Code Configuration

1. **Locate VS Code settings directory:**
   - **Linux:** `~/.config/Code/User/settings.json`
   - **macOS:** `~/Library/Application Support/Code/User/settings.json`
   - **Windows:** `%APPDATA%\Code\User\settings.json`

2. **Backup existing settings:**
   ```bash
   # Linux/macOS
   [ -f ~/.config/Code/User/settings.json ] && cp ~/.config/Code/User/settings.json ~/.config/Code/User/settings.json.backup
   ```

3. **Copy settings:**
   ```bash
   # Linux
   cp ~/.dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
   
   # macOS
   cp ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
   ```

4. **Install recommended fonts (optional):**
   - **Fira Code:** Download from [GitHub](https://github.com/tonsky/FiraCode)
   - **Monaspace:** Download from [GitHub](https://github.com/githubnext/monaspace)

---

## 📖 Usage Instructions

### Neovim (LazyVim)

#### Key Features
- **LazyVim Framework:** Modern Neovim distribution with sensible defaults
- **Tokyo Night Theme:** Beautiful transparent theme
- **Language Support:** C++ (clangd), JSON, Markdown, TOML
- **Plugins:** Telescope, nvim-tree, bufferline, lualine, treesitter, and more

#### Essential Keybindings

| Action | Key Binding |
|--------|-------------|
| Leader key | `<Space>` |
| Open file explorer | `<leader>e` or `<leader>fe` |
| Find files | `<leader>ff` |
| Find in files (grep) | `<leader>fg` |
| Find buffers | `<leader>fb` |
| Find help | `<leader>fh` |
| Toggle terminal | `<leader>ft` |
| Quit | `<leader>qq` |
| Save | `<leader>w` or `:w` |
| Format code | `<leader>cf` |
| Code actions | `<leader>ca` |
| Go to definition | `gd` |
| Go to references | `gr` |
| Hover documentation | `K` |
| Rename symbol | `<leader>cr` |
| Toggle diagnostics | `<leader>cd` |
| Open trouble (diagnostics) | `<leader>xx` |
| Split window horizontally | `<leader>|` |
| Split window vertically | `<leader>-` |
| Close buffer | `<leader>bd` |
| Next buffer | `<leader>bn` |
| Previous buffer | `<leader>bp` |

#### Plugin Management
- Open Lazy plugin manager: `<leader>l` or `:Lazy`
- Sync plugins: `:Lazy sync`
- Update plugins: `:Lazy update`

#### Customization
- Edit config: `~/.config/nvim/lua/config/`
- Edit plugins: `~/.config/nvim/lua/plugins/`
- After changes, restart Neovim or run `:Lazy reload`

### Vim

#### Key Features
- **Vim-Plug:** Fast plugin manager
- **Gruvbox Theme:** Beautiful dark theme with transparent background
- **NERDTree:** File explorer
- **fzf:** Fuzzy file finder
- **coc.nvim:** Language server protocol support
- **ALE:** Linting and fixing
- **vim-fugitive:** Git integration

#### Essential Keybindings

| Action | Key Binding |
|--------|-------------|
| Leader key | `<Space>` |
| Toggle NERDTree | `<leader>e` |
| Toggle Undotree | `<leader>u` |
| Find files (fzf) | `<leader>f` |
| Find in files (ripgrep) | `<leader>g` |
| Save file | `<Ctrl-s>` |
| Go to definition | `gd` |
| Go to type definition | `gy` |
| Go to implementation | `gi` |
| Show documentation | `K` |
| Compile C++ file | `<leader>c` |
| Toggle Buffergator | `<leader>bg` |
| Next buffer | `<leader>bn` |
| Previous buffer | `<leader>bp` |
| Delete buffer | `<leader>bd` |

#### Autocomplete (coc.nvim)
- Confirm selection: `<Enter>`
- Next suggestion: `<Tab>`
- Previous suggestion: `<Shift-Tab>`

#### Plugin Management
- Install plugins: `:PlugInstall`
- Update plugins: `:PlugUpdate`
- Remove plugins: `:PlugClean`

### tmux

#### Key Features
- **Catppuccin Theme:** Beautiful status bar theme
- **TPM:** Plugin manager
- **Vim-like navigation:** h/j/k/l for pane navigation
- **Mouse support:** Enabled by default

#### Essential Keybindings

| Action | Key Binding |
|--------|-------------|
| Leader/Prefix | `Ctrl+b` |
| Reload config | `leader + r` |
| Detach session | `leader + d` |
| **Pane Management** |
| Split horizontal | `leader + %` |
| Split vertical | `leader + "` |
| Navigate left | `leader + h` |
| Navigate down | `leader + j` |
| Navigate up | `leader + k` |
| Navigate right | `leader + l` |
| Kill pane | `leader + x` |
| Resize pane | `leader + Ctrl + <arrow>` |
| Bigger resize | `leader + Alt + <arrow>` |
| **Window Management** |
| New window | `leader + c` |
| Next window | `leader + n` |
| Previous window | `leader + p` |
| Rename window | `leader + ,` |
| List windows | `leader + w` |
| Kill window | `leader + &` |
| **Session Management** |
| List sessions | `tmux ls` |
| Attach to session | `tmux a` or `tmux a -t <name>` |
| New named session | `tmux new -s <name>` |
| Kill session | `tmux kill-session -t <name>` |
| Kill all sessions | `tmux kill-server` |
| **Copy Mode** |
| Enter copy mode | `leader + [` |
| Paste | `leader + ]` |
| **Plugins** |
| Install plugins | `leader + I` (capital I) |
| Update plugins | `leader + U` (capital U) |
| Uninstall plugins | `leader + alt + u` |

#### Session Management Examples

```bash
# Create a new session named "dev"
tmux new -s dev

# List all sessions
tmux ls

# Attach to session "dev"
tmux a -t dev

# Detach from session (inside tmux)
Ctrl+b, then d

# Kill session "dev"
tmux kill-session -t dev
```

### VS Code

#### Key Features
- **Fira Code Font:** With ligatures enabled
- **Format on Save:** Automatic code formatting
- **ESLint Integration:** Auto-fix on save
- **Custom Editor Settings:** Optimized for development
- **Transparent Terminal:** Custom terminal background

#### Customization
- Edit settings: `~/.config/Code/User/settings.json` (Linux)
- Font settings can be customized in the `editor.fontFamily` field
- Commented options for Monaspace fonts are available

---

## 🔧 Troubleshooting

### Neovim Issues

**Plugins not installing:**
- Ensure you have Git installed
- Check internet connection
- Run `:Lazy` to see error messages
- Try `:Lazy clean` then `:Lazy install`

**LSP not working:**
- Install language servers: `:Mason` (opens Mason UI)
- For C++: Ensure `clangd` is installed
- Check LSP status: `:LspInfo`

**Theme not loading:**
- Run `:colorscheme tokyonight` manually
- Check `~/.config/nvim/lua/plugins/colorscheme.lua`

### Vim Issues

**Plugins not installing:**
- Ensure Vim-Plug is installed correctly
- Check `~/.vim/autoload/plug.vim` exists
- Run `:PlugInstall` again

**coc.nvim not working:**
- Install Node.js (v18+)
- Run `:CocInstall` to install language servers
- Check `:CocInfo` for diagnostics

**Theme not loading:**
- Ensure Gruvbox plugin is installed: `:PlugInstall`
- Run `:colorscheme gruvbox` manually

### tmux Issues

**Plugins not installing:**
- Ensure TPM is installed: `ls ~/.tmux/plugins/tpm`
- Press `Ctrl+b` then `I` (capital I) inside tmux
- Check `~/.tmux.conf` path is correct

**Status bar not showing:**
- Reload config: `Ctrl+b` then `r`
- Check Catppuccin plugin is installed

**Clipboard not working (Linux):**
- Install `wl-clipboard` (Wayland) or `xclip` (X11)
- Add to `~/.tmux.conf`:
  ```bash
  set -g set-clipboard on
  set -g @pagecand-copy-command 'wl-copy'  # or 'xclip -selection clipboard'
  ```

### VS Code Issues

**Font not displaying correctly:**
- Install Fira Code font manually
- Restart VS Code after font installation
- Check font name matches exactly in settings.json

**Settings not applying:**
- Ensure settings.json is in correct location
- Check JSON syntax is valid
- Restart VS Code

---

## 📁 Repository Structure

```
dotfile/
├── nvim/                 # Neovim configuration
│   ├── init.lua         # Main entry point
│   ├── lazyvim.json     # LazyVim extras configuration
│   ├── lua/
│   │   ├── config/      # Core configuration files
│   │   │   ├── autocmds.lua
│   │   │   ├── keymaps.lua
│   │   │   ├── lazy.lua
│   │   │   ├── options.lua
│   │   │   └── ui.lua
│   │   └── plugins/     # Plugin configurations
│   │       ├── bufferline.lua
│   │       ├── colorscheme.lua
│   │       ├── fzf.lua
│   │       ├── lualine.lua
│   │       ├── nvim-cmp.lua
│   │       ├── nvim-tree.lua
│   │       ├── telescope.lua
│   │       ├── treesitter.lua
│   │       └── ...
│   └── stylua.toml      # Lua formatter config
├── vim/                  # Vim configuration
│   ├── vim.vimrc        # Main vimrc file (symlink as ~/.vimrc)
│   └── vim.md           # Vim documentation
├── tmux/                 # tmux configuration
│   ├── tmux.conf        # Main config (symlink as ~/.tmux.conf)
│   └── tmux.md          # tmux documentation
├── vscode/               # VS Code settings
│   └── settings.json    # VS Code settings
├── LICENSE               # MIT License
└── README.md            # This file
```

---

## 🔄 Updating Configurations

### Update from Repository

```bash
cd ~/.dotfiles
git pull origin main
```

Then reload each tool:
- **Neovim:** Restart or run `:Lazy sync`
- **Vim:** Run `:PlugUpdate` then `:source ~/.vimrc`
- **tmux:** Press `Ctrl+b` then `r` (or `tmux source-file ~/.tmux.conf`)
- **VS Code:** Restart VS Code

### Backup Your Configurations

Before updating, it's recommended to backup your current configurations:

```bash
# Backup Neovim
[ -d ~/.config/nvim ] && cp -r ~/.config/nvim ~/.config/nvim.backup

# Backup Vim
[ -f ~/.vimrc ] && cp ~/.vimrc ~/.vimrc.backup

# Backup tmux
[ -f ~/.tmux.conf ] && cp ~/.tmux.conf ~/.tmux.conf.backup

# Backup VS Code
[ -f ~/.config/Code/User/settings.json ] && cp ~/.config/Code/User/settings.json ~/.config/Code/User/settings.json.backup
```

---

## 📝 Customization

All configurations are designed to be easily customizable:

- **Neovim:** Edit files in `~/.config/nvim/lua/`
- **Vim:** Edit `~/.vimrc` directly
- **tmux:** Edit `~/.tmux.conf` directly
- **VS Code:** Edit `~/.config/Code/User/settings.json` directly

After making changes:
- Neovim: Restart or run `:Lazy reload <plugin-name>`
- Vim: Run `:source ~/.vimrc`
- tmux: Press `Ctrl+b` then `r`
- VS Code: Changes apply automatically

---

## 🤝 Contributing

Feel free to fork this repository and customize it for your own needs. If you have suggestions or improvements, pull requests are welcome!

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- [LazyVim](https://www.lazyvim.org/) - Neovim framework
- [Tokyo Night](https://github.com/folke/tokyonight.nvim) - Neovim theme
- [Gruvbox](https://github.com/morhetz/gruvbox) - Vim theme
- [Catppuccin](https://github.com/catppuccin/tmux) - tmux theme
- [TPM](https://github.com/tmux-plugins/tpm) - tmux plugin manager
- [Vim-Plug](https://github.com/junegunn/vim-plug) - Vim plugin manager

---

## 📧 Contact

For questions or issues, please open an issue on the [GitHub repository](https://github.com/abdullahalsazib/dotfile).

---

**Happy coding! 🚀**
