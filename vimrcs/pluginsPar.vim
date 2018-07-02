" ----- gmarik/Vundle.vim -----
" https://github.com/VundleVim/Vundle.vim

" Manager plugins



" ----- flazz/vim-colorschemes -----
" https://github.com/flazz/vim-colorschemes

" colorscheme

" Toggle this to "light" for light colorscheme
set background=dark

" Set color scheme
try
    colorscheme gruvbox
    "colorscheme molokai
    "colorscheme solarized
catch
endtry



" ----- bling/vim-airline -----
" https://github.com/vim-airline/vim-airline

" Lean & mean status/tabline for vim that's light as air

" Show airline for different tabs
let g:airline#extensions#tabline#enabled = 1

" Show airline for different buffers
let g:airline#extensions#tabline#buffer_nr_show = 1

" Enable special font
let g:airline_powerline_fonts = 1

" Separators can be configured independently for the tabline
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep='|'

" Just show the filename (no path) in the tab
let g:airline#extensions#tabline#fnamemod = ':t'

" Define personal fomat
"function! AirlineInit()
"let g:airline_section_a = airline#section#create(['mode',' ','branch'])
"let g:airline_section_b = airline#section#create_left(['ffenc','hunks','%f'])
"let g:airline_section_c = airline#section#create(['filetype'])
"let g:airline_section_x = airline#section#create(['%P'])
"let g:airline_section_y = airline#section#create(['%B'])
"let g:airline_section_z = airline#section#create_right(['%l','%c'])
"endfunction
"autocmd VimEnter * call AirlineInit()



" ----- vim-airline/vim-airline-themes -----
" https:://github.com/vim-airline/vim-airline-themes

" the official theme repository for vim-airline

" Choose an airline theme
"let g:airline_theme="luna"



" ----- octol/vim-cpp-enhanced-highlight -----
" https://github.com/octol/vim-cpp-enhanced-highlight

"additional vim c++ syntax highlighting

"Enable highlight of class scope
let g:cpp_class_scope_highlight = 1

"Support for template highlight
let g:cpp_experimental_template_highlight = 1

"Highlighting of member variables is disabled by default
let g:cpp_member_variable_highlight= 1



" ----- scrooloose/nerdtree -----
" https://github.com/scrooloose/nerdtree

" The NERD tree allows to explore filesystem and to open files and directories

" Auto open NERDTree when vim start up
" This fucntion has been setted by vim-nerdtree-tabs
"autocmd VimEnter * NERDTree
"autocmd VIMEnter * wincmd w

" Auto open nerdtree if no file is edited when vim start up
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree |endif

" Auto open nerdtree when vim starts up on opening a directory
" This fucntion has been setted by vim-nerdtree-tabs
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd w | ene | wincmd w |endif

" Close vim if the only window left is NERDTree
" This fucntion has been setted by vim-nerdtree-tabs
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Set Tree Symbol
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Nerdtree ignore file type
let NERDTreeIgnore = ['\.pyc$','__pycache__',' CVS',' .git','.DS_Store','\.swp$','\.swo$']

" Don't show hidden file in nerdtree
let NERDTreeShowHidden = 0



" ----- Xuyuanp/nerdtree-git-plugin -----
" https://github.com/Xuyuanp/nerdtree-git-plugin

" A plugin of NERDTree showing git status flags.

" Use this variable to change symbols
let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }



" ----- jistr/vim-nerdtree-tabs -----
" https://github.com/jistr/vim-nerdtree-tabs

" NERDTree and tabs together in Vim, painlessly

" Open/close NERDTree Tabs with F3
map <F3> <plug>NERDTreeTabsToggle<CR>

" Open NERDTree only if directory was given as startup argument
let g:nerdtree_tabs_open_on_console_startup=2

" On startup, focus NERDTree if opening a directory, focus file if opening a file.
let g:nerdtree_tabs_smart_startup_focus=1

" Close current tab if there is only one window in it and it's NERDTree
let g:nerdtree_tabs_autoclose=1



