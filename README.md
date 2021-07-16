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

Linux: Symlink kreiiren, der auf Repo-nvim config zeigt
anschließend Pfade anpassen


$ ln -s ~/.vimrc ~/.config/nvim/init.vim

Backupfiles-Pfade slashes austauschen
1.) markieren, r, ~      => mit dot command für anderen Zeilen wiederholen

2.) :s/\\/\//g

