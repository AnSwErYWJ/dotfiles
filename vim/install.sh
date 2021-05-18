#!/bin/bash

### 使用https://github.com/OhOhOhOhOhOhOhOh/vim.git配置vim环境
### 并更新./vimrc配置文件, 注意修改vimrc文件中的Author与Mail

echo "安装将花费一定时间，请耐心等待直到安装完成^_^"
if which apt-get >/dev/null; then
    echo "You are using apt-get tool"
	sudo apt-get install -y -f vim ctags xclip astyle python-setuptools python-dev git
elif which yum >/dev/null; then
    echo "You are using yum tool"
	sudo yum install -y -f gcc vim git ctags xclip astyle python-setuptools python-devel
elif which brew >/dev/null;then
    echo "You are using HomeBrew tool"
    brew install vim ctags git astyle
fi

sudo easy_install -ZU autopep8 
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags
mv -f ~/vim ~/vim_old
git clone https://github.com/OhOhOhOhOhOhOhOh/vim.git ~/vim

## 备份
mv -f ~/.vim ~/.vim_old
mv -f ~/.vimrc ~/.vimrc_old

mv -f ~/vim ~/.vim
#mv -f ~/.vim/.vimrc ~/
cp -f ./vimrc ~/.vimrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
echo "正在努力为您安装bundle程序" > install.log
echo "安装完毕将自动退出" >> install.log
echo "请耐心等待" >> install.log
vim install.log -c "BundleInstall" -c "q" -c "q"
rm install.log
echo "安装完成"