" ----- xolox/vim-misc -----
" https://github.com/xolox/vim-misc

" Libs for easytags



" ----- xolox/vim-easytags -----
" https://github.com/xolox/vim-easytags

" Automated tag generatiron

" Set system ctags path
let g:easytags_cmd = '/usr/local/bin/ctags'

" Where to save tags
set tags=./.tags

" Save tags in the opening file's path
let g:easytags_dynamic_files = 2

" Events trigger the automatic updating and highlighting performed
let g:easytags_events = ['BufReadPost', 'BufWritePost']

" Tags is async
let g:easytags_async = 1

" Distiguish soft and hard links
let g:easytags_resolve_links = 1

" It will suppress the warning on startup if ctags is not found or not recent enough
let g:easytags_suppress_ctags_warning = 1



" ----- majutsushi/tagbar -----
" https://github.com/majutsushi/tagbar

" A plugin reads your tags file and displays the information in an accesible way inside vim

" Open/close tagbar with F4
nmap <F4> :TagbarToggle<CR>

" Forbid open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)

" After Selection one tag and auto close tagbar
let g:tagbar_autoclose=1

" Window won't displace help message
let g:tagbar_compact = 1

" Forbid auto focus when tarbar is open
let g:tagbar_autofocus = 1

" Tarbar width Setting
let g:tagbar_width = 32

" Define how to create tags about cpp
"let g:tagbar_type_cpp = {
"\ 'ctagstype' : 'c++',
"\ 'kinds'     : [
"\ 'd:macros:1',
"\ 'g:enums',
"\ 't:typedefs:0:0',
"\ 'e:enumerators:0:0',
"\ 'n:namespaces',
"\ 'c:classes',
"\ 's:structs',
"\ 'u:unions',
"\ 'f:functions',
"\ 'm:members:0:0',
"\ 'v:global:0:0',
"\ 'x:external:0:0',
"\ 'l:local:0:0'
"\ ],
"\ 'sro'        : '::',
"\ 'kind2scope' : {
"\ 'g' : 'enum',
"\ 'n' : 'namespace',
"\ 'c' : 'class',
"\ 's' : 'struct',
"\ 'u' : 'union'
"\ },
"\ 'scope2kind' : {
"\ 'enum'      : 'g',
"\ 'namespace' : 'n',
"\ 'class'     : 'c',
"\ 'struct'    : 's',
"\ 'union'     : 'u'
"\ }
"\ }



" ----- vim-scripts/a.vim -----
" https://github.com/vim-scripts/a.vim

" Switch between source files and header files quickly

" F2 open .cpp or .h file in split window
nnoremap <silent> <F2> :AV<CR>

" Create file mapping
let g:alternateExtensions_h = "c,cpp,cxx,cc"
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



" ----- kien/ctrlp.vim -----
" https://github.com/kien/ctrlp.vim

" A magical vim plugin for finding files quickly

" Default mapping and the default command to invoke CtrlP
"let g:ctrlp_map = '<C-O>'

" When invoked without an explicit starting directory,CtrlP won't set its local working directory
"let g:ctrlp_working_path_mode =''

" Set ignore file type
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Ignore files in .gitignore
"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Set the limit of the heigh
"let g:ctrlp_max_height = 15

" Set to choose file from top
"let g:ctrlp_match_window_reversed=0

" The max mruf to remenber
"let g:ctrlp_mruf_max=500

" Enable follow symbol links
"let g:ctrlp_follow_symlinks=1



" ----- Raimondi/delimitMate -----
" https://github.com/Raimondi/delimitMate

" A smart plugin to insert matching delimiters, like quotes,parentheses,and curly braches

" Turn on expansion of <CR>
let g:delimitMate_expand_cr = 1

autocmd FileType markdown let b:delimitMate_nesting_quotes = ["`"]
autocmd FileType tex let b:delimitMate_quotes = ""
autocmd FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
autocmd  FileType python let b:delimitMate_nesting_quotes = ['"', "'"]



