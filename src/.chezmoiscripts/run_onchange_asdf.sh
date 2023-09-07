#!/bin/bash

echo "Running asdf setup..."

set -eu

# .tool-versions hash: {{ include ".tool-versions" | sha256sum }}
asdf install
