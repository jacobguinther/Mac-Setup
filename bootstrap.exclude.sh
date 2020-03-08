#!/bin/bash

PROMPT='[bootstrap]'

# Initialize a few things
# init () {
# 	echo "$PROMPT Making a Projects folder in $PATH_TO_PROJECTS if it doesn't already exist"
# 	mkdir -p "$PATH_TO_PROJECTS"
# 	echo "$PROMPT Making a Playground folder in $PATH_TO_PLAYGROUND if it doesn't already exist"
# 	mkdir -p "$PATH_TO_PLAYGROUND"
# }

# TODO : Delete symlinks to deleted files
# Is this where rsync shines?
# TODO - add support for -f and --force
link () {
	echo "$PROMPT This utility will symlink the files in this repo to the home directory"
	read -p "$PROMPT Proceed? (Y/n) " resp
	# TODO - regex here?
	if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
		echo "$PROMPT Creating Symbolic Links..."
		for file in $( ls -A | grep -vE '\.exclude*|\.git$|\.gitignore|.*.md' ) ; do
			ln -sv "$PWD/$file" "$HOME"
		done
		# TODO: source files here?
		echo "$PROMPT Symlinking complete"
	else
		echo "$PROMPT Symlinking cancelled by user"
		return 1
	fi
}

install_brew_stuff () {
	if [ $( echo "$OSTYPE" | grep 'darwin' ) ] ; then
		echo "$PROMPT Detected macOS"
		echo "$PROMPT This utility will install useful utilities using Homebrew"
		read -p "$PROMPT Proceed? (Y/n) " resp
		if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
			echo "$PROMPT Installing useful stuff using brew. This may take a while..."
			sh brew.exclude.sh
			sh mac_settings.exclude.sh
		else
			echo "$PROMPT Brew installation cancelled by user"
		fi
	else
		echo "$PROMPT Skipping installations using Homebrew because MacOS was not detected..."
	fi
# 	if [ $( echo "$OSTYPE" | grep 'linux-gnu' ) ] ; then
# 		echo "$PROMPT Detected Linux"
# 		echo "$PROMPT This utility will install useful utilities using apt (this has been tested on Debian buster)"
# 		echo "$PROMPT Proceed? (y/n)"
# 		read resp
# 		if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
# 			echo "$PROMPT Installing useful stuff using apt. This may take a while..."
# 			sh apt.exclude.sh
# 		else
# 			echo "$PROMPT Apt installation cancelled by user"
# 		fi
# 	else
# 		echo "$PROMPT Skipping installations using apt because Debian/Linux was not detected..."
#  	fi
 }
configure_github () {
  sh github.exclude.sh
}
vim_plugin_install () {
  sh vim.exclude.sh
}

# init
link
install_brew_stuff
configure_github
vim_plugin_install
