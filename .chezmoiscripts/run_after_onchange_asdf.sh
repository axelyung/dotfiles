#!/bin/bash

echo "Running asdf setup..."

# .tool-versions hash: {{ include ".tool-versions" | sha256sum }}
[ -f ~/.tool-versions ] && asdf install
