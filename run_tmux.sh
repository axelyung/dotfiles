#!/bin/bash

# tmux.conf hash: {{ include ".config/tmux/tmux.conf" | sha256sum }}
tmux source-file ~/.config/tmux/tmux.conf
