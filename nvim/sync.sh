#!/usr/bin/env bash

CONFIG=$HOME/.config/nvim

mkdir -p $CONFIG/undo $CONFIG/spell $CONFIG/autoload

if [ ! -f $CONFIG/autoload/plug.vim ]; then
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

nvim +"PlugSnapshot! $CONFIG/snapshot.vim" +PlugUpgrade +PlugClean! +PlugUpdate +qa
nvim +UpdateRemotePlugins +qa
