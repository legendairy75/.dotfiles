# Lazy-load Homebrew
__brew_lazy_load() {
  # Remove the stub
  unset -f brew

  # Initialize Homebrew environment
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

  # Re-run the original command
  brew "$@"
}

# Stub command
brew() {
  __brew_lazy_load "$@"
}
