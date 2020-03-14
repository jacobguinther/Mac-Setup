echo "Setting some Mac settings..."

# Finder
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file:///Users/jgguinther/Downloads/"

# Menu Bar
# Hide Keyboard Input Source ( American Flag )
defaults write com.apple.TextInputMenu visible -int 0
# Show Date
defaults write com.apple.menuextra.clock DateFormat -string "EEE MMM d  h:mm a"
# Show Bluetooth
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.bluetooth" -int 1
defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu" "/System/Library/CoreServices/Menu Extras/Displays.menu" "/System/Library/CoreServices/Menu Extras/Bluetooth.menu"

# Dock Settings
# Size
defaults write com.apple.dock tilesize -int 43
# Position Dock Left
defaults write com.apple.dock orientation -string "left"

# ScreenCapture
mkdir ~/Downloads/ScreenCapture
defaults write com.apple.screencapture location -string "~/Downloads/ScreenCapture"

killall SystemUIServer
killall Finder
killall Dock

echo "Done!"
