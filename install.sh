#!/bin/bash

tmp="$(mktemp -d)"

echo "Installing..."
git clone https://github.com/lunar-theme/konsole "$tmp"
cd "$tmp"

if [ -d "~/.local/share/konsole" ]; then
	mv Lunar.colorscheme ~/.local/share/konsole
else
	mkdir -p "~/.local/share/konsole"
	mv Lunar.colorscheme ~/.local/share/konsole	
fi

echo "Installation complete"
