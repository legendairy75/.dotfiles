
# zmodload zsh/zprof

# Bootstrap
ZSH_CAROLINE="$HOME/.local/share/caroline/zsh"

# Core
source "$ZSH_CAROLINE/path.zsh"
source "$ZSH_CAROLINE/env.zsh"

# Oh My Zsh + plugins
source "$ZSH_CAROLINE/plugins.zsh"
source "$ZSH_CAROLINE/omz.zsh"

# UI
source "$ZSH_CAROLINE/prompt.zsh"
source "$ZSH_CAROLINE/aliases.zsh"

# ZLE / keybinds
source "$ZSH_CAROLINE/zle.zsh"
source "$ZSH_CAROLINE/keybinds.zsh"

# External tools
for file in "$ZSH_CAROLINE/tools/"*.zsh; do
  source "$file"
done

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

cheat() { curl cheat.sh/$1 }

unalias run-help
autoload run-help
HELPDIR=/usr/share/zsh/"${ZSH_VERSION}"/help
# Minimal inline help (docstring-style)
help() {
  emulate -L zsh
  PAGER=cat MANPAGER=cat run-help "$1" 2>/dev/null
}

# alias nix=toolbox run -c nix-toolbox-42 nix repl
