# Tmux Configuration Guide

A comprehensive guide to installing, configuring, and using tmux with plugins.

## Installation

```bash
sudo apt install tmux
tmux -v
```

## Basic Usage

### Start tmux

```bash
tmux # leader / prefix = ctrl + b
```

### Detach from session

```
leader + d
```

### Attach to session

```bash
tmux a
```

## Session Management

### Create new session with name

```bash
tmux new -s <session_name>
```

### List all sessions

```bash
tmux ls
```

### Attach to target session

```bash
tmux a -t <index_session>
```

### Kill target session

```bash
tmux kill-session -t <session_name>
```

### Kill all sessions

```bash
tmux kill-server
```

## Window and Pane Management

### Split window

- **Horizontal split**: `leader + %`
- **Vertical split**: `leader + "`

### Show window index

```
leader + q
```

### Resize windows

- **Resize**: `leader + ctrl + <arrow_key>`
- **Bigger resize**: `leader + alt + <arrow_key>`

### Pre-selected layouts

- `leader + alt + 1`
- `leader + alt + 2`
- `leader + alt + 3`
- `leader + alt + 4`

### Window operations

- **New window**: `leader + c`
- **Jump to next window**: `leader + n`
- **Rename window**: `leader + ,` (comma)
- **Move window by index**: `leader + .` (dot)
- **Show session with windows**: `leader + w`

### Pane operations

- **Kill pane**: `leader + x`
- **Kill session**: `leader + &`

## Copy Mode

- **Enable copy mode**: `leader + [`
- **Paste mode**: `leader + ]`

## Configuration

### Create config file

```bash
vim ~/.tmux.conf
```

### Sample configuration

You can find a sample configuration at:
https://github.com/abdullahalsazib/Dotfile/blob/main/tmux/tmux.conf

### Install TPM (Tmux Plugin Manager)

Run this in your terminal:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Verify TPM installation

```bash
ls ~/.tmux/plugins/tpm
```

### Install clipboard support (for Linux)

```bash
sudo apt install wl-clipboard
```

### Optional clipboard configuration

Add to `~/.tmux.conf`:

```bash
set -g set-clipboard on
set -g @pagecand-copy-command 'wl-copy'
```

### Reload configuration

**Inside tmux:**
```
Prefix + r
```

**Or from terminal:**
```bash
tmux source-file ~/.tmux.conf
```

### Install plugins

Inside tmux, press:
```
Prefix + I
```

### Verify plugins installation

```bash
ls ~/.tmux/plugins
```

**Expected output:**
```
tpm
catppuccin
pagecand
tmux-pipe-pane
```

## Key Bindings Reference

| Action | Key Binding |
|--------|-------------|
| Leader/Prefix | `Ctrl + b` |
| Detach | `leader + d` |
| Horizontal split | `leader + %` |
| Vertical split | `leader + "` |
| Show window index | `leader + q` |
| Resize window | `leader + ctrl + <arrow_key>` |
| Bigger resize | `leader + alt + <arrow_key>` |
| Layout 1-4 | `leader + alt + 1/2/3/4` |
| New window | `leader + c` |
| Next window | `leader + n` |
| Rename window | `leader + ,` |
| Move window | `leader + .` |
| Show windows | `leader + w` |
| Kill pane | `leader + x` |
| Kill session | `leader + &` |
| Copy mode | `leader + [` |
| Paste mode | `leader + ]` |
| Reload config | `leader + r` |
| Install plugins | `leader + I` |

## Notes

- The default leader/prefix key is `Ctrl + b`
- All key bindings use the leader key as a prefix
- Make sure to reload the configuration after making changes
- Plugins are installed using TPM (Tmux Plugin Manager)
