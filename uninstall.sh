#!/usr/bin/env bash

set -e

echo "Uninstalling shell configuration..."

BACKUP="$HOME/.shell-config-backup-$(date +%F-%H%M)"
mkdir -p "$BACKUP"

for file in .bashrc .aliases .bash_functions .bash_profile; do
    if [ -f "$HOME/$file" ]; then
        cp "$HOME/$file" "$BACKUP/"
        rm "$HOME/$file"
    fi
done

rm -rf "$HOME/.config/starship"
rm -rf "$HOME/.config/fastfetch"

echo "Backup saved at:"
echo "$BACKUP"

echo "Done. Restart your terminal."
