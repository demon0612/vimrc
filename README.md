#~/.vim/vimrc

##安装
安装需要的依赖库：vim git ctags python ruby clang astyle

vim需要支持python解释器运行，如果不支持请查阅[vim编译安装](./doc/vim.md)。

使用git安装步骤如下：

```shell
	git clone https://github.com/demon0612/vimrc.git
	sh vimrc/install.sh
```

##基本设置



##已安装插件
* [Vundle](https://github.com/VundleVim/Vundle.vim): 统一管理其他插件的工具

```shell
	filetype off
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
	Plugin 'gmark/Vundle.vim'
	# 添加其他插件
	call vundle#endl()
	filetype plugin indent on

```

* [vim-colorschemes](https://github.com/flazz/vim-colorschemes): vim配色集合（包括人气很高的solarized、gruvbox等）

```shell
	try
		colorscheme solarized
		"colorscheme gruvbox
	catch
	endtry
```

* [vim-airline](https://github.com/vim-airline/vim-airline):状态栏显示内容和配色设置

```shell
	let g:airline#extensions#tabline#enabled = 1 #切换不同的tab时显示airline
	let g:airline#extensions#tabline#buffer_nr_show = 1#切换不同的buffer显示airline
	let g:airline_powerline_fonts = 1 #显示powerline字体
```
最后一条设置必须有powerline字体支持，安装方法如下：

```shell
	git clone https://github.com/powerline/fonts.git
	sh fonts/install.sh
```

* [vim-airline-themes](https:://github.com/vim-airline/vim-airline-themes):airline配色集合

```shell
	"let g:airline_theme="luna"
```

* [nerdtree](https://github.com/scrooloose/nerdtree):文件资源管理器

```shell
	autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree |endif #启动Vim时如果没有打开明确文件则开启nerdtree
	let g:NERDTreeDirArrowExpandable = '▸'#设置管理器指向箭头
	let g:NERDTreeDirArrowCollapsible = '▾'
	let NERDTreeIgnore = ['\.pyc$','__pycache__',' CVS',' .git','.DS_Store','\.swp$','\.swo$']#设置不显示文件类型
	let NERDTreeShowHidden = 0#不显示隐藏文件
```

* [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs):使nerdtree看起来更像一个面板，独立于不同tabs

```shell
	let g:nerdtree_tabs_open_on_gui_startup = 1
	let g:nerdtree_tabs_open_on_console_startup = 0
	let g:nerdtree_tabs_no_startup_for_diff = 1
	let g:nerdtree_tabs_smart_startup_focus = 1
	let g:nerdtree_tabs_open_on_new_tab = 1
	let g:nerdtree_tabs_meaningful_tab_names = 1
	let g:nerdtree_tabs_autoclose = 1
	let g:nerdtree_tabs_synchronize_view = 1
	let g:nerdtree_tabs_synchronize_focus = 1
	let g:nerdtree_tabs_focus_on_files = 0
	let g:nerdtree_tabs_startup_cd = 1
	let g:nerdtree_tabs_autofind = 0
```

*[vim-misc](https://github.com/xolox/vim-misc):作为easytags的依赖库

*[vim-easytags](https://github.com/xolox/vim-easytags):自动为文件生成tags

```shell
	let g:easytags_cmd = '/usr/bin/ctags'
	set tags=./tags;
	let g:easytags_dynamic_files = 1
	let g:easytags_events = ['BufReadPost', 'BufWritePost']
	let g:easytags_async = 1
	let g:easytags_resolve_links = 1
	let g:easytags_suppress_ctags_warning = 1
```

*[tagbar](https://github.com/majutsushi/tagbar):设置tags窗口








##主要按键映射

###F功能键设置

 按键|命令|说明  
 ------------- |------------------| -----------
  F3 | :NERDTreeTabsToggle<CR\>  | 开关文件资源管理器
  F4 | ::TagbarToggle<CR\>		 | 开关标签管理器

