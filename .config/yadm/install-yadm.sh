#!/bin/sh

# install using:
# sh <(wget -qO- https://github.com/64bitint/dotfiles/raw/main/.config/yadm/install-yadm.sh)

# needs bash git wget install first:
# apk add bash git
# apt install wget bash git

export PATH=$PATH:~/.local/bin 

type -P bash &> /dev/null \
	|| { echo "bash is required" && req=false; }

type -P git &> /dev/null \
	|| { echo "git is required" && req=false; }

type -P wget &> /dev/null \
	|| { echo "wget is required" && req=false; }

$req && mkdir -p ~/.local/bin && \
wget -O ~/.local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && \
chmod +x ~/.local/bin/yadm && \
~/.local/bin/yadm clone --bootstrap https://github.com/64bitint/dotfiles.git