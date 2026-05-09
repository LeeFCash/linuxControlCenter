#!/usr/bin/env bash

# "&> /dev/null" redirects BOTH standard output (stdout) and error output (stderr)
# into /dev/null, which is a special file that discards everything (like a black hole).
# This makes the command run silently with no visible output.
# It is commonly used when we only care whether a command succeeds or fails
# (its exit status), not what it prints to the terminal.

set -e # stops the script when error

R=$((RANDOM % 101))
#echo "${R}" > /tmp/random.txt
#R=$(cat /tmp/random.txt)
update=true
installNeovim=true
installNiri=true
installMako=true
installWaybar=true
usingArch=true
archConfigScriptPath="$HOME/archBashConfig/archConfig.sh"
echo "Type number to random event to get it to happen or enter nothing to make it random.    also if you put letters that will stop the random events from happening."
read -r rA

if [[ -n "$rA" ]]; then
	R="$rA"
fi

if [[ "$R" == "1" ]]; then
	fastfetch
else 
	echo "1 did not go off."
fi

if [[ "$R" == "2" ]] && [[ "$update" == true ]]; then
	echo "update the system."
	echo "pacman first"
	sudo pacman -Syu
	echo "yay after."
	yay -Syu
else 
	echo "2 did not go off."
fi

if [[ "$R" == "3" ]] && [[ "$installNiri" == true ]]; then
	echo "about to setup niri config."
	sudo mkdir -p "$HOME/.config/niri"
	sudo cp -rf "$HOME/archBashConfig/niri/config.kdl" "$HOME/.config/niri/"
else 
	echo "3 did not go off."
fi

if [[ "$R" == "4" ]] && [[ "$installMako" == true ]]; then
	echo "about to setup mako config."
	sudo mkdir -p "$HOME/.config/mako"
	sudo cp -rf "$HOME/archBashConfig/mako/config" "$HOME/.config/mako/"
else 
	echo "4 did not go off."
fi

if [[ "$R" == "5" ]] && [[ "$installNeovim" == true ]]; then
	echo "about to setup neovim config."
	sudo mkdir -p "$HOME/.config/nvim"
	sudo cp -rf "$HOME/archBashConfig/nvim/init.vim" "$HOME/.config/nvim/"
else 
	echo "5 did not go off."
fi

if [[ "$R" == "6" ]]; then
	echo "Sometimes the script will do something at this point but this time it's just letting you know."
else 
	echo "6 did not go off."
fi

if [[ "$R" == "7" ]]; then
	echo "about to show mem/swap info."
	free -h
else 
	echo "7 did not go off."
fi

if [[ "$R" == "8" ]]; then
	echo "about to show the uptime info."
	uptime
else 
	echo "8 did not go off."
fi

if [[ "$R" == "9" ]] && [[ "$installWaybar" == true ]]; then
	echo "about to setup waybar config."
	sudo mkdir -p "$HOME/.config/waybar"
	sudo cp -rf "$HOME/archBashConfig/waybar/style.css" "$HOME/.config/waybar/"
else 
	echo "9 did not go off."
fi

if [[ "$R" == "10" ]] && [[ "$usingArch" == true ]]; then
	"$archConfigScriptPath"
else
	echo "10 did not go off."
fi

echo "$R"
echo "script is done ( MAKE OUTPUT WITH MORE INFO LATER LEE CASH!!! )"
read -r waitHere
