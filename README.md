### Tools

```bash
sudo apt update && sudo apt upgrade
sudo apt install
    git
    build-essential
    apt-transport-https
    curl
    pdfarranger
    mlocate
    obs-studio
    redis-server
    nodejs
    npm
    mysql-server
    postgresql
    postgresql-contrib
    zsh
    vlc
    neofetch
    gnome-shell-extensions
    gnome-tweaks

sudo npm i -g yarn

# Also setup the user/database for mysql and postgres
# Setup the redis-server for other than localhost clients
# Setup ZSH with (1) option
```

### Remove not-needed packages

```bash
sudo apt remove
    gnome-mines
    gnome-mahjongg
    gnome-todo
    gnome-todo-common
    gnome-sudoku
    aisleriot
```

### Install Brave Browser

```bash
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
```

### Brave Web Extensions

```bash
https://chrome.google.com/webstore/
- grepper
- react-developer-tools
- redux-devtools
- gitpod-always-ready-to-co
- pesticide-for-chrome-with
```

### Install MongoDB

```bash
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
systemctl status mongod
```

### Install Jetbrains Datagrip, CLion, GoLand, Webstorm

```bash
# [MANUALLY] download the tarball in the Downloads folder
sudo tar xzf Downloads/datagrip-2021.3.4.tar.gz -C /opt/
cd /opt/DataGrip-2021.3.4/bin
./datagrip.sh
# [MANUALLY] Create a desktop entry for Datagrip
# Same process with CLion, Goland and Webstorm
```

### NVM

```bash
# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Install subsequent nodejs versions
nvm install v14
nvm install v16
```

### Install OH-MY-ZSH

```bash
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# ZSH plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

gedit ~/.zshrc # Add these plugin names to the plugins option (around line 73)
# Example
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

omz update # to update OH-My-ZSH
uninstall oh_my_zsh # To uninstall Oh-My-ZSH
```

### Install Go

```bash
# [MANUALLY] download the tarball from the official website golang.org in the Downloads directory
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf Downloads/go1.18.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
source $HOME/.profile
# Setting path
echo 'export PATH="$PATH:/usr/local/go/bin"' >> ~/.bashrc
echo 'export PATH="$PATH:/usr/local/go/bin"' >> ~/.zshrc
```

### Install Postman

```bash
wget https://dl.pstmn.io/download/latest/linux64
sudo tar -xvf Downloads/postman-9.15.2-linux-x64.tar.gz -C /usr/bin
echo 'export PATH="$PATH:/usr/bin/Postman"' >> ~/.bashrc
echo 'export PATH="$PATH:/usr/bin/Postman"' >> ~/.zshrc
# To run type --> Postman

# Create a desktop entry
sudo nano /usr/share/applications/Postman.desktop

[Desktop Entry]
Name=Postman API Tool
GenericName=Postman
Comment=Testing API
Exec=/usr/bin/Postman/Postman
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=/usr/bin/Postman/app/resources/app/assets/icon.png
StartupWMClass=Postman
StartupNotify=true
```

### Install Notion Desktop

```bash
# Download the unofficial .deb package from github (check if any update available, download the latest build)
https://github.com/valerie-makes/notion-linux/releases/tag/v2.0.6-windows
# Install using Ubuntu Software Install
```

### Install Discord

```bash
# Download the .deb package from the website
    https://discord.com/
# Install using Ubuntu Software Install
```

### Install VS Code

```bash
# Download the .deb package from the website
    https://code.visualstudio.com/
# Install using Ubuntu Software Install
```

### VS Code extensions

```bash
# Simply log in with github account and settings sync
# If that doesn't work
- Bracket Pair Colorizer
- Apollo Graphql
- C/C++
- Code Runner
- Draw.io Integration
- ES7+ React/Redux React-Native Snippets
- ESLint
- Excel Viewer
- Git Graph
- Github Copilot
- GitLens - Git Supercharged
- Go
- GraphQL
- Live Sass Compiler
- Live Server
- Live Share
- Markdown All in One
- Material Icon Theme
- MongoDB for VS Code
- One Dark Pro
- Prettier Code Formatter
- Prisma
- Pylance
- Python
- React Native Tools
- SQL Tools
- Tailwind CSS Intellisense
- Thunder Client
- Todo Tree
- vscode-pdf
```

### Gnome Shell Extensions

```bash
# Download the extensions zip file from the website
# Now extract the folder and copy the extracted folder to the ~/.local/share/gnome-shell/extensions directory.
# Now move inside the extension folder that you have copied and opened the metadata.json file. Locate uuid (unique identifier) entry in the metadata.json file and note down its value. Now rename the extension folder to this uuid value.
# Hit Alt+F2 keyboard shortcut and then type r and hit Enter to Restart the Gnome Shell

# List of Extensions
- Hide Top Bar:  https://extensions.gnome.org/extension/545/hide-top-bar/
```

### Gnome Settings

```bash
# Hide mounted disks from showing on the screen
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false

Settings
    Appearance
        - Window Colors (Dark)
        - Auto-hide the Dock (ON)
        - Icon SIze (30)
        - Position on Screen (Bottom)

    Default Applications
        - Web (Bravea Web Browser)
        - Video (VLC Media Player)

Gnome-tweaks
    Appearance
        - Shell:         Yaru Dark      # Enable Full Dark Mode
    Extensions (ON)
        - Applications Menu
        - Hide Top Bar
        - Places Status Indicator
        - User Themes
    Themes
        - Applications:  Adwaita-dark
        - Cursor:        DMZ-Black
        - Icons:         Yaru
```

### Utilities

```bash
ps -p$$ -ocmd= # To Check current shell
```

### Keyboard Shortcuts

![Screenshot Shortcuts](images/screenshot.png)
