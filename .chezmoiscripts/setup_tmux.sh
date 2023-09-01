#!/bin/zsh

tmux source-file ~/.config/tmux/tmux.conf
~/.config/tmux/plugins/tpm/bin/install_plugins
~/.config/tmux/plugins/tpm/bin/update_plugins all
