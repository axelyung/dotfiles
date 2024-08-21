#!/bin/bash

echo "Running nvim setup..."

# nvim hash: {{ include ".config/nvim/*" | sha256sum }}
nvim +Copilot +qall
