sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

export OMZ="$HOME/.oh-my-zsh"

# ZSH plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git $OMZ/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $OMZ/plugins/zsh-syntax-highlighting

gedit ~/.zshrc # Add these plugin names to the plugins option (around line 73)
# Example

plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

omz update # to update OH-My-ZSH

chsh -s $(which zsh) # to set zsh as the default shell { after this step, logout and login back to take effect }

# uninstall oh_my_zsh # To uninstall Oh-My-ZSH
