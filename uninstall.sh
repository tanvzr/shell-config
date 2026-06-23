#!/usr/bin/env bash

set -e

echo "Uninstalling shell configuration..."

CONFIG="$HOME/.config"

# Remove Bash files
rm -f "$HOME/.bashrc"
rm -f "$HOME/.bash_profile"
rm -f "$HOME/.aliases"
rm -f "$HOME/.bash_functions"


# Remove Starship config
rm -rf "$CONFIG/starship"


# Remove Fastfetch config
rm -rf "$CONFIG/fastfetch"


echo "Done."
echo "Shell configuration removed."

echo
echo "If needed, restore your backup from:"
echo "~/.config/shell-config-backup-*"
