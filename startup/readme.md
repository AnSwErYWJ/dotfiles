### 说明
`Linux`系统的自定义启动脚本可以放在`/etc/profile.d/`目录中，在用户登录时运行。

#### 虚拟机共享文件夹挂载
```
$ vmhgfs-fuse [empty-floder] > /dev/null 2>&1
```

#### sshfs远程目录挂载
```
$ /usr/bin/sshfs xxx@xxx:/xxx /xxx -o nonempty -o ssh_command='/usr/bin/sshpass -p xxx ssh' > /dev/null 2>&1
```