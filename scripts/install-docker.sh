# Confirm KVM virtualization is enabled
lsmod | grep kvm

# For Intel Processors
sudo modprobe kvm_intel

# For AMD Processors
sudo modprobe kvm_amd

# Add Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-archive-keyring.gpg

# Install Docker
sudo apt update
sudo apt install software-properties-common curl apt-transport-https ca-certificates -y
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt install docker-ce docker-ce-cli containerd.io uidmap -y

sudo usermod -aG docker $USER
newgrp docker

sudo systemctl status docker
docker version

# Configure docker to install images to external drive (other than main drive) to reduce space usage
sudo service docker stop
# Using your preferred text editor add a file named daemon.json under the directory /etc/docker. The file should have this content:
# {
#  "data-root": "/path/to/your/docker"
# }

#  Copy the current data directory to the new one
sudo rsync -aP /var/lib/docker/ /path/to/your/docker

# rename the old docker directory
# This is just a sanity check to see that everything is ok and docker daemon will effectively use the new location for its data.
sudo mv /var/lib/docker /var/lib/docker.old

# Restart the docker daemon
sudo service docker start

# Test it by pulling and running a container, then delete the old docker directory
sudo rm -rf /var/lib/docker.old

sudo apt install gnome-terminal
sudo apt remove docker-desktop

rm -r $HOME/.docker/desktop
sudo rm /usr/local/bin/com.docker.cli
sudo apt purge docker-desktop
# Download docker desktop deb file and install it like any other deb file
# sudo apt install ./docker-desktop-.....
# Go to settings > Resources > Disk Image Location > /path/to/your/docker (set a path to the new docker data directory)
# Save and Restart docker desktop
