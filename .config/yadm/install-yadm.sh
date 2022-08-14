#!/bin/sh

# link sudo to doas
type -P sudo &> /dev/null \
	|| ( type -P doas &> /dev/null && doas ln -s `type -P doas` /usr/local/bin/sudo ) \
	|| ( ( echo '#!/bin/sh' && echo '("$@")' ) > /usr/local/bin/sudo && chmod +x /usr/local/bin/sudo)

type -P apk &> /dev/null && sudo apk update && sudo apk add bash git
type -P apt-get &> /dev/null && (sudo apt-get update || true ) && sudo apt-get -y install wget bash git
sudo wget https://github.com/TheLocehiliosan/yadm/raw/master/yadm \
	-O /usr/local/bin/yadm && \
	sudo chmod +x /usr/local/bin/yadm
yadm clone --bootstrap -b main https://github.com/64bitint/dotfiles.gitaz