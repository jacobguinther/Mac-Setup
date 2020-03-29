# Mac-Setup

### This Script Will Setup The Following:
- Symlink Dot Files
- Install xcode
- Install Brew Formulae and Casks
- Install nodemon
- Setup Some Mac Defaults
- Setup Directories for each GitHub account specified
- Install Vim Plugins

```sh
git clone https://github.com/jacobguinther/Mac-Setup.git
cd Mac-Setup/
/bin/bash bootstrap.exclude.sh
```
  
#### Verify Installation

```sh
echo "\nBREW" &&
brew list &&
echo "===============" &&
echo "\nBREW CASK" &&
brew cask list &&
echo "\nNPM" &&
npm list -g --depth 0
```

### Additional Setup After Running Install Scripts

#### Set Up Iterm2
preferences > General > Preferences

Check: Load preferences from a custom folder or URL

Check: Save changes to folder when iTerm2 quits

#### Start Spectacle on System Startup

System Preferences > Users & Groups > USER > Login Items > ADD APPLICATION


### Resources I used for this setup

[Mac Setup Script: Brew and Mac Defaults](https://gist.github.com/bradp/bea76b16d3325f5c47d4)

[Dot Files and Excludes](https://github.com/ajmalsiddiqui/dotfiles)

[Method for Detecting OS](https://github.com/dylanaraps/neofetch/issues/433)

##### MacOS User Preferences
[Change MacOS User Preferences - CLI](https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/)

##### Plugin Manager

[Vim Plug](https://github.com/junegunn/vim-plug)


[Vim Plug - wiki](https://github.com/junegunn/vim-plug/wiki/tutorial)

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

##### Find Vim Plugins
[Vim Awesome](https://vimawesome.com/plugin/bash-support-vim)
