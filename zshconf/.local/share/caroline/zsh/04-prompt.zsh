# Technicolor dreams
# force_color_prompt=yes
# color_prompt=yes

# Simple prompt with path in the window/pane title and carat for typing line
# PS1=$'\uf0a9 '
# PS1="\[\e]0;\w\a\]$PS1"

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
