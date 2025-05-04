#source /home/legendairy/.bashrc
#source ~/.local/share/omakub/defaults/bash/rc

export PATH=/home/legendairy/.local/share/mise/installs/node/20.16.0/bin:$PATH
export PATH=$PATH:/home/legendairy/.local/bin:$PATH
# If you come from bash you might have to change y#our $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="$PATH:/home/legendairy/.local/share/JetBrains/Toolbox/scripts:$PATH"

# export OPEN_WEATHER_API_KEY= "5bea91a1e11a0ffa65574e3d73d4097d"

# export PATH=$HOME/.cargo/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export EDITOR="nvim"
# export SUDO_EDITOR = "$EDITOR"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git 
  vscode 
  sudo 
  ubuntu
  hitchhiker
  vi-mode
  aliases
  tmux 
  copyfile 
  copypath 
  dotenv  
  emoji-clock
  extract
  fzf
  kitty 
  last-working-dir
  man 
  magic-enter
  mongocli
  wd
  web-search
  dnf
  frontend-search
  docker
)


source $ZSH/oh-my-zsh.sh
#source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh

# now load zsh-syntax-highlighting plugin

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias swayconfig="nvim ~/.config/sway/config"
# source /home/legendairy/.bashrc
alias zel="zellij"
alias zela="zellij a"
alias mongs="sudo systemctl start mongod"
alias mongx="sudo systemctl stop mongod"
alias Pdoc="cd ~/Doc/Portfolio/"
alias posh="pwsh"
alias deb="ssh 192.168.1.22"
alias pn="pnpm"

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.local/share/caroline/zsh/aliases
source ~/.local/share/caroline/zsh/prompt
#source ~/.local/share/omakub/defaults/bash/rc
#alias n="nvim"
#eval "$(oh-my-posh init zsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/catppuccin.omp.json')"
#eval "$(oh-my-posh init zsh)"
#eval "$(zellij setup --generate-auto-start zsh)"
#figlet -c Coroline
#nerdfetch
#fastfetch
pokeget gengar --hide-name | fastfetch --file-raw -
#regolith-look set catppuccin
#set -o vi
eval "$(oh-my-posh init zsh --config ~/atomic.omp.json)"
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export OPEN_WEATHER_API_KEY='384b143e22f5f29ea6fd067aeca3b7f4'

# pnpm
export PNPM_HOME="/home/legendairy/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/legendairy/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/legendairy/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/legendairy/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/legendairy/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# Yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
