# Lazy-load pnpm
__pnpm_lazy_load() {
  unset -f pnpm

  export PNPM_HOME="$HOME/.local/share/pnpm"
  export PATH="$PNPM_HOME:$PATH"

  pnpm "$@"
}

pnpm() {
  __pnpm_lazy_load "$@"
}
