SH_CAROLINE="$HOME/.local/share/caroline/sh"

for file in "$SH_CAROLINE/tools/"*.sh; do
  source "$file"
done

