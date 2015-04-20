" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
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

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

" IMPORTANT: Spell Checker 
" Turn on/off
set spell
" Set Language
"setlocal spell spelllang=de_20 ""New German Spelling
"setlocal spell spelllang=de_19 ""Old German Spelling
setlocal spell spelllang=en_us

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" OPTIONAL: I don't like folding.
let g:Tex_Folding=0 

" OPTIONAL: allows to parse labels like sec:.
set iskeyword+=:

" OPTIONAL: sets Menu on in GUI
let g:Tex_Menus=1

au BufEnter *.tex set autowrite
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
"let g:Tex_CompileRule_pdf = 'mkdir tmp; pdflatex -output-directory tmp -interaction=nonstopmode $*'
let g:Tex_GotoError = 0
let g:Tex_ViewRule_pdf = 'evince'
