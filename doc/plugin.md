# 参数设置

## [Vundle](https://github.com/VundleVim/Vundle.vim)

```shell
	filetype off
	set rtp+=~/.vim/bundle/Vundle.vim "添加runtime路径
	call vundle#begin()
	Plugin 'gmark/Vundle.vim'
	" 添加其他插件
	call vundle#endl()
	filetype plugin indent on

```

## [vim-colorschemes](https://github.com/flazz/vim-colorschemes)

```shell
	set background = dark	"将背景颜色设置成黑色，可选项light
	try
		"colorscheme solarized
		colorscheme gruvbox
		"colorscheme molokai
	catch
	endtry
```

## [vim-airline](https://github.com/vim-airline/vim-airline)

```shell
	let g:airline#extensions#tabline#enabled = 1 "切换不同的tab时显示airline
	let g:airline#extensions#tabline#buffer_nr_show = 1"切换不同的buffer显示airline
	let g:airline_powerline_fonts = 1 "显示powerline字体
	"let g:airline#extensions#tabline#left_sep = ' ' "设置标题栏不同tab之间的分隔符样式
	"let g:airline#extensions#tabline#left_alt_sep = '|'
```

## [vim-airline-themes](https:://github.com/vim-airline/vim-airline-themes)

```shell
	"let g:airline_theme="luna" "选择官方airline样式
```

##  [nerdtree](https://github.com/scrooloose/nerdtree)

```shell
	autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree |endif "启动Vim时如果没有打开明确文件则开启nerdtree
	let g:NERDTreeDirArrowExpandable = '▸' "设置管理器指向箭头
	let g:NERDTreeDirArrowCollapsible = '▾'
	let NERDTreeIgnore = ['\.pyc$','__pycache__',' CVS',' .git','.DS_Store','\.swp$','\.swo$'] "设置不显示文件类型
	let NERDTreeShowHidden = 0 "不显示隐藏文件
```

## [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)
```shell
	map <F3> <plug>NERDTreeTabsToggle<CR> "设置功能键F3开关nerdtree
```


## [vim-easytags](https://github.com/xolox/vim-easytags)

```shell
	let g:easytags_cmd = '/usr/bin/ctags' "设置系统ctags位置
	let g:easytags_async = 1 "允许非同步tags
	set tags=./.tags "设置tags存储路径
	let g:easytags_dynamic_files = 2 "每个文件当前目录创建.tags文件储存tags
	let g:easytags_events = ['BufReadPost', 'BufWritePost'] "设置创建tags的时间
	let g:easytags_resolve_links = 1 "在linux中区别软硬连接
	let g:easytags_suppress_ctags_warning = 1 "如果没有找到ctags命令，则显示警告信息
```

## [tagbar](https://github.com/majutsushi/tagbar)

```shell
	nmap <F4> :TagbarToggle<CR> "设置功能键F4开关nerdtree
	autocmd BufEnter * nested :call tagbar#autoopen(0) "禁止tagbar自动开启
	"let g:tagbar_compact = 1 "窗口禁止替换帮助信息
	let g:tagbar_autofocus = 0 "禁止tagbar打开时自动聚焦
	let g:tagbar_width = 32 "设置tagbar窗口宽度
	let g:tagbar_type_cpp = {
     \ 'ctagstype' : 'c++',
     \ 'kinds'     : [
         \ 'd:macros:1',
         \ 'g:enums',
         \ 't:typedefs:0:0',
         \ 'e:enumerators:0:0',
         \ 'n:namespaces',
         \ 'c:classes',
         \ 's:structs',
         \ 'u:unions',
         \ 'f:functions',
         \ 'm:members:0:0',
         \ 'v:global:0:0',
         \ 'x:external:0:0',
         \ 'l:local:0:0'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
    	 \ }
	\ }"设置cpp文件tags格式
```

##[a](https://github.com/vim-scripts/a.vim)

