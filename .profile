export PATH=$PATH:~/.local/bin


FISH=`which fish`

if [[ -x "$FISH" ]]; then
	exec env SHELL="$FISH" "$FISH" -i
fi
