#!/bin/bash

# 参考：https://www.cnblogs.com/EasonJim/p/7863099.html
# oh-my-zsh主题列表：https://github.com/ohmyzsh/ohmyzsh/wiki/themes

sudo apt-get install git
sudo apt-get install curl

# 安装zsh
sudo apt-get install zsh

# 安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" 

# 安装autojump自动跳转插件
# 官网：https://github.com/wting/autojump
# vim ~/.zshrc
# 在最后一行加入，注意点后面是一个空格
# . /usr/share/autojump/autojump.sh

# 安装zsh-syntax-highlighting语法高亮插件
# 官网：https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
#echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# 安装zsh-autosuggestions语法历史记录插件
# 官网：https://github.com/zsh-users/zsh-autosuggestions
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
# vim ~/.zshrc
# 增加：
# plugins=(
#   git
#   zsh-autosuggestions
# )

cp ./zshrc ~/.zshrc

# 切换默认shell
chsh

# 生效zsh配置
source ~/.zshrc