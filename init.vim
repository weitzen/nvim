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
"use the system keyboard as the default register
set clipboard=unnamed

"benutze truecolor(24bit color) in der console
set termguicolors
"when a file is edited its plugin file is loaded (if there
"is one for the detected filetype)
"You can enable loading the plugin files for specific file types with:
filetype plugin on
"damit wir den vim-internen file explorer ntrw benutzen können
set nocompatible
syntax on

set history=200
" Avoid the Cursor Keys When Recalling Commands from History
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" für das einfachere Pasten vom System Clipboard nach vim 
set pastetoggle=<f5>

"Now when we type %% on Vim’s : command-line prompt, it automatically expands
"to the path of the active buffer, just as though we had typed %:h <Tab>
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" tell vim where to put its backup files
 set backup
 set backupdir=C:\Users\weitz\AppData\Local\nvim\backupFilesVim\backupFiles\
" " tell vim where to put swap files
 set dir=C:\Users\weitz\AppData\Local\nvim\backupFilesVim\swpFiles\
 set undodir=C:\Users\weitz\AppData\Local\nvim\backupFilesVim\undoFiles\

 

"-------------------------------------------------------------
		"Einstellungen für die Suche
"-------------------------------------------------------------

"The ** wildcard matches all subdirectories beneath the app/ directory
"find-cmd findet jetzt files im app-Directory und allen Subdirs darunter
:set path+=C:/BitbucketRepos/**

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

" Plugins will be downloaded under the specified directory.
call plug#begin('$USERPROFILE/AppData/Local/nvim/plugins')

" Declare the list of plugins.
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'nelstrom/vim-visual-star-search'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

