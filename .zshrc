# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jgguinther/.oh-my-zsh"

ZSH_THEME="common-jg"
DEFAULT_USER=`whoami`

DISABLE_UPDATE_PROMPT="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# PLUGINS
plugins=(git)

source $ZSH/oh-my-zsh.sh

# USER CONFIGURATION
# export MANPATH="/usr/local/man:$MANPATH"

# ALIASES 
alias k="kubectl"

PATH="/usr/bin/python:usr/local/bin/python3:$PATH"
PATH="/Users/jgguinther/Documents/ShellScripts:${PATH}"
export PATH
