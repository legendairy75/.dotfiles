# Toggle sudo on the current command line
# sudo-command-line() {
#   if [[ $BUFFER == sudo\ * ]]; then
#     BUFFER=${BUFFER#sudo }
#   else
#     BUFFER="sudo $BUFFER"
#   fi
#   CURSOR=${#BUFFER}
# }
#
# zle -N sudo-command-line
