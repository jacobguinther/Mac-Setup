# Mac-Setup
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
ruby \
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
#### MacOS User Preferences
https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/
