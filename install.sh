#!/usr/bin/env bash

set -e

echo "Installing shell configuration..."

CONFIG="$HOME/.config"

mkdir -p "$CONFIG/fastfetch"


# Bash
cp bash/.bashrc "$HOME/.bashrc"
cp bash/aliases.sh "$HOME/.aliases"
cp bash/functions.sh "$HOME/.bash_functions"


# Starship
mkdir -p "$CONFIG"
cp starship/starship.toml "$CONFIG/starship.toml"


# Fastfetch
cp fastfetch/config.jsonc "$CONFIG/fastfetch/config.jsonc"
cp fastfetch/logo.txt "$CONFIG/fastfetch/logo.txt"


echo "Done."
echo "Restart terminal or run:"
echo "source ~/.bashrc"
