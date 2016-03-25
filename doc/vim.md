## vim install
vim编译安装方法如下：

1.下载源代码：

请到[这里](http://www.vim.org/download.php)下载适合自己系统的源代码。或者直接使用如下命令：

```shell
	wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
```

2.安装依赖库：

```shell
	sudo yum install python-devel python3-devel ruby-devel libX11-devel gtk-devel gtk2-devel gtk3-devel ncurses-devel #for Centos,Fedora,Redhat
	sudo apt-get install python-dev python3-dev ruby-dev libX11-dev gtk-dev gtk2-dev gtk3-dev ncurses-dev #for Debian,Ubuntu
```

3.解压缩：

```shell
	tar jxvf vim-7.4.tar.bz2
	cd vim74
```

4.编译安装：

```shell
	./configure --with-features=huge --enable-pythoninterp --enable-python3interp --enable-gui=gtk2 --enable-cscope --prefix=/usr --enable-luainterp
	make
	sudo make install
```

	

