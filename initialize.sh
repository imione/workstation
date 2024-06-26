# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/gimsuhyeon/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew help


# install slack
brew install --cask slack

# install iterm2
brew install --cask iterm2

# install 1password
brew install --cask 1password


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

# install Text Editors
# -- sublime text
brew install --cask sublime-text
# -- notion
brew install --cask notion
# -- obsidian
brew install --cask obsidian


# install IDE
# -- VSCode
brew install --cask visual-studio-code
# -- datagrip
brew install --cask datagrip
# -- intelliJ idea (CE)
brew install --cask intellij-idea-ce
# -- Redis insight
brew install --cask redisinsight

# install cron
brew install --cask cron

# install postman
brew install --cask postman

# install aws cli
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg ./AWSCLIV2.pkg -target /
# 설치 경로 확인: which aws
# 버전 확인: aws --version

# install mysql
brew install mysql-client@5.7

# install figma
brew install --cask figma

# install commitizen
brew install commitizen


brew install --cask arc

brew install --cask rectangle

brew install --cask chatgpt