```shell
	nnoremap <silent> <F2> :AV<CR> "设置功能键F2竖屏显示对应文件
	let g:alternateExtensions_h = "c,cpp,cxx,cc" "设置对应文件映射关系
	let g:alternateExtensions_hh = "c,cpp,cxx,cc"
	let g:alternateExtensions_c = "h,hh"
	let g:alternateExtensions_cc = "h,hh"
	let g:alternateExtensions_cpp = "h,hh"
	let g:alternateExtensions_cxx = "h,hh"

	let g:alternateExtensions_H = "C,CPP,CXX,CC"
	let g:alternateExtensions_HH = "C,CPP,CXX,CC"
	let g:alternateExtensions_C = "H,HH"
	let g:alternateExtensions_CC = "H,HH"
	let g:alternateExtensions_CPP = "H,HH"
	let g:alternateExtensions_CXX = "H,HH"
```

##[ctrlp](https://github.com/kien/ctrlp.vim)

```shell
	let g:ctrlp_map = '<C-O>' "使用Ctrl+o打开Ctrlp
	let g:ctrlp_working_path_mode ='' "禁止自动设置相对目录
	let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$' "设置忽略文件类型
	let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] "自动忽略.gitignore文件中的内容
	let g:ctrlp_max_height = 15 "限定ctrlp窗口最大高度
	let g:ctrlp_match_window_reversed=0 "从上往下选择内容
	let g:ctrlp_mruf_max=500 "这是MRU(最近使用文件)记录最大条数为500
	let g:ctrlp_follow_symlinks=1 "允许跟踪符号链接
```

##[delimitMate](https://github.com/Raimondi/delimitMate)
```shell
	let delimitMate_expand_cr = 1 "自动打开对于<CR>命令的扩展
	augroup mydelimitMate
  		au!
		au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  		au FileType tex let b:delimitMate_quotes = ""
  		au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  		au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
	augroup END "设置不同文件自动补全格式
```

##[ctrlsf](https://github.com/dyng/ctrlsf.vim)

```shell
	nmap     <leader>ff <Plug>CtrlSFPrompt  "设置键盘映射
	vmap     <leader>ff <Plug>CtrlSFVwordPath
	vmap     <leader>fF <Plug>CtrlSFVwordExec
	nmap     <leader>fn <Plug>CtrlSFCwordPath
	nmap     <leader>fp <Plug>CtrlSFPwordPath
	nnoremap <leader>fo :CtrlSFOpen<CR>
	nnoremap <leader>ft :CtrlSFToggle<CR>
	inoremap <leader>ft <Esc>:CtrlSFToggle<CR>
	let g:ctrlsf_case_sensitive = 'smart' "将大小写设定为smart
	let g:ctrlsf_winsize = '30%' "设定搜索结果窗口所占比例
```

##[vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)

```shell 
	let g:multi_cursor_use_default_mapping=0 "关闭默认键盘映射
	let g:multi_cursor_next_key='<C-n>' "设置键盘映射
	let g:multi_cursor_prev_key='<C-p>'
	let g:multi_cursor_skip_key='<C-x>'
	let g:multi_cursor_quit_key='<Esc>'
```

##[ultisnips](https://github.com/SirVer/ultisnips)

```shell
	let g:UltiSnipsExpandTrigger='<C-u>' "设置键盘映射
	let g:UltiSnipsJumpForwardTrigger = '<C-u>'
	let g:UltiSnipsJumpBackwardTrigger='<C-b>'
	let g:ULtiSnipsUsePythonVersion = 2 "指定python版本
```

##[vim-fugitive](https://github.com/tpope/vim-fugitive)

```shell
	nnoremap <Leader>gs :Gstatus<CR> "设置键盘映射
	nnoremap <Leader>gr :Gremove<CR>
	nnoremap <Leader>gl :Glog<CR>
	nnoremap <Leader>gb :Gblame<CR>
	nnoremap <Leader>gm :Gmove 
	nnoremap <Leader>gp :Ggrep 
	nnoremap <Leader>gR :Gread<CR>
	nnoremap <Leader>gg :Git 
	nnoremap <Leader>gd :Gdiff<CR>
```

