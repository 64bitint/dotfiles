#!/bin/sh

# needs bash git wget install first:
# apk add bash git
# apt install wget bash git

mkdir ~/.local/bin && \
wget -O ~/.local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && \
chmod +x ~/.local/bin/yadm && \
~/.local/bin/yadm clone --bootstrap https://github.com/64bitint/dotfiles.git