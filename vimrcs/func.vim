autocmd! bufwritepost .vimrc source ~/.vimrc

" C/C++ specific settings
autocmd FileType c,cpp,cc  set cindent comments=sr:/*,mb:*,el:*/,:// cino={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s

" Auto write file head when created
autocmd BufNewFile *.cpp,*.c,*.cc,*.hh,*.h,*.sh,*.py exec ":call SetTitle()" 

"Restore cursor to file position in previous editing session
autocmd BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Auto locate to the new file end 
autocmd BufNewFile * normal G

function! SetTitle() 
	if &filetype == 'sh' 
        call setline(1,"\#!/bin/bash") 
		call append(line("."), "") 
	elseif &filetype == 'python'
		call setline(1,"#!/usr/bin/env python")
		call append(line("."),"# coding=utf-8")
        call append(line(".")+1, "") 
	else 
		call setline(1, "// ************************************************************************* ") 
		call append(line("."), "//	> File Name: ".expand("%")) 
		call append(line(".")+1, "//	> Author:") 
		call append(line(".")+2, "//	> Mail:") 
		call append(line(".")+3, "//	> Created Time: ".strftime("%c")) 
		call append(line(".")+4,"// ************************************************************************* ") 
		call append(line(".")+5, "")
	endif

	if expand("%:e") == 'h'|| expand("%:e")=='hh'
		call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
		call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
		call append(line(".")+8, "#endif")
	endif
endfunc 
