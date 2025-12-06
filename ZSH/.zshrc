# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ======================================
# ZSH CORE
# ======================================

export ZSH="$HOME/.oh-my-zsh"

# Debug marker (temporary)
echo "ZSHRC LOADED" >/tmp/zshrc_loaded

# ======================================
# THEME (MUST BE SET BEFORE OH-MY-ZSH)
# ======================================
ZSH_THEME="powerlevel10k/powerlevel10k"

# ======================================
# PLUGINS (MUST BE SET BEFORE OH-MY-ZSH)
# ======================================
plugins=(
  git
  zsh-autosuggestions
)

# ======================================
# LOAD OH-MY-ZSH (REQUIRED)
# ======================================
source $ZSH/oh-my-zsh.sh

# ======================================
# ALIASES (UNCHANGED)
# ======================================

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cls='clear'

alias loginserver='ssh user@127.0.0.1'
alias test_root_server='ssh user@127.0.0.1'
alias server='ssh user@127.0.0.1'

# ======================================
# FZF (SAFE LOAD)
# ======================================
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ======================================
# NVM (CLEAN + SAFE)
# ======================================
export NVM_DIR="$HOME/.nvm"

if [ -s "$NVM_DIR/nvm.sh" ]; then
  source "$NVM_DIR/nvm.sh"
fi

# NVM bash completion unnecessary in zsh — disable to avoid conflict:
# [ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

# ======================================
# AUTOSUGGEST STYLE
# ======================================
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# ======================================
# COMPLETION OPTIMIZATION
# ======================================
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# ======================================
# OPTIONAL PERFORMANCE BOOST
# ======================================
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY
setopt AUTO_CD
setopt CORRECT

# ======================================
# USER BIN PATH (OPTIONAL)
# ======================================
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
