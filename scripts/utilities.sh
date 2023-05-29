# Ngrok
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok

# Notion
# Download the unofficial .deb package from github (check if any update available, download the latest build)
https://github.com/valerie-makes/notion-linux/releases/tag/v2.0.6-windows
# Install using Ubuntu Software Install

# Discord
# Download the discord debian package using the following command.
 -wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb

    ## If wget command is not found then proceed after executing the following command
      -sudo apt update
      -sudo apt install wget

# Now execute it using the following command and you are done.
 -sudo apt install ./discord.deb -y
 
