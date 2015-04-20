" using PEP-8 Coding Style for python
" using indent python script so no smartindent is used
set nosmartindent

" using 4 spaces for tab
setlocal tabstop=4

" deletes 4 spaces as tab
setlocal softtabstop=4

setlocal shiftwidth=4

"setlocal textwidth=90

" uses smart indetation in python
setlocal smarttab

" use spaces instead of tabs
setlocal expandtab

" sets textwidth
set textwidth=79

" highlights lines with to much signs
set colorcolumn=80

" better syntax highlighting in python code
"set complete+=k~/.vim/syntax/python.vim isk+=.,(

" use omnicompletion for python
runtime! autoload/pythoncomplete.vim
setlocal omnifunc=pythoncomplete#Complete
