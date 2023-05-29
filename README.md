Read the install scripts for specific packages

or

### Automate the entire flow with
```bash
curl -X GET https://raw.githubusercontent.com/m3rashid/pc_setup/main/scripts/init.sh | bash
```

### Gnome Shell Extensions

```bash
# Download the extensions zip file from the website
# Now extract the folder and copy the extracted folder to the ~/.local/share/gnome-shell/extensions directory.
# Now move inside the extension folder that you have copied and opened the metadata.json file. Locate uuid (unique identifier) entry in the metadata.json file and note down its value. Now rename the extension folder to this uuid value.
# Hit Alt+F2 keyboard shortcut and then type r and hit Enter to Restart the Gnome Shell
```

### Gnome Settings

```bash
# Hide mounted disks from showing on the screen
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
```

### Utilities

```bash
ps -p$$ -ocmd= # To Check current shell
```
![](./images/tmux.png)

