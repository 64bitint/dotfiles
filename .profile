[ -d "/usr/local/sbin" ] && export PATH="/usr/local/sbin:$PATH"
[ -d "~/.local/bin" ] && export PATH=$PATH:~/.local/bin

FISH=`which fish`

if [[ -x "$FISH" ]]; then
	exec env SHELL="$FISH" "$FISH" -i
fi