" ----- scrooloose/nerdcommenter -----
" https://github.com/scrooloose/nerdcommenter

" Vim plugin for intensely orgasmic commenting

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims=1



" ----- dyng/ctrlsf.vim -----
" https://github.com/mileszs/ack.vim
" https://github.com/dyng/ctrlsf.vim

" A ack/ag powered code serach and view tool

" Mapping
nmap     <leader>ff <Plug>CtrlSFPrompt
nmap     <leader>fn <Plug>CtrlSFCwordPath

" Define case-sensitivity in search
let g:ctrlsf_case_sensitive = 'smart'

" Define how ctrlsf find search root
let g:ctrlsf_default_root = 'cwd'



" ----- terryma/vim-multiple-cursors -----
" https://github.com/terryma/vim-multiple-cursors

" True sublime test style multiple selections for vim

" Turn off the default mapping
let g:multi_cursor_use_default_mapping=0

" Map start key separately from next key
let g:multi_cursor_start_key='<F5>'

" Set the mapping
let g:multi_cursor_next_key='<C-j>'
let g:multi_cursor_prev_key='<C-k>'
let g:multi_cursor_skip_key='<C-p>'
let g:multi_cursor_quit_key='<Esc>'



" ----- tpope/vim-surround -----
"https://github.com/tpope/vim-surround

" The plugin provides mapping to easily delete, changeand add surroundings in pairs



" ----- SirVer/ultisnips -----
" https://github.com/honza/vim-snippets
" https://github.com/SirVer/ultisnips

" UltiSnips is the ultimate solution for snippets in Vim

" Trigger configuration.
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<C-tab>'

" Define the python interpreter version
let g:ULtiSnipsUsePythonVersion = 2



" ----- tpope/vim-fugitive -----
" https://github.com/tpope/vim-fugitive

" Using git in Vim

" Mapping
"nnoremap <Leader>gs :Gstatus<CR>
"nnoremap <Leader>gr :Gremove<CR>
"nnoremap <Leader>gl :Glog<CR>
"nnoremap <Leader>gb :Gblame<CR>
"nnoremap <Leader>gm :Gmove
"nnoremap <Leader>gp :Ggrep
"nnoremap <Leader>gR :Gread<CR>
"nnoremap <Leader>gg :Git
"nnoremap <Leader>gd :Gdiff<CR>



" ----- airblade/vim-gitgutter -----
" https://github.com/airblade/vim-gitgutter

" A Vim plugin which shows a git diff in the gutter and stages/undoes hunks

" Don't set any mappings at all
let g:gitgutter_map_keys = 0

" Always show the sign
"let g:gitgutter_sign_column_always = 1
set signcolumn=yes

" Set the max signs
let g:gitgutter_max_signs = 1000



" ----- jlanzarotta/bufexplorer -----
" https://github.com/jlanzarotta/bufexplorer

" bufexplorer can quickly and easily switch between buffers

"<leader>be: normal open
"<leader>bt: toggle open/close
"<leader>bs: force horizontal split
"<leader>bv: force vertical split

nnoremap <silent> <F6> :BufExplorer<CR>
nnoremap <silent> <s-F6> :ToggleBufExplorer<CR>
nnoremap <silent> <m-F6> :BufExplorerHorizontalSplit<CR>
nnoremap <silent> <c-F6> :BufExplorerVerticalSplit<CR>

" Show absolute paths.
let g:bufExplorerShowRelativePath=0

" Show detailed help.
let g:bufExplorerDetailedHelp=1

" Split left.
let g:bufExplorerSplitRight=0

" Sort by most recently used.
let g:bufExplorerSortBy='mru'



" ----- godlygeek/tabular -----
" https://github.com/godlygeek/tabular

" Vim script for text filtering and alignment



" ----- Chiel92/vim-autoformat -----
"https://github.com/Chiel92/vim-autoformat

"provide easy code formatting in vim

" Set F7 to autoformat
nnoremap <silent> <F7> :Autoformat<CR>

" Autoformat when saving a file
"autocmd BufWrite * :Autoformat

