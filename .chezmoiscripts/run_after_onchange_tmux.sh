#!/bin/bash

echo "Running tmux setup..."

# tmux.conf hash: {{ include ".config/tmux/tmux.conf" | sha256sum }}
tmux source-file ~/.config/tmux/tmux.conf
~/.config/tmux/plugins/tpm/bin/install_plugins
~/.config/tmux/plugins/tpm/bin/update_plugins all
