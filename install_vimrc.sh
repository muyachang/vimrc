#!/bin/sh
set -e

cd ~/.vim_runtime

echo \
'

source ~/.vim_runtime/.vimrc

' > ~/.vimrc

echo "Installed the Vim configuration successfully!"
