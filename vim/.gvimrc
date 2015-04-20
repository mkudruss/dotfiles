" ---- GVIM -------------------------------------------------------------------
" make gvim more compact
if has("gui_running")
  " remove stupid gvim WARNINGS
  set guioptions+=f

  " remove scrollbars
  set guioptions-=l
  set guioptions-=r
  set guioptions-=b

  " remove menubar
  set guioptions-=m

  " remove toolbar
  set guioptions-=T

  " set apropriate font
  set guifont=Monospace\ 9
"else
endif
