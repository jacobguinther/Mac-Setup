ZSH_THEME="common-jg"
DEFAULT_USER=`whoami`

DISABLE_UPDATE_PROMPT="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# PLUGINS
plugins=(git)
export ZSH="/Users/jacobguinther/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# USER CONFIGURATION
# export MANPATH="/usr/local/man:$MANPATH"

# ALIASES 
alias k="kubectl"
alias bsl="cd /Users/jacobguinther/Development/jacobguinther/Client/BlockScience"


PATH="/usr/bin/python:usr/local/bin/python3:$PATH"
PATH="/Users/jgguinther/Documents/ShellScripts:${PATH}"
PATH="/Users/jacobguinther/Library/Python/3.9/bin:${PATH}"
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


export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
ulimit -n 8096

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jacobguinther/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jacobguinther/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jacobguinther/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jacobguinther/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH=/Users/jacobguinther/.pyenv/versions/3.7.2/bin:$PATH
export PATH=$PATH:$HOME/bin
