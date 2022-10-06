wget https://dl.pstmn.io/download/latest/linux64
sudo tar -xvf Downloads/postman-9.15.2-linux-x64.tar.gz -C /usr/bin
echo 'export PATH="$PATH:/usr/bin/Postman"' >> ~/.bashrc
echo 'export PATH="$PATH:/usr/bin/Postman"' >> ~/.zshrc
# To run type --> Postman

# Create a desktop entry
sudo nano /usr/share/applications/Postman.desktop

# [Desktop Entry]
# Name=Postman API Tool
# GenericName=Postman
# Comment=Testing API
# Exec=/usr/bin/Postman/Postman
# Terminal=false
# X-MultipleArgs=false
# Type=Application
# Icon=/usr/bin/Postman/app/resources/app/assets/icon.png
# StartupWMClass=Postman
# StartupNotify=true
