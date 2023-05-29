echo "MD Rashid Hussain";

echo "Cleanint up tasks";
curl -X GET https://raw.githubusercontent.com/m3rashid/pc_setup/main/scripts/cleanups.sh
echo "Cleanup Done";

echo "Installing prefernces";
curl -X GET https://raw.githubusercontent.com/m3rashid/pc_setup/main/scripts/install-my-preferences.sh
echo "Prefernces installed";

echo "Seting up TMUX config";
curl -i -X GET https://raw.githubusercontent.com/m3rashid/pc_setup/main/dotfiles/.tmux.conf | cat > ~/.tmux.conf
echo "Tmux Config setup Done";
