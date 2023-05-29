echo "MD Rashid Hussain";

echo "Cleanint up tasks";
curl -X GET https://raw.githubusercontent.com/m3rashid/pc_setup/main/scripts/cleanups.sh | bash
echo "Done";

echo "Installing prefernces";
curl -X GET https://raw.githubusercontent.com/m3rashid/pc_setup/main/scripts/install-my-preferences.sh | bash
echo "Done";

echo "Seting up TMUX config";
curl -i -X GET https://raw.githubusercontent.com/m3rashid/pc_setup/main/dotfiles/.tmux.conf | cat > ~/.tmux.conf
echo "Done";

echo "Setting up ZSH Config";
# TODO
echo "Done";

echo "Seting up Github Cli Login";
mkdir -p ~/code/configs/.gitLogin
curl -X GET https://raw.githubusercontent.com/m3rashid/pc_setup/main/scripts/gh.sh | cat > ~/code/configs/.gitLogin/setup.sh
echo "source ~/code/myStuff/.gitLogin/github_login.sh" >> ~/.bashrc
echo "source ~/code/myStuff/.gitLogin/github_login.sh" >> ~/.zshrc
echo "Done";
