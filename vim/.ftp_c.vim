" Vim filetype plugin file
"
"   Language :  C / C++
"     Plugin :  c.vim (version 5.3)
" Maintainer :  Fritz Mehner <mehner@fh-swf.de>
"   Revision :  $Id: c.vim,v 1.33 2008/12/10 18:57:44 mehner Exp $
"
" This will enable keyword completion for C and C++
" using Vim's dictionary feature |i_CTRL-X_CTRL-K|.
" -----------------------------------------------------------------

" ---------- My Style C.Vim ------------
" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set noautoindent
" use intelligent indentation for C
set nosmartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=80
" turn syntax highlighting on
set t_Co=256
syntax on
"colorscheme wombat256
" turn line numbers on
set number
" highlight matching braces
set showmatch

