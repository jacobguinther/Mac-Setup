# Mac-Setup

Good Examples: 

[Mac Setup Script: Brew and Defaults](https://gist.github.com/bradp/bea76b16d3325f5c47d4)

[Dot Files and Excludes](https://github.com/ajmalsiddiqui/dotfiles)

[Method for Detecting OS](https://github.com/dylanaraps/neofetch/issues/433)


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
## Vim Setup
#### Plugin Manager
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

[Vim Plug](https://github.com/junegunn/vim-plug)

[Vim Plug - wiki](https://github.com/junegunn/vim-plug/wiki/tutorial)

#### Find Plugins

[Vim Awesome](https://vimawesome.com/plugin/bash-support-vim)

#### MacOS User Preferences
[Change MacOS User Preferences - CLI](https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/)

#### Set Up Iterm2
preferences > General > Preferences

Check: Load preferences from a custom folder or URL

Check: Save changes to folder when iTerm2 quits

#### Run on Start Up: Spectacle

System Preferences > Users & Groups > *USER* > Login Items > *ADD APPLICATION*
