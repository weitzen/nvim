# nvim_config

meine config für NeoVim

# Setup für Neuinstallatoin

Nach der eigentlichen Installation von Neovim:

1. vim-plug Pluginmanager installieren siehe -> https://github.com/junegunn/vim-plug#example
    -> Installation
    Download plug.vim and put it in the "autoload" directory.

2. Plugins installieren mit :PlugInstall commando
3. 

# Setup für Linux / MacOS

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
damit vim plug installieren 




Linux: Symlink kreiiren, der auf Repo-nvim config zeigt
anschließend Pfade anpassen

symbolic link erstellen auf init vim in repo

$ ln -s ~/.vimrc ~/.config/nvim/init.vim

python pfad anpassen
let g:python3_host_prog = 'c:\Users\weitz\nvim_plugins_env\Scripts\python'
auf 
ls /usr/bin | grep python
let g:python3_host_prog='/usr/bin/python3'

plug egin zeile in inti.vim ändern
call plug#begin('~/.config/nvim/plugged')


backup pfade und sonstige pfade anpassen

markieren mit visual mode 
c für cahnge
dann ~eintippen 
mit . wiederholen für folgende zeilen 

Backupfiles-Pfade slashes austauschen
1.) markieren, r, ~      => mit dot command für anderen Zeilen wiederholen

2.) :s/\\/\//g

