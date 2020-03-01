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
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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

# brew formulae
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

echo "installing formulae"
brew install ${FORMULAE[@]}

echo "Cleaning up brew"
brew cleanup

echo "Installing homebrew cask"
brew cask

# brew casks
CASKS=(
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

# INSTALL CASKS
echo "installing apps with Cask..."

# OPTION 1 (for all users)
# Install apps to /Applications
# Default is: /Users/$user/Applications
#brew cask install --appdir="/Applications" ${apps[@]}

# OPTION 2 (for current user)
brew cask install ${CASKS[@]}

brew cask cleanup
brew cleanup

echo "Setting some Mac settings..."
# @TODO Finder Window
