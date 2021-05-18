#!/bin/bash

echo "安装git"
if which apt-get >/dev/null; then
    echo "You are using apt-get tool"
	sudo apt-get install -y git
elif which yum >/dev/null; then
    echo "You are using yum tool"
	sudo yum install -y git
elif which brew >/dev/null;then
    echo "You are using HomeBrew tool"
    brew install git
fi

echo "配置git"
cp gitignore_global ~/.gitignore_global
cp gitconfig ~/.gitconfig
cp gitCommitMsg.template ~/.gitCommitMsg.template
cp gitconfig-wrok ~/.gitconfig-wrok
cp gitconfig-personal ~/.gitconfig-personal