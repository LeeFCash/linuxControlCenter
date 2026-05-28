#!/usr/bin/env bash

# "&> /dev/null" redirects BOTH standard output (stdout) and error output (stderr)
# into /dev/null, which is a special file that discards everything (like a black hole).
# This makes the command run silently with no visible output.
# It is commonly used when we only care whether a command succeeds or fails
# (its exit status), not what it prints to the terminal.

set -e # stops the script when error

update=false

# Function to check if a package is installed
is_installed() {
    pacman -Qi "$1" &> /dev/null 
#    pacman -Qi "$1"
}

manage_update() {
	local yesOrNo="$1"
	if [[ "$yesOrNo" == true ]]; then
		echo "update the system."
		echo "pacman first"
		read -rt 20 waiting
		sudo pacman -Syu
		echo "yay after."
		read -rt 20 waiting
		yay -Syu
	fi
}

manage_install() {
	local name="$1"
	local install="$2"
	local from="$3"
	if [[ "$install" == true ]] && [[ "$from" == "pacman" ]] && ! is_installed "$name"; then
		echo "installing $name after x amount of time. ctrl+c for the script to end now"
		read -rt 20 waiting
		sudo pacman -S "$name"
	elif [[ "$install" == false ]] && [[ "$from" == "pacman" ]] && is_installed "$name"; then
		echo "uninstalling $name after x amount of time. ctrl+c for the script to end now"
		read -rt 20 waiting
		sudo pacman -Rns "$name"
	fi
#
	if [[ "$install" == true ]] && [[ "$from" == "yay" ]] && ! is_installed "$name"; then
		echo "installing $name after x amount of time. ctrl+c for the script to end now"
		read -rt 20 waiting
		if ! command -v yay &> /dev/null; then
			echo "installing yay the AUR helper"
			cd /tmp/
			git clone https://aur.archlinux.org/yay.git
			cd yay
			makepkg -si
			cd ..
			rm -rf yay
		fi
		yay -S "$name"
	elif [[ "$install" == false ]] && [[ "$from" == "yay" ]] && is_installed "$name"; then
		echo "uninstalling $name after x amount of time. ctrl+c for the script to end now"
		read -rt 20 waiting
		sudo pacman -Rns "$name"
	fi
	manage_update $update
}
# what is installed - 
# O -
manage_install obs-studio true pacman
manage_install openbsd-netcat false pacman
# D -
manage_install dolphin true pacman
manage_install dnsmasq false pacman
manage_install discord true pacman
# G -
manage_install gamemode true pacman
manage_install gamescope true pacman
manage_install git true pacman
manage_install gimp true pacman
manage_install grim true pacman
manage_install gradle true pacman
# J -
manage_install jdk21-openjdk true pacman
# P -
manage_install python true pacman
manage_install python-flask true pacman
manage_install pyinstaller true yay
manage_install pavucontrol true pacman
manage_install plasma null pacman
manage_install proton-ge-custom-bin true yay
# M -
manage_install mangohud true pacman
manage_install mesa true pacman
manage_install mission-center true pacman
# B -
manage_install blueman true pacman
manage_install bluez-obex true pacman
manage_install blender true pacman
manage_install base-devel true pacman
manage_install brave-bin true yay
# N -
manage_install networkmanager false pacman
manage_install network-manager-applet false pacman
manage_install neovim-jellybeans true yay
manage_install neovim true pacman
manage_install niri true pacman
# T
manage_install tmux true pacman
manage_install ttf-font-awesome true pacman
manage_install ttf-jetbrains-mono-nerd true pacman
manage_install teams-for-linux-bin true yay
# F -
manage_install fastfetch true pacman
manage_install flatpak true pacman
manage_install firefox true pacman
manage_install foot true pacman
manage_install fuzzel true pacman
# S -
manage_install steam true pacman
manage_install swtpm false pacman
manage_install swaybg true pacman
manage_install slurp true pacman
# V -
manage_install vulkan-icd-loader true pacman
manage_install virt-manager false pacman
manage_install virtualbox false pacman
manage_install virtualbox-host-modules-arch false pacman
manage_install virtualbox-host-dkms false pacman
manage_install virtualbox-guest-iso false pacman
manage_install video-downloader true yay
manage_install vde2 false pacman
# L -
manage_install lib32-vulkan-icd-loader true pacman
manage_install linux-lts-headers true pacman
# Q -
manage_install qemu false pacman
manage_install qemu-base false pacman
manage_install qemu-system-x86 false pacman
# I -
manage_install iproute2 false pacman
manage_install iptables false pacman
# W -
manage_install wayland true pacman
manage_install waybar true pacman
manage_install wl-clipboard true pacman
# X -
manage_install xorg-xwayland true pacman
manage_install xwayland-satellite true yay
# Z -
manage_install zip true pacman
# U -
manage_install unzip true pacman
# A -
manage_install audacity true pacman
# E -
manage_install easyeffects true pacman
# ----------------------------------------------------------------------
if [ ! -d "/home/leecash/AppImages" ]; then
	mkdir /home/leecash/AppImages
fi

if ! grep -q "^\[multilib\]" /etc/pacman.conf; then
	echo "WARNING: multilib repo may not be enabled!"
fi

echo "to see if the script makes it here."
