# Mac-Setup

Good Examples: 

https://gist.github.com/bradp/bea76b16d3325f5c47d4

https://github.com/ajmalsiddiqui/dotfiles

Detect OS:

https://github.com/dylanaraps/neofetch/issues/433

## Install Homebrew
```sh
xcode-select --install
```
#### Install Homebrew
```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
or ( to bypass prompt )
```sh
/usr/bin/ruby \
  -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" \
  </dev/null
  ```
#### Uninstall Homebrew (for testing)
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"

#### Brew
  - yarn
  - nvm
  - tree
  - git
  - git flow
  - zsh
  - kubernetes-cli
  - minikube
  - mongodb-community
  - redis
  - eslint
  - bash
  - awscli

#### Brew Cask
  - visual-studio-code
  - bitwarden
  - brave-browser
  - docker
  - virtualbox
  - mysqlworkbench
  - robo-3t
  - spectacle
  - slack
  - postman
  - nordvpn

#### npm
  - nodemon
  
  #### Verify Installation
```sh
echo "===============" &&
echo "\nBREW" &&
brew list &&
echo "\nBREW CASK" &&
brew cask list &&
echo "\nNPM" &&
npm list -g --depth 0
```
## Vim Option #1
#### Vim Config
https://github.com/faktiva/vim-config
## Vim Option #2
#### Plugin Manager
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
https://github.com/junegunn/vim-plug
https://github.com/junegunn/vim-plug/wiki/tutorial
#### Find Plugins
https://vimawesome.com/plugin/bash-support-vim
https://github.com/junegunn/vim-plug/wiki/tutorial
#### MacOS User Preferences
https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/
#### DotFiles
Simple example repo for hadling dot files.

sync() function lives in bootstrap.exclude.sh

https://github.com/ajmalsiddiqui/dotfiles