"Set personal format
let g:formatdef_my_custom_c='"astyle --style=ansi -a --sufiix=none %"'
let g:formatters_c = ['my_custom_c']

let g:formatdef_my_custom_cpp='"astyle --style=ansi --one-line=keep-statements -a --sufiix=none %"'
let g:formatters_cpp = ['my_custom_cpp']

"let g:formatdef_my_custom_perl='"astyle --style=gnu --sufiix=none %"'
"let g:formatters_perl = ['my_custom_perl']

"let g:formatdef_my_custom_py='"autopep8 -i --aggressive %"'
"let g:formatters_py = ['my_custom_py']

"let g:formatdef_my_custom_java='"astyle --style=java --sufiix=none %"'
"let g:formatters_java = ['my_custom_java']

"let g:formatdef_my_custom_jsp='"astyle --style=gnu --sufiix=none %"'
"let g:formatters_jsp = ['my_custom_jsp']

"let g:formatdef_my_custom_xml='"astyle --style=gnu --sufiix=none %"'
"let g:formatters_xml = ['my_custom_xml']



" ----- Valloric/YouCompleteMe -----
" https//github.com/Valloric/YouCompleteMe

" A code-completion engine for Vim

" Set error and waring symbol
let g:ycm_error_symbol='✘'
let g:ycm_warning_symbol='▲'

" Set python interpreter edition
let g:ycm_path_to_python_interpreter='python'

" Mappping
nnoremap <leader>dc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>df :YcmCompleter GoToDefinition<CR>
nnoremap <leader>dg :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Set the configure file path
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Turn off confirm
let g:ycm_confirm_extra_conf=0

" Enable tags from file
let g:ycm_collect_identifiers_from_tags_files = 1

" Disable identifiers from comments or strings
let g:ycm_collect_identifiers_from_comments_and_strings = 0

" When the autocomplete works
let g:ycm_min_num_of_chars_for_completion=1

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
let g:ycm_key_list_select_completion = ['<C-j>','<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>','<Up>']


"set completeopt-=preview
set completeopt =longest,menu

" Menu color
"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5

" Collected item color
"highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900



" ----- EasyMotion -----
" https://github.com/vim-scripts/EasyMotion
" EasyMotion provides a much simpler way to use some motions in vim


"let g:EasyMotion_leader_key = '<Leader>'
"let g:EasyMotion_smartcase = 1

"map f <Plug>(easymotion-prefix)
"map ff <Plug>(easymotion-s)
"map fs <Plug>(easymotion-f)
"map fl <Plug>(easymotion-lineforward)
"map fj <Plug>(easymotion-j)
"map fk <Plug>(easymotion-k)
"map fh <Plug>(easymotion-linebackward)



" ----- scrooloose/syntastic settings -----
" https://github.com/scrooloose/syntastic

" Syntastic is a syntax checking plugin for Vim

" Recommended settings from github
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_highlighting = 0
"let g:systastic_loc_list_height = 2

"let g:syntastic_error_symbol = '✘'
"let g:syntastic_error_symbol = '✘'
"let g:syntastic_warning_symbol = "▲⚠"

"let g:syntastic_cpp_remove_include_errors = 1
"let g:syntastic_cpp_check_header = 1
"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
"let g:syntastic_enable_balloons = 1 "whether to show balloons"



" ----- YankRing -----

" Maintains a histroy of previous yanks,changes and deletes
"Plugin 'YankRing.vim'

"nnoremap <silent> <F11> :YRShow<CR>

"if has("win16")|| has("win32")
""Don't do anything
"else
"let g:yankring_history_dir = '~/.vim/temps'
"endif

"" Set the max histroy
"let g:yankring_max_history = 500

"" yankring is persist betwent different edition
"let g:yankring_persist = 1



" ----- plasticboy/vim-markdown -----
" https://github.com/plasticboy/vim-markdown

" Syntax highlighting matching rules and mappings for the original Markdown and extensions

"Turn off the folding
"let g:vim_markdown_folding_disabled = 1



