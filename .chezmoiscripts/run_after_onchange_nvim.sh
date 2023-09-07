#!/bin/bash

echo "Running nvim setup..."

# nvim hash: {{ include ".config/nvim/*" | sha256sum }}
nvim +PlugUpgrade +PlugInstall +CocUpdate +CocInstall +qall
