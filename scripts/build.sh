#!/bin/bash

#set -ex

source "$(dirname "$0")/colors.sh"

base_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

src_dir="$base_dir/src"
dist_dir="$base_dir/dist"

src_files=$(find $src_dir -type f)

for src_path in $src_files; do
	dist_path=${src_path/"$src_dir"/"$dist_dir"}
	blueb "$src_path -> $dist_path"
done

blueb "writing dotfiles to $dist_dir"
