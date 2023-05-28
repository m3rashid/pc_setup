sudo apt update

# upgrade all the packages
sudo apt upgrade

# remove the un-needed packages
sudo apt autoremove

# install good packages
sudo apt install \
    git \
    build-essential \
    apt-transport-https \
    curl \
    pdfarranger \
    mlocate \
    obs-studio \
    redis-server \
    npm \
    mysql-server \
    postgresql \
    postgresql-contrib \
    zsh \
    vlc \
    neofetch \
    gnome-shell-extensions \
    gnome-tweaks \
    tmux

# Also setup the user/database for mysql and postgres
# Setup the redis-server for other than localhost clients
# Setup ZSH with (1) option

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# install go
curl https://dl.google.com/go/go1.20.4.linux-amd64.tar.gz --output ~/Downloads/go1.20.4.linux-amd64.tar.gz
rm -rf /usr/local/go
sudo tar -C /usr/local -xzf ~/Downloads/go1.20.4.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.zshrc
# to check if go is installed
# go version
