#!/bin/bash


echo "Running tmux setup..."

set -eux

# tmux.conf hash: {{ include ".config/tmux/tmux.conf" | sha256sum }}
tmux source-file ~/.config/tmux/tmux.conf
