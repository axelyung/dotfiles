#!/bin/zsh

source ~/.zshenv

nvim +PlugUpgrade +PlugInstall +CocUpdate +CocInstall +qall
