#!/bin/bash

# 参考：https://www.cnblogs.com/EasonJim/p/7863099.html
# oh-my-zsh主题列表：https://github.com/ohmyzsh/ohmyzsh/wiki/themes

PLUGINS_DIR=~/.oh-my-zsh/custom

# 安装依赖
sudo apt-get install git
sudo apt-get install curl

# 安装zsh
sudo apt-get install zsh

# 安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# 安装zsh-syntax-highlighting语法高亮插件
# 官网：https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $PLUGINS_DIR/plugins/zsh-syntax-highlighting
#echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# 安装zsh-autosuggestions语法历史记录插件
# 官网：https://github.com/zsh-users/zsh-autosuggestions
git clone git://github.com/zsh-users/zsh-autosuggestions $PLUGINS_DIR/plugins/zsh-autosuggestions
#echo "plugins=(\n   git\n   zsh-autosuggestions\n)" >> ${ZDOTDIR:-$HOME}/.zshrc

# 拷贝配置文件
cp ./zshrc ~/.zshrc

# 切换默认shell
chsh

# 生效zsh配置
source ~/.zshrc