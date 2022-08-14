#!/bin/sh

case `uname` in
Linux) case `uname -m` in
	x86_64) posh_arch=linux-amd64
	;;
	aarch64) posh_arch=linux-arm64
	;;
	esac
;;
esac

sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-$posh_arch \
	-O /usr/local/bin/oh-my-posh && \
	sudo chmod +x /usr/local/bin/oh-my-posh

sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-arm64 \
	-O /usr/local/bin/oh-my-posh && \
		sudo chmod +x /usr/local/bin/oh-my-posh