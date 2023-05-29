### Installing Gnome Shell Extensions

1. Download the extensions zip file from the website
2. Now extract the folder and copy the extracted folder to the ~/.local/share/gnome-shell/extensions directory.
3. Now move inside the extension folder that you have copied and opened the metadata.json file. Locate uuid (unique identifier) entry in the metadata.json file and note down its value. Now rename the extension folder to this uuid value.
4. Hit Alt+F2 keyboard shortcut and then type r and hit Enter to Restart the Gnome Shell

### Modify Gnome Settings

Hide mounted disks from showing on the screen
```bash
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
```

### Utilities

```bash
ps -p$$ -ocmd= # To Check current shell
```
