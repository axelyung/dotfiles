#!/bin/bash

echo "Running nvim setup..."

set -eux

# nvim hash: {{ include ".config/nvim/plugins.vim" | sha256sum }}
nvim +PlugUpgrade +PlugInstall +CocUpdate +CocInstall +qall
