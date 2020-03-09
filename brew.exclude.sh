#! /usr/local/bin/bash

PROMPT='[bootstrap]'

# Install homebrew if it is not installed
which brew 1>&/dev/null
if [ ! "$?" -eq 0 ] ; then
	echo "$PROMPT Homebrew not installed. Attempting to install Homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	if [ ! "$?" -eq 0 ] ; then
		echo "$PROMPT Something went wrong. Exiting..." && exit 1
	fi
fi

FORMULAE=(
  awscli
  bash
  eslint
  git
  git flow
  kubernetes-cli
  minikube
  nvm
  redis
  trash
  tree
  wget
  yarn
)

CASKS_DEV=(
  bitwarden
	boostnote
  brave-browser
  docker
	iterm2
  mysqlworkbench
  nordvpn
  postman
  robo-3t
  slack
  spectacle
  virtualbox
  visual-studio-code
)

CASKS_OTHER=(
  calibre
  deluge
  dropbox
  gimp
  nordvpn
  plex
  vlc
)


PRINT_COLUMNS () {
	printf "\n"
	arr=("$@") 
	for value in "${arr[@]}"
	do
		printf "%-8s\n" "$value"
	done | column
	printf "\n"
}

printf "$PROMPT INSTALLING THE FOLLOWING...\n\n"
printf "$PROMPT BREW FORMULAE:"
PRINT_COLUMNS "${FORMULAE[@]}"
printf "$PROMPT BREW CASKS:"
PRINT_COLUMNS "${CASKS_DEV[@]}"
printf "$PROMPT OPTIONAL CASKS:"
PRINT_COLUMNS "${CASKS_OTHER[@]}"
read -p "$PROMPT Would you like to install optional casks?: [Y/N]" CHOICE_OPTIONAL_CASKS

echo "Installing xcode-stuff"
xcode-select --install

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "$PROMPT Installing homebrew..."
  /usr/bin/ruby \
  -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" \
  </dev/null
fi

# Update homebrew recipes
echo "$PROMPT Updating homebrew..."
brew update && brew upgrade

echo "$PROMPT Installing Formulae"
brew install ${FORMULAE[@]}

# setting up nvm
mkdir ~/.nvm
touch ~/.nvmrc
# need to manually download the latest version

echo "$PROMPT Cleaning Up Brew"
brew cleanup

echo "$PROMPT Installing Homebrew Casks"
brew cask

# INSTALL CASKS
echo "$PROMPT Installing Apps With Cask..."

# OPTION 1 (for all users)
# Install apps to /Applications
# Default is: /Users/$user/Applications
#brew cask install --appdir="/Applications" ${apps[@]}

# OPTION 2 (for current user)
brew cask install ${CASKS_DEV[@]}

if [[ $CHOICE_OPTIONAL_CASKS == "y" || \
 	$CHOICE_OPTIONAL_CASKS == "Y" || \
 	$CHOICE_OPTIONAL_CASKS == "yes" || \
 	$CHOICE_OPTIONAL_CASKS == "Yes" ]]; then
        echo "$PROMPT INSTALLING OPTIONAL CASKS"
	brew cask install ${CASKS_OTHER[@]}
else
        echo "$PROMPT SKIPPING OPTIONAL CASKS"
fi

brew cleanup

echo "$PROMPT Use NVM to download a version of node"