##[vim-gitgutter](https://github.com/airblade/vim-gitgutter)

```shell
	let g:gitgutter_map_keys = 0 "禁止使用默认mapping
	let g:gitgutter_sign_column_always = 1 "总是在左侧显示状态栏
	let g:gitgutter_max_signs = 1000 "允许显示最大数目
```

## [bufexplorer](https://github.com/jlanzarotta/bufexplorer)

```shell
	nnoremap <silent> <F5> :BufExplorer<CR> "F5功能键打开管理器
	let g:bufExplorerShowRelativePath=1 "显示相对路径
	let g:bufExplorerSortBy='mru'  "以最近使用文件排列文件

```


## [vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight)

```shell
	let g:cpp_class_scope_highlight = 1 "增加对class的支持
	let g:cpp_experimental_template_highlight = 1 "增加对模板的支持

```

## [vim-autoformat](https://github.com/Chiel92/vim-autoformat)

```shell
	noremap <silent> <F6> :Autoformat<CR>"设置快捷键F6自动格式化代码

	let g:formatdef_my_custom_c='"astyle --style=ansi -a --sufiix=none %"' "设置一系列文件格式化代码方式
	let g:formatters_c = ['my_custom_c']

	let g:formatdef_my_custom_cpp='"astyle --style=ansi --one-line=keep-statements -a --sufiix=none %> /dev/null 2>&1"'
	let g:formatters_cpp = ['my_custom_cpp']

	let g:formatdef_my_custom_perl='"astyle --style=gnu --sufiix=none %"'
	let g:formatters_perl = ['my_custom_perl']

	let g:formatdef_my_custom_py='"autopep8 -i --aggressive %"'
	let g:formatters_py = ['my_custom_py']

	let g:formatdef_my_custom_java='"astyle --style=java --sufiix=none %"'
	let g:formatters_java = ['my_custom_java']

	let g:formatdef_my_custom_jsp='"astyle --style=gnu --sufiix=none %"'
	let g:formatters_jsp = ['my_custom_jsp']

	let g:formatdef_my_custom_xml='"astyle --style=gnu --sufiix=none %"'
	let g:formatters_xml = ['my_custom_xml']
```

## [YouCompleteMe](https//github.com/Valloric/YouCompleteMe)

```shell
	let g:ycm_error_symbol='✘' ”设置错误和警告标示
	let g:ycm_warning_symbol='▲'
	let g:ycm_path_to_python_interpreter='python' "设定python版本
	nnoremap <leader>dc :YcmCompleter GoToDeclaration<CR> "设定映射
	nnoremap <leader>df :YcmCompleter GoToDefinition<CR>  
	nnoremap <leader>dg :YcmCompleter GoToDefinitionElseDeclaration<CR>  
	let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'  "设定configure文件
	let g:ycm_confirm_extra_conf=0  "关闭确认信息
	let g:ycm_collect_identifiers_from_tags_files = 1  "允许从tag中获取信息
	let g:ycm_collect_identifiers_from_comments_and_strings = 0 "禁止从注释和字符串中获得信息
	let g:ycm_min_num_of_chars_for_completion=3 "允许打开自动补全最少字母数
	let g:ycm_cache_omnifunc=0  ”关闭omnifunc支持
	let g:ycm_seed_identifiers_with_syntax = 1  "允许从语法中获得相关信息
	let g:ycm_complete_in_comments=1  "允许在注释中自动补全
	let g:ycm_complete_in_strings=1  "允许在字符串中自动补全
	let g:ycm_use_ultisnips_completer=1  "允许使用ultisnips
	let g:ycm_filetype_blacklist = {
      	\ 'tagbar' : 1,
      	\ 'nerdtree' : 1,
      	\}"在以上文件中禁止自动补全
```
