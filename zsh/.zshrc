# export PATH=/home/legendairy/.local/share/mise/installs/node/20.16.0/bin:$PATH
export PATH=$PATH:/home/$USER/.local/bin:$PATH
# If you come from bash you might have to change y#our $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="$PATH:/home/$USER/.local/share/JetBrains/Toolbox/scripts:$PATH"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export EDITOR="nvim"
# export SUDO_EDITOR = "$EDITOR"

ZSH_THEME="robbyrussell"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

#plugins
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
  tldr
)

source $ZSH/oh-my-zsh.sh

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.local/share/caroline/zsh/aliases
source ~/.local/share/caroline/zsh/prompt

# Start up prompt
CYAN="\e[36m"
STOP="\e[0m"
printf "${CYAN}"
hostname | figlet -c -f big
printf "${STOP}"
username=`hostname -i | awk '{print $3}'`
echo "User: $USER@$username"
uptime -p
# node Programming/JS/Today.js
########################################################

eval "$(oh-my-posh init zsh --config ~/ghost.omp.json)"

export OPEN_WEATHER_API_KEY='384b143e22f5f29ea6fd067aeca3b7f4'

# pnpm
export PNPM_HOME="/home/$USER/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

eval "$(vfox activate zsh)"
