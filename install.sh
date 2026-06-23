#!/usr/bin/env bash

set -e

echo "Installing shell configuration..."

CONFIG="$HOME/.config"
BACKUP="$HOME/.config/shell-config-backup-$(date +%Y%m%d_%H%M%S)"

mkdir -p "$CONFIG/fastfetch"

# Backup existing files
mkdir -p "$BACKUP"

for file in .bashrc .bash_profile .aliases .bash_functions; do
    if [ -f "$HOME/$file" ]; then
        cp "$HOME/$file" "$BACKUP/"
    fi
done

if [ -d "$HOME/.config/starship" ]; then
    cp -r "$HOME/.config/starship" "$BACKUP/"
fi

if [ -d "$HOME/.config/fastfetch" ]; then
    cp -r "$HOME/.config/fastfetch" "$BACKUP/"
fi


# Bash
cp bash/.bashrc "$HOME/.bashrc"
cp bash/aliases.sh "$HOME/.aliases"
cp bash/functions.sh "$HOME/.bash_functions"
cp bash/.bash_profile "$HOME/.bash_profile"


# Starship
mkdir -p "$HOME/.config/starship"
cp starship/starship.toml "$HOME/.config/starship/starship.toml"


# Fastfetch
cp fastfetch/config.jsonc "$CONFIG/fastfetch/config.jsonc"
cp fastfetch/logo.txt "$CONFIG/fastfetch/logo.txt"


echo "Done."
echo "Backup saved at:"
echo "$BACKUP"

echo
echo "Restart terminal or run:"
echo "source ~/.bash_profile"
