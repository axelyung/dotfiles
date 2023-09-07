#!/bin/bash

echo "Running nvim setup..."

set -eux

# nvim hash: {{ include ".config/nvim/*" | sha256sum }}
nvim +PlugUpgrade +PlugInstall +CocUpdate +CocInstall +qall
