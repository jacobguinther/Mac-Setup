# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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

  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
# This loads nvm bash_completion

# Colors Man Pages
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;32m") \
		LESS_TERMCAP_md=$(printf "\e[1;32m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;4;31m") \
		man "$@"
}

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/jacobguinther/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
