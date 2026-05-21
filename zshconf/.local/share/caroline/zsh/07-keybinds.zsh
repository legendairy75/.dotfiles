# Simple vi-mode without prompt injection
bindkey -v

# Bash-style history navigation in vi insert mode
bindkey -M viins '^P' up-line-or-history
bindkey -M viins '^N' down-line-or-history

# bindkey -M vicmd '\e\e' sudo-command-line
#
# bindkey -M viins '\e\e' sudo-command-line
