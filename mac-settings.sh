echo "Setting some Mac settings..."

# Finder
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file:///Users/jgguinther/Downloads/"

killall Finder


echo "Done!"
