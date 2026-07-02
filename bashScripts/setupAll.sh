#!/usr/bin/env bash

# "&> /dev/null" redirects BOTH standard output (stdout) and error output (stderr)
# into /dev/null, which is a special file that discards everything (like a black hole).
# This makes the command run silently with no visible output.
# It is commonly used when we only care whether a command succeeds or fails
# (its exit status), not what it prints to the terminal.

set -e # stops the script when error
nameOfRootOfProjects="linuxControlCenter"
echo "setup niri config?y/n."
read -r yn
if [[ "$yn" == "y" ]]; then
	sudo mkdir -p "$HOME/.config/niri"
	sudo cp -rf "$HOME/$nameOfRootOfProjects/niri/config.kdl" "$HOME/.config/niri/"
fi
echo "setup mako config?y/n."
read -r yn
if [[ "$yn" == "y" ]]; then
	sudo mkdir -p "$HOME/.config/mako"
	sudo cp -rf "$HOME/$nameOfRootOfProjects/mako/config" "$HOME/.config/mako/"
fi
echo "setup waybar config?y/n."
read -r yn
if [[ "$yn" == "y" ]]; then
	sudo mkdir -p "$HOME/.config/waybar"
	sudo cp -rf "$HOME/$nameOfRootOfProjects/waybar/style.css" "$HOME/.config/waybar/"
fi
echo "start the arch config script?y/n."
read -r yn
if [[ "$yn" == "y" ]]; then
	$HOME/$nameOfRootOfProjects/archConfigV2.sh
fi
echo "setup hyprland config?y/n."
read -r yn
if [[ "$yn" == "y" ]]; then
	sudo mkdir -p "$HOME/.config/hypr"
	sudo cp -rf "$HOME/$nameOfRootOfProjects/hyprland/hyprland.lua" "$HOME/.config/hypr/"
fi
echo "setup neovim root user config?y/n."
read -r yn
if [[ "$yn" == "y" ]]; then
	sudo mkdir -p "/root/.config/nvim"
	sudo cp -rf "$HOME/$nameOfRootOfProjects/nvim/init.vim" "/root/.config/nvim/"
fi
echo "setup brave config?y/n."
read -r yn
if [[ "$yn" == "y" ]]; then
	sudo mkdir -p "$HOME/.config/"
	sudo cp -rf "$HOME/$nameOfRootOfProjects/brave/brave-flags.conf" "$HOME/.config/"
fi
echo "setup neovim config?y/n."
read -r yn
if [[ "$yn" == "y" ]]; then
	sudo mkdir -p "$HOME/.config/nvim"
	sudo cp -rf "$HOME/$nameOfRootOfProjects/nvim/init.vim" "$HOME/.config/nvim/"
fi
if [ ! -d "/home/leecash/AppImages" ]; then
	mkdir /home/leecash/AppImages
fi
if [ ! -d "/home/leecash/ISO" ]; then
	mkdir /home/leecash/ISO
fi
if [ ! -d "/home/leecash/tmp" ]; then
	mkdir /home/leecash/tmp
fi
