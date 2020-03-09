echo "Setting some Mac settings..."

# Finder
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file:///Users/jgguinther/Downloads/"

# Menu Bar
defaults write com.apple.menuextra.clock DateFormat -string "EEE MMM d  h:mm a"

# Dock Settings
defaults write com.apple.dock tilesize -int 43
defaults write com.apple.dock orientation -string "left"

killall SystemUIServer
killall Finder
killall Dock

echo "Done!"
