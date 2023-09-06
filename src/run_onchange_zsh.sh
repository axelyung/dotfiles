#!/bin/zsh

echo "Running zsh setup..."

set -eux

# zsh hash: {{ include ".config/zsh" | sha256sum }}
source ~/.zshenv
