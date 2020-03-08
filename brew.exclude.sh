#! /usr/local/bin/bash
# HOMEBREW

# Install homebrew if it is not installed
which brew 1>&/dev/null
if [ ! "$?" -eq 0 ] ; then
	echo "Homebrew not installed. Attempting to install Homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	if [ ! "$?" -eq 0 ] ; then
		echo "Something went wrong. Exiting..." && exit 1
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
  zsh
)

CASKS_DEV=(
  bitwarden
  brave-browser
  docker
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

printf "\nINSTALLING THE FOLLOWING...\n\n"
printf "BREW FORMULAE:"
PRINT_COLUMNS "${FORMULAE[@]}"
printf "BREW CASKS:"
PRINT_COLUMNS "${CASKS_DEV[@]}"
printf "OPTIONAL CASKS:"
PRINT_COLUMNS "${CASKS_OTHER[@]}"
read -p "Would you like to install optional casks?: [Y/N]" CHOICE_OPTIONAL_CASKS

echo "Installing xcode-stuff"
xcode-select --install

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /usr/bin/ruby \
  -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" \
  </dev/null
fi

# Update homebrew recipes
echo "Updating homebrew..."
brew update && brew upgrade

echo "Installing Git..."
brew install git

echo "Installing brew git utilities..."
brew install git-flow

echo "Installing other brew stuff..."
brew install wget
brew install trash

echo "Installing Formulae"
brew install ${FORMULAE[@]}

# setting up nvm
mkdir ~/.nvm
touch ~/.nvmrc
# need to manually download the latest version

echo "Cleaning Up Brew"
brew cleanup

echo "Installing Homebrew Casks"
brew cask

# INSTALL CASKS
echo "Installing Apps With Cask..."

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
        echo "INSTALLING OPTIONAL CASKS"
	brew cask install ${CASKS_OTHER[@]}
else
        echo "SKIPPING OPTIONAL CASKS"
fi

brew cleanup

echo "Use NVM to download a version of node"
