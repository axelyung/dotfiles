#!/bin/bash

# .tool-versions hash: {{ include ".tool-versions" | sha256sum }}

if ! which asdf; then
	echo "asdf not installed, skipping setup..."
	exit 0
fi

if [ ! -f ~/.tool-versions ]; then
	echo "~/.tool-versions file does not exist, skipping setup..."
	exit 0
fi

echo "Running asdf setup..."

plugins=$(cat ~/.tool-versions | awk '{print $1}')
for plugin in $plugins; do
	asdf plugin add $plugin
done

asdf install
asdf reshim
