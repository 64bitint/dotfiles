[ -d "/usr/local/sbin" ] && export PATH="/usr/local/sbin:$PATH"
[ -d "$HOME/.local/bin" ] && export PATH="$HOME/.local/bin:$PATH"

FISH=`which fish`

if [[ -x "$FISH" ]]; then
	exec env SHELL="$FISH" "$FISH" -i
fi
