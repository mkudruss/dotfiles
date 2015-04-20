" -----------------------------------------------------------------------------
"
" This is the .vimrc file of

"       Manuel Kudruss, Dipl.-Math.
"       IWR - Interdisciplinary Center for Scientific Computing
"       Heidelberg University
"       mail: manuel.kudruss@iwr.uni-heidelberg.de

" -----------------------------------------------------------------------------

" ---- Pathogen Plugins -------------------------------------------------------

filetype off " Pathogen needs to run before plugin indent on

call pathogen#incubate()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'


" This must be first, because it changes other options as side effect
set nocompatible

" ---- BASIC SETTINGS ---------------------------------------------------------

" filetype stuff
filetype on
filetype plugin on
filetype plugin indent on

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" ---- INDENT
set nosmartindent " Do not use deprecated smartindent
set autoindent    " use autoindent
set copyindent    " copies indention of last line for autoindent
set tabstop=4     " a tab is four spaces
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set expandtab     " replace all tabs by tabwidth spaces

" ---- BUFFERS
" hides buffers instead of closing them
set hidden

" ---- STYLE
set enc=utf-8     " use UTF-8 as default encoding
set title         " change the terminal's title

set syntax=on     " use syntax highlighting
colorscheme slate " use a nice color scheme

set number        " always show line numbers
set showmatch     " set show matching parenthesis

set ruler         " shows the ruler for the cursor
set showcmd       " shows the input of an incomplete command

set colorcolumn=80 " print red vertical line on character 80

" ---- WRAPPING
" stop automatically wrapping text
set nowrap
set textwidth=0
set wrapmargin=0

" ---- SEARCH
set incsearch     " show search matches as you type
set hlsearch      " highlight search terms
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise

" ---- HISTORY
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

" ---- FILES
set nobackup      " do not use vim for backups
set noswapfile    " do not use vim for backups
" let vim ignore some filetypes
set wildignore=*.swp,*.bak,*.pyc,*.class

" ---- TAB COMPLETION
set wildmode=longest:full
set wildmenu

" ---- NOTIFICATION
set visualbell           " don't beep
set noerrorbells         " don't beep
"
" highlight tabs and trailing whitespaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅
" change status line information
set laststatus=2
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ \ [%l/%L\ (%p%%)
"
" Highlights Trailing Whitespaces
match Todo /\s\+$\|\t/

" ---- VIM INFO
set viminfo=%,'50
set viminfo+=\"100,:100
set viminfo+=n~/.viminfo
"
" ---- CUSTOM SHORTCUTS -------------------------------------------------------
" ---- VIM CONTROLS
" Learn to use vim correctly
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>
noremap <silent> j <Left>
noremap <silent> k gj
noremap <silent> l gk
noremap <silent> ö <Right>

" Navigate through tabs
"map <S-h> :tabfirst<CR>
"map <S-j> :tabprev<CR>
"map <S-k> :tabnext<CR>
"map <S-l> :tablast<CR>
"map <C-t> :tabnew<Space>
"map <C-w> :tabclose<Space>
map <C-k> :bp<CR>
map <C-l> :bn<CR>
map <S-left> :bp<CR>
map <S-right> :bn<CR>
map <C-t> :badd<Space>
map <C-w> :bdelete<CR>

" save some key strokes when using command line mode
nnoremap ; :

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" ---- SHORTCUTS
" change mapleader from/ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
set pastetoggle=<F3> " switch to paste mode

" clear search buffer from by pressing ",/"
nmap <silent> ,/ :nohlsearch<CR>

" Sudo save file with forgetting root rights before
cmap w!! w !sudo tee % >/dev/null

" replace Umlauts with proper Latex symbols
function Umlauts()
    silent s/Ö/\\"O/eg
    silent s/Ä/\\"A/eg
    silent s/Ü/\\"U/eg
    silent s/ö/\\"o/eg
    silent s/ä/\\"a/eg
    silent s/ü/\\"u/eg
    silent s/ß/{\\ss}/eg
endfunction

map <silent> <c-h> :call Umlauts()<CR>

" get rid off trailing white spaces
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" auto commands when saving files
autocmd FileType * autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" ---- PLUGINS ----------------------------------------------------------------
" ---- TAGLISTPLUGIN
" Taglist variables
" Display function name in status bar:
let g:ctags_statusline=1
" Automatically start script
let generate_tags=1
" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0
" Shorter commands to toggle Taglist display
nnoremap TT :TlistToggle<CR>
map <F4> :TlistToggle<CR>
" Various Taglist diplay config:
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_File_Fold_Auto_Close = 1
