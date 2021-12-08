### 依赖
#### apt-get
```
$ sudo apt-get install -y -f vim ctags xclip astyle python-setuptools python-dev git
```
#### yum
```
$ sudo yum install -y -f gcc vim git ctags xclip astyle python-setuptools 
```
#### brew
```
$ brew install vim ctags git astyle
```

### 插件
```
$ sudo ln -s /usr/bin/ctags /usr/local/bin/ctags

$ sudo rm -rf ~/vim
$ git clone https://github.com/OhOhOhOhOhOhOhOh/vim.git ~/vim
$ mv -f ~/vim ~/.vim
$ cp -f ./vimrc ~/.vimrc

$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```
> 最后修改`~/.vimrc`中文件头配置的作者和邮箱.