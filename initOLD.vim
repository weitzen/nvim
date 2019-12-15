
colorscheme jellybeans
"-------------------------------------------------------------
		"VIM-PLUG SECTION
"-------------------------------------------------------------

" Plugins will be downloaded under the specified directory.
call plug#begin('c:\Users\weitz\AppData\Local\nvim\.vim\plugged\')

Plug 'https://github.com/sbdchd/neoformat'
Plug 'lervag/vimtex'
Plug 'Konfekt/FastFold'
Plug 'matze/vim-tex-fold'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
" webcomplete scheint im mom nicht zu funktioneren
" sollte out of the box mit deoplete zu funktioneren
" vervollständigt wörter indem es wörter vom browserfenster lädt
Plug 'thalesmello/webcomplete.vim'
" instant markdown funktioniert mehr shclecht als recht momentan (25.06)
Plug 'w0rp/ale'
Plug 'junegunn/goyo.vim'
Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug 'suan/vim-instant-markdown'
"mit :Tab /<zeichen> bpsw :Tab /=   oder :Tab /| dinge schön ausrichten
Plug 'godlygeek/tabular'
"tabular muss vor vim markdown in der list stehen
Plug 'plasticboy/vim-markdown'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/mattn/emmet-vim'

"autocompletion für verschiedene programmiersprachen etc
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let g:vimtex_compiler_progname = 'C:\Users\weitz\AppData\Local\Programs\Python\Python35\Scripts\nvr.exe' "braucht man für vimtex
"scheint nicht zu gehen
" Use <C-X><C-O> in insert mode to get completions
set omnifunc=webcomplete#complete

"http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
"You can then manually trigger preview via the command :InstantMarkdownPreview
"mit dem manuellen befehl geht zwar browserfenster auf, aber markdown nicht
"vollständig. zudem friert das consolenfenster ein und man mus es schließen
let g:instant_markdown_autostart = 0


"ist eine einstellunge für deoplete

:let maplocalleader = ","
" Rebind <Leader> key
:let mapleader = ","

"-------------------------------------------------------------
		"Key Mappings SECTION
"-------------------------------------------------------------


"same window navigation for terminal, normal and insert mode 
:tnoremap <A-h> <C-\><C-N><C-w>h
    :tnoremap <A-j> <C-\><C-N><C-w>j
    :tnoremap <A-k> <C-\><C-N><C-w>k
    :tnoremap <A-l> <C-\><C-N><C-w>l
    :inoremap <A-h> <C-\><C-N><C-w>h
    :inoremap <A-j> <C-\><C-N><C-w>j
    :inoremap <A-k> <C-\><C-N><C-w>k
    :inoremap <A-l> <C-\><C-N><C-w>l
    :nnoremap <A-h> <C-w>h
    :nnoremap <A-j> <C-w>j
    :nnoremap <A-k> <C-w>k
    :nnoremap <A-l> <C-w>l

map <C-o> :NERDTreeToggle<CR>

map ,f :Files<CR>


 let g:tex_flavor  = 'latex'
  let g:tex_conceal = ''
  let g:vimtex_fold_manual = 1
  let g:vimtex_latexmk_continuous = 1
  let g:vimtex_compiler_progname = 'nvr'
  " use SumatraPDF if you are on Windows
  " let g:vimtex_view_method = 'skim'
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options
\ = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
