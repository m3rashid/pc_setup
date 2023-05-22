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
    gnome-tweaks

# Also setup the user/database for mysql and postgres
# Setup the redis-server for other than localhost clients
# Setup ZSH with (1) option

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
