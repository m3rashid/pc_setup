sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

export ZSH_CUSTOM="$HOME"

# ZSH plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/omz-plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/omz-plugins/zsh-syntax-highlighting

gedit ~/.zshrc # Add these plugin names to the plugins option (around line 73)
# Example

plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

omz update # to update OH-My-ZSH

chsh -s $(which zsh) # to set zsh as the default shell { after this step, logout and login back to take effect }

# uninstall oh_my_zsh # To uninstall Oh-My-ZSH
