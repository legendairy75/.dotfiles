
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

mkcd() {
    mkdir -p "$1" && cd "$1"
}

# alias nix=toolbox run -c nix-toolbox-42 nix repl

alias syncnotes='unison ~/Nextcloud/Documents/TheBookofDoom /mnt/dumbdrive/TheBookOfDoom'

# man helper

_manify() {
  if [[ $BUFFER != man\ * ]]; then
    BUFFER="man $BUFFER"
    CURSOR=$#BUFFER
  fi
}
zle -N _manify

bindkey -M vicmd 'mm' _manify
bindkey -M viins 'mm' _manify

# prep-nvim

_prep-nvim() {
  # Trim leading spaces (important for reliable matching)
  local buf="${BUFFER#"${BUFFER%%[![:space:]]*}"}"

  # If empty, just insert n
  if [[ -z "$buf" ]]; then
    BUFFER="n "
    CURSOR=2
    return
  fi

  # If already starts with n, leave it alone
  if [[ "$buf" == n\ * ]]; then
    return
  fi

  # Replace first word (command) with n
  BUFFER="n ${buf#* }"
  CURSOR=$#BUFFER
}
zle -N _prep-nvim

bindkey -M vicmd 'nn' _prep-nvim
bindkey -M viins '^e' _prep-nvim


# Inline calculator: type "= expression"
_calc_line() {
  local expr="${BUFFER#= }"
  BUFFER="$(qalc -t "$expr")"
  CURSOR=$#BUFFER
}
zle -N _calc_line
# When line starts with "=" → calculate
bindkey -M viins '=' self-insert
bindkey -M viins '^M' _calc_or_accept

_calc_or_accept() {
  if [[ "$BUFFER" == "= "* ]]; then
    _calc_line
  else
    zle accept-line
  fi
}
zle -N _calc_or_accept

join-last-command() {
  local last="${history[$((HISTCMD-1))]}"
  [[ -z $last ]] && return

  # add space only if buffer isn't empty
  if [[ -n $BUFFER ]]; then
    BUFFER+=" "
  fi

  BUFFER+="$last"
  CURSOR=${#BUFFER}
}
zle -N join-last-command
bindkey -M vicmd 'J' join-last-command


prepend-last-command() {
  local last="${history[$((HISTCMD-1))]}"
  [[ -z $last ]] && return
  BUFFER="$last $BUFFER"
  CURSOR=${#last}
}
zle -N prepend-last-command
bindkey -M vicmd 'gJ' prepend-last-command

# pnpm
export PNPM_HOME="/home/legendairy/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# the fuck
eval $(thefuck --alias)
