#!/bin/sh

case `uname` in
Linux) case `uname -m` in
	x86_64) posh_arch=linux-amd64
	;;
	aarch64) posh_arch=linux-arm64
	;;
	esac
	mkdir -p ~/.local/bin && \
	wget -O ~/.local/bin/oh-my-posh https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-$posh_arch && \
	chmod +x ~/.local/bin/oh-my-posh
;;
Darwin) brew install jandedobbeleer/oh-my-posh/oh-my-posh
;;
esac