#! /usr/local/bin/bash
# HOMEBREW

FORMULAE=(
  awscli
  bash
  eslint
  git
  git flow
  kubernetes-cli
  minikube
  mongodb-community
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

# @TODO Create SSH keys for Github
# ssh-keygen -t rsa
# @TODO Add SSH keys to Github
#echo "Please add this public key to Github \n"
#echo "https://github.com/account/ssh \n"
#read -p "Press [Enter] key after this..."

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

echo "Git config"

git config --global user.name jacobguinther
git config --global user.email jacobgguinther@gmail.com


echo "Installing brew git utilities..."
brew install git-flow

echo "Installing other brew stuff..."
brew install wget
brew install trash

echo "installing formulae"
brew install ${FORMULAE[@]}

echo "Cleaning up brew"
brew cleanup

echo "Installing homebrew cask"
brew cask

# INSTALL CASKS
echo "installing apps with Cask..."

# OPTION 1 (for all users)
# Install apps to /Applications
# Default is: /Users/$user/Applications
#brew cask install --appdir="/Applications" ${apps[@]}

# OPTION 2 (for current user)
brew cask install ${CASKS_DEV[@]}


echo "INSTALLING OPTIONAL CASKS"
if [[ $CHOICE_OPTIONAL_CASKS == "y" || \
	$CHOICE_OPTIONAL_CASKS == "Y" || \
	$CHOICE_OPTIONAL_CASKS == "yes" || \
	$CHOICE_OPTIONAL_CASKS == "Yes" ]]; then
	brew cask install ${CASKS_OTHER[@]}
fi

brew cleanup

echo "Setting some Mac settings..."
# @TODO Finder Window
