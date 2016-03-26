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

## [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
按键			   		|    命令
-------------- 		| ------------------
<leader\>cc 		|	NERDComComment |
<leader\>cn 		|	NERDComNestedComment|
<leader\>c<space\>  |	NERDComToggleComment|
<leader\>cm 		|	NERDComMinimalComment|
<leader\>cu 		|	NERDComUncommentLine|


##[ctrlsf](https://github.com/dyng/ctrlsf.vim)

```shell
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
```

##[vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)


```shell
" Turn off the default mapping 
let g:multi_cursor_use_default_mapping=0

" Set the mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
```

##[vim-surround](https://github.com/tpope/vim-surround)

```shell
"cs ds ys
```

##[ultisnips](https://github.com/SirVer/ultisnips)

```shell
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger='<S-tab>'
let g:ULtiSnipsUsePythonVersion = 2
let g:UltiSnipsListSnippets='<C-e>'
```

##[vim-snippets](https://github.com/honza/vim-snippets)


##[vim-gitgutter](https://github.com/airblade/vim-gitgutter)


##[vim-fugitive](https://github.com/tpope/vim-fugitive)

```shell
" Always show the sign
let g:gitgutter_sign_column_always = 1

" Set the max signs 
let g:gitgutter_max_signs = 500

"Mapping
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gr :Gremove<CR>
nnoremap <Leader>gl :Glog<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gm :Gmove 
nnoremap <Leader>gp :Ggrep 
nnoremap <Leader>gR :Gread<CR>
nnoremap <Leader>gg :Git 
nnoremap <Leader>gd :Gdiff<CR>
```

##[YankRing](https://github.com/vim-scripts/YankRing.vim)


```shell
if has("win16")|| has("win32")
    "Don't do anything
else
    let g:yankring_history_dir = '~/.vim/temps'
endif

" Set the max histroy
let g:yankring_max_history = 500

" yankring is persist betwent different edition
let g:yankring_persist = 1

nnoremap <silent> <F11> :YRShow<CR>
```

## [bufexplorer](https://github.com/jlanzarotta/bufexplorer)


```shell
" be:normal open    bt:toggle open/close    bs:force horizontal split   bv:force vertical split

nnoremap <silent> <F10> :BufExplorer<CR>

" Do not show default help.
let g:bufExplorerDefaultHelp=0   

" Show relative paths.
let g:bufExplorerShowRelativePath=1

" Sort by most recently used.
let g:bufExplorerSortBy='mru'      

" Split left.
let g:bufExplorerSplitRight=0   

" Split vertically.
let g:bufExplorerSplitVertical=1 

" Split width
let g:bufExplorerSplitVertSize = 30

" Open in new window.
let g:bufExplorerUseCurrentWindow=1
```


## [tabular](https://github.com/godlygeek/tabular)
" :Tab aim-character

## [vim-markdown](https://github.com/plasticboy/vim-markdown)

```shell
"Turn off the folding 
let g:vim_markdown_folding_disabled = 1
```

## [vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight)

```shell
"Enable highlight of class scope
let g:cpp_class_scope_highlight = 1

"Support for template highlight
let g:cpp_experimental_template_highlight = 1

```

## [vim-autoformat](https://github.com/Chiel92/vim-autoformat)

```shell
noremap <silent> <F7> :Autoformat<CR>

"Set personal format
let g:formatdef_my_custom_c='"astyle --style=ansi -a --sufiix=none %"'
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
" Set error and waring symbol
let g:ycm_error_symbol='✘'
let g:ycm_warning_symbol='▲'

" Set python interpreter edition
let g:ycm_path_to_python_interpreter='python'

" Mappping
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>  
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>  
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>  

" Set the configure file path
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'  

" Turn off confirm
let g:ycm_confirm_extra_conf=0  

" Enable tags from file
let g:ycm_collect_identifiers_from_tags_files = 1  

" Disable identifiers from comments or strings
let g:ycm_collect_identifiers_from_comments_and_strings = 0

" When the autocomplete works
let g:ycm_min_num_of_chars_for_completion=3

" Disable omnifunc
let g:ycm_cache_omnifunc=0  


" Enable seed identifiers with syntax
let g:ycm_seed_identifiers_with_syntax = 1  

" Enable complete in comments
let g:ycm_complete_in_comments=1  

" Enable complete in strings
let g:ycm_complete_in_strings=1  

" Enable complete from ultisnips
let g:ycm_use_ultisnips_completer=1

" Disable in the following file
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \}

"Mappping
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
```






















