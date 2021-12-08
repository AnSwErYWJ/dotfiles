### bash
```
$ cp bashrc ~/.bashrc
$ source ~/.bashrc
```

### zsh
#### 安装依赖
```
$ sudo apt-get install git
$ sudo apt-get install curl
```

#### 安装zsh
```
$ sudo apt-get install zsh
```

#### 安装oh-my-zsh
```
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### 安装zsh-syntax-highlighting语法高亮插件
```
$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
$ echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```

#### 安装zsh-autosuggestions语法历史记录插件
```
$ git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
$ echo "plugins=(\n   git\n   zsh-autosuggestions\n)" >> ${ZDOTDIR:-$HOME}/.zshrc
```

#### 配置
```
$ cp zshrc ~/.zshrc
$ chsh
$ source ~/.zshrc
```

#### 参考
- 安装配置：https://www.cnblogs.com/EasonJim/p/7863099.html
- `oh-my-zsh`主题列表：https://github.com/ohmyzsh/ohmyzsh/wiki/themes
- `sh-syntax-highlighting`：https://github.com/zsh-users/zsh-syntax-highlighting
- `zsh-autosuggestions`：https://github.com/zsh-users/zsh-autosuggestions
