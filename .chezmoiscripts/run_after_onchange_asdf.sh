#!/bin/bash

if ! which asdf; then
	echo "asdf not installed, skipping setup..."
	exit 0
fi

# .tool-versions hash: {{ include ".tool-versions" | sha256sum }}
if [ -f ~/.tool-versions ]; then
	echo "Running asdf setup..."
	asdf install
	asdf reshim
else
	echo "~/.tool-versions file does not exist, skipping setup..."
fi

