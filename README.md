#Using Vim As IDE

##安装
安装需要的依赖库：vim git ctags python ruby clang astyle

vim需要支持python解释器运行，如果不支持请查阅[vim编译安装](./doc/vim.md)。

使用git安装步骤如下：

```shell
	git clone https://github.com/demon0612/vimrc.git
	sh vimrc/install.sh
```


##已安装插件
* [Vundle](https://github.com/VundleVim/Vundle.vim): 统一管理其他插件的工具

* [vim-colorschemes](https://github.com/flazz/vim-colorschemes): vim配色集合（包括人气很高的solarized、gruvbox等）

* [vim-airline](https://github.com/vim-airline/vim-airline):状态栏显示格式、内容设置

	需要有powerline字体支持，安装方法如下：

	```shell
		git clone https://github.com/powerline/fonts.git
		sh fonts/install.sh
	```
* [vim-airline-themes](https:://github.com/vim-airline/vim-airline-themes):airline配色集合

* [nerdtree](https://github.com/scrooloose/nerdtree):文件资源管理器

* [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs):使nerdtree看起来更像一个面板，独立于不同tabs

* [vim-misc](https://github.com/xolox/vim-misc):easytags的依赖库

* [vim-easytags](https://github.com/xolox/vim-easytags):自动生成tags

* [tagbar](https://github.com/majutsushi/tagbar):tags窗口浏览器

* [a](https://github.com/vim-scripts/a.vim)：快速打开对应文件（cpp->h)

* [ctrlp](https://github.com/kien/ctrlp.vim): 文件、buffer、最近使用、tag 查找

* [delimitMate](https://github.com/Raimondi/delimitMate)：自动补全括号、引用

* [nerdcommenter](https://github.com/scrooloose/nerdcommenter)：快速注释

* [ack](https://github.com/mileszs/ack.vim)：Vim中使用Ack命令，ctrlsf依赖库

* [ctrlsf](https://github.com/dyng/ctrlsf.vim)：搜索审查代码

* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)：智能块选择

* [vim-surround](https://github.com/tpope/vim-surround)：添加修改删除成对符号

* [ultisnips](https://github.com/SirVer/ultisnips)：智能添加各种语言常用代码块

* [vim-snippets](https://github.com/honza/vim-snippets)：常用代码块库

* [vim-fugitive](https://github.com/tpope/vim-fugitive)：Vim中集成git

* [vim-gitgutter](https://github.com/airblade/vim-gitgutter)：在边框栏显示git diff内容

* [bufexplorer](https://github.com/jlanzarotta/bufexplorer)：buffer管理器

* [tabular](https://github.com/godlygeek/tabular)：格式对齐

* [vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight)：C++语法高亮（支持C++11）

* [vim-autoformat](https://github.com/Chiel92/vim-autoformat)：代码格式自动整理

* [YouCompleteMe](https//github.com/Valloric/YouCompleteMe)：自动补全插件


	插件详细参数请查看[这里](./doc/plugin.md)。

##主要按键映射

###F功能键设置

 按键|命令|说明  
 ------------- |------------------| -----------
  F2 | :AV\<CR\>			| 打开对应文件
  F3 | :NERDTreeTabsToggle\<CR\>  | 开关文件资源管理器
  F4 | :TagbarToggle\<CR\>		 | 开关标签管理器
  F5 | :BufExplorer\<CR\>	   |打开buffer管理器
  F6 | :Autoformat\<CR\>		   |自动格式化代码


