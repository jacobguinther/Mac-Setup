#!/bin/bash

PROMPT='[vim]'

# SET UP VIM
echo "\n$PROMPT Installing Plugins..."
vim -c '~/.vimrc' -c 'PlugInstall' -c 'qa!' 
echo "$PROMPT Done"
