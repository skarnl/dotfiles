#########
# SETUP #
#########

# Disable Notification Center and remove the menu bar icon
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

#### DOCK ####
# Wipe all (default) app icons from the Dock
defaults write com.apple.dock persistent-apps -array

# Show only open applications in the Dock
defaults write com.apple.dock static-only -bool true

defaults write com.apple.dock contents-immutable -bool yes;
defaults write com.apple.dock position-immutable -bool yes;

defaults write com.apple.dock autohide-delay -float 0.0;

killall Dock;

#### FINDER ####
# Show hidden files:
defaults write com.apple.finder AppleShowAllFiles TRUE

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

killall Finder;

#### SCREENSHOTS ####
# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/screenshots"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

#########
# INSTALL #
#########

# Xcode (bleurgh)
xcode-select --install

# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo 'PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile

# GIT
brew install git

# NVM
brew install nvm

mkdir ~/.nvm

brew install yarn
brew install fzf
brew install pyenv

pyenv install 3.9.2

# Applications
# brew install --cask google-chrome
brew install --cask brave-browser
brew install --cask slack
brew install --cask alfred
brew install --cask microsoft-teams
brew install --cask discord
brew install --cask iterm2
brew install --cask stretchly
brew install --cask firefox
brew install --cask phpstorm
brew install --cask pycharm-ce
brew install --cask dropbox
brew install --cask spotify
brew install --cask signal
brew install --cask sourcetree
brew install --cask toggl-track
brew install --cask visual-studio-code

# ZSH
brew install zsh

# Prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# link all config files
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# setup prompt theme
ln -fsv $PWD/prezto/prompt_skar_setup "${ZDOTDIR:-$HOME}/.zprezto/modules/prompt/functions/prompt_skar_setup"

# make ZSH the default shell
chsh -s /bin/zsh

# FZF
$(brew --prefix)/opt/fzf/install

# Git
ln -fsv $PWD/git/gitconfig $HOME/.gitconfig
ln -fsv $PWD/git/gitignore-defaults $HOME/.gitignore-defaults
