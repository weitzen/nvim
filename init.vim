"
"-------------------------------------------------------------
		"Allgemeine Einstellungen 
"-------------------------------------------------------------

"fuer python plugins
"Habe ein python environment angelegt für die Dependencies bzw modules die
"nvim braucht der Pfad weist eben auf die python exe in dem environment, weil
"wir das das python module für nvim installiert haben.
let g:python3_host_prog = 'c:\Users\weitz\nvim_plugins_env\Scripts\python'

set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

"benutze truecolor(24bit color) in der console
set termguicolors
"when a file is edited its plugin file is loaded (if there
"is one for the detected filetype)
"You can enable loading the plugin files for specific file types with:
filetype plugin on
syntax on

" tell vim where to put its backup files
 set backup
 set backupdir=C:\Users\weitz\AppData\Local\nvim\backupFilesVim\backupFiles\
" " tell vim where to put swap files
 set dir=C:\Users\weitz\AppData\Local\nvim\backupFilesVim\swpFiles\
 set undodir=C:\Users\weitz\AppData\Local\nvim\backupFilesVim\undoFiles\
 

"-------------------------------------------------------------
		"Einstellungen für die Suche
"-------------------------------------------------------------

"remove the hightlighting of the current search with ESC
nnoremap <esc> :noh<return><esc>

"" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

"-------------------------------------------------------------
		"Einstellungen für Einrueckungen, Tabs 
"-------------------------------------------------------------

"fine tune the amount of whitespace to be inserted with a <tab> character
set tabstop=4
set softtabstop=4
"fine tune the amount of whitespace to delete or insert using the indentation
"commands in normal mode (< und >)
"setting all to 4 we ensure that indentation in normal mode and tab keys in
"insert mode uses the same amount
set shiftwidth=4
set shiftround
"use spaces instead of tab characters
set expandtab

"-------------------------------------------------------------
		"Einstellungen für Zeilennummern 
"-------------------------------------------------------------

" "deactivate setting: set nu! 
 set nu
 set rnu

"-------------------------------------------------------------
		"Einstellungen für Window-movement 
"-------------------------------------------------------------

 " bind Ctrl+<movement> keys to move around the windows, instead of using
 " Ctrl+w + <movement>
  map <c-j> <c-w>j
  map <c-k> <c-w>k
  map <c-l> <c-w>l
  map <c-h> <c-w>h

"-------------------------------------------------------------
		"Plugins VIM-PLUG SECTION
"-------------------------------------------------------------


