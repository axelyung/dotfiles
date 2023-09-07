#!/bin/zsh

echo "Running zsh setup..."

# zsh hash: {{ include ".zshenv,.config/zsh/*" | sha256sum }}
[ -f ~/.zshenv ] && source ~/.zshenv

