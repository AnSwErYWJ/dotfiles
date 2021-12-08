### 安装
```
$ sudo apt-get update
$ sudo apt-get install terminator
```

### 配置
```
$ mkdir -p ~/.config/terminator
$ cp config ~/.config/terminator
```

### 设置为默认终端
```
$ sudo apt-get install dconf-editor
$ gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator
$ gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"
```

重启`terminator`生效.