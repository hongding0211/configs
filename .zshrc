# Homebrew
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
[ -z "${MANPATH-}" ] || export MANPATH=":${MANPATH#:}"
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}"

# PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# zsh completions
fpath=(
  "$HOME/.zsh/completions"
  "/opt/homebrew/share/zsh/site-functions"
  "/opt/homebrew/share/zsh-completions"
  $fpath
)

# Interactive completions and prefix-aware history search
zstyle ':autocomplete:*' ignored-input '*'
[ -s "$HOME/zsh-autocomplete/zsh-autocomplete.plugin.zsh" ] && source "$HOME/zsh-autocomplete/zsh-autocomplete.plugin.zsh"
bindkey '^I' menu-select

# fnm
FNM_PATH="/opt/homebrew/opt/fnm/bin"
if [ -d "$FNM_PATH" ]; then
  eval "$(fnm env)"
fi

# Git aliases formerly provided by the Oh My Zsh git plugin.
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gba='git branch --all'
alias gc='git commit --verbose'
alias gca='git commit --verbose --all'
alias gcam='git commit --all --message'
alias gcb='git checkout -b'
alias gco='git checkout'
alias gd='git diff'
alias gl='git pull'
alias gp='git push'
alias gst='git status'

# OpenClaw completion
[ -s "$HOME/.openclaw/completions/openclaw.zsh" ] && source "$HOME/.openclaw/completions/openclaw.zsh"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# Shell UX plugins
[ -s "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ] && source "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Prompt
eval "$(starship init zsh)"

# Syntax highlighting should stay near the end of the file.
[ -s "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && source "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
