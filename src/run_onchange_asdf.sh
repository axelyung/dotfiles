#!/bin/bash

echo "Running asdf setup..."

set -eux

# .tool-versions hash: {{ include ".tool-versions" | sha256sum }}
asdf install
