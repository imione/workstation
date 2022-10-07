# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/gimsuhyeon/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew help

# install text editor
brew install --cask sublime-text

# install slack
brew install --cask slack

# install iterm2
brew install --cask iterm2

# install 1password
brew install --cask 1password

# install notion
brew install --cask notion

# install zsh
brew install zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install typewritten theme https://github.com/reobin/typewritten
git clone https://github.com/reobin/typewritten.git $ZSH_CUSTOM/themes/typewritten
ln -s "$ZSH_CUSTOM/themes/typewritten/typewritten.zsh-theme" "$ZSH_CUSTOM/themes/typewritten.zsh-theme"
ln -s "$ZSH_CUSTOM/themes/typewritten/async.zsh" "$ZSH_CUSTOM/themes/async"

# install zsh-syntax-highlighting
brew install zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# install nvm
mkdir ~/.nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
brew install nvm
nvm install v16


# install vscode
brew install --cask visual-studio-code

# install pritunl
brew install --cask pritunl

# install authy
brew install --cask authy

# install datagrip
brew install --cask datagrip

# install cron
brew install --cask cron

# install postman
brew install --cask postman
