# nvim_config
meine config für NeoVim

Linux: Symlink kreiiren, der auf Repo-nvim config zeigt
anschließend Pfade anpassen


$ ln -s ~/.vimrc ~/.config/nvim/init.vim

Backupfiles-Pfade slashes austauschen
1.) markieren, r, ~      => mit dot command für anderen Zeilen wiederholen

2.) :s/\\/\//g

