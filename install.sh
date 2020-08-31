#!/bin/bash
# Copies the relevant configuration file to the default nvim config location
# Usage: ./install.sh
set -e
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

target=$HOME/.config/nvim
echo "Copying config to $target"
cp $DIR/init.vim $target
