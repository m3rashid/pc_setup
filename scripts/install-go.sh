# [MANUALLY] download the tarball from the official website golang.org in the Downloads directory
sudo rm -rf /usr/local/go

sudo tar -C /usr/local -xzf Downloads/go1.18.linux-amd64.tar.gz

export PATH=$PATH:/usr/local/go/bin

source $HOME/.profile

# Setting path
echo 'export PATH="$PATH:/usr/local/go/bin"' >> ~/.bashrc
echo 'export PATH="$PATH:/usr/local/go/bin"' >> ~/.zshrc
