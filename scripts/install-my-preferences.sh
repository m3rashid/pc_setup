sudo apt update

# upgrade all the packages
sudo apt upgrade

# remove the un-needed packages
sudo apt autoremove

# install good packages
sudo apt install \
    git \                       # version control
    build-essential \           # GCC, G++ and other build tools
    apt-transport-https \       # HTTPS support
    curl \                      # Network Requests
    pdfarranger \               # PDF re-arranging/combining tool
    mlocate \                   # Better Global search
    obs-studio \                # Record Screen
    redis-server \              # In memory DB
    mysql-server \              # MYSQL DB
    postgresql \                # PostgresQL DB
    postgresql-contrib \        # Postgres lib
    zsh \                       # Better Shell
    vlc \                       # Video Player
    neofetch \                  # Shell Details
    gnome-shell-extensions \    # Shell Extensions Support
    gnome-tweaks \              # Customize Gnome
    tmux                        # Better Terminal and splits

# Also setup the user/database for mysql and postgres
# Setup the redis-server for other than localhost clients
# Setup ZSH with (1) option

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# install go
curl https://dl.google.com/go/go1.21.3.linux-amd64.tar.gz --output ~/Downloads/go1.21.3.linux-amd64.tar.gz
rm -rf /usr/local/go
sudo tar -C /usr/local -xzf ~/Downloads/go1.21.3.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.zshrc
# to check if go is installed
# go version
