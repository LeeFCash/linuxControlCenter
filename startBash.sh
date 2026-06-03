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
nameOfRootOfProjects="linuxControlCenter"
archConfigScriptPath="$HOME/$nameOfRootOfProjects/archConfigV2.sh"
echo "Type number to random event to get it to happen or enter nothing to make it random.    also if you put letters that will stop the random events from happening."
read -r rA

if [[ -n "$rA" ]]; then
	R="$rA"
fi

if [[ "$R" == "1" ]]; then
	fastfetch
else 
	echo "1 did not go off( info about setup )."
fi

if [[ "$R" == "2" ]] && [[ "$update" == true ]]; then
	echo "update the system."
	echo "pacman first"
	sudo pacman -Syu
	echo "yay after."
	yay -Syu
else 
	echo "2 did not go off( updates pacman and yay( if no yay might give error ) )."
fi

if [[ "$R" == "3" ]] && [[ "$installNiri" == true ]]; then
	echo "about to setup niri config."
	sudo mkdir -p "$HOME/.config/niri"
	sudo cp -rf "$HOME/$nameOfRootOfProjects/niri/config.kdl" "$HOME/.config/niri/"
else 
	echo "3 did not go off( sets niri config )."
fi

if [[ "$R" == "4" ]] && [[ "$installMako" == true ]]; then
	echo "about to setup mako config."
	sudo mkdir -p "$HOME/.config/mako"
	sudo cp -rf "$HOME/$nameOfRootOfProjects/mako/config" "$HOME/.config/mako/"
else 
	echo "4 did not go off( sets config for mako )."
fi

if [[ "$R" == "5" ]] && [[ "$installNeovim" == true ]]; then
	echo "about to setup neovim config."
	sudo mkdir -p "$HOME/.config/nvim"
	sudo cp -rf "$HOME/$nameOfRootOfProjects/nvim/init.vim" "$HOME/.config/nvim/"
else 
	echo "5 did not go off( sets config for neovim )."
fi

if [[ "$R" == "6" ]]; then
	echo "Sometimes the script will do something at this point but this time it's just letting you know."
else 
	echo "6 did not go off(just info about this script )."
fi

if [[ "$R" == "7" ]]; then
	echo "about to show mem/swap info."
	free -h
else 
	echo "7 did not go off( info about memory(ram) and/or swap )."
fi

if [[ "$R" == "8" ]]; then
	echo "about to show the uptime info."
	uptime
else 
	echo "8 did not go off( uptime for system )."
fi

if [[ "$R" == "9" ]] && [[ "$installWaybar" == true ]]; then
	echo "about to setup waybar config."
	sudo mkdir -p "$HOME/.config/waybar"
	sudo cp -rf "$HOME/$nameOfRootOfProjects/waybar/style.css" "$HOME/.config/waybar/"
else 
	echo "9 did not go off( add css to waybar / fonts( if already installed ) )."
fi

if [[ "$R" == "10" ]] && [[ "$usingArch" == true ]]; then
	"$archConfigScriptPath"
else
	echo "10 did not go off( run arch config )."
fi

if [[ "$R" == "11" ]]; then
	allV=()
	for ((i=0; i<=100; i++)); do
		allV+=("$i")
	done
	index=$((RANDOM % ${#allV[@]}))
	choice="${allV[$index]}"
	echo "${allV[@]}"
	echo "what volume % do you want?"
	read -r amount
	count=0
	while [[ "$amount" -ne "$choice" ]] && [[ ${#allV[@]} -gt 0 ]]
	do
		wpctl set-volume @DEFAULT_AUDIO_SINK@ "${choice}%"
		sleep 1s
		echo "$choice - change $count "
		echo "${allV[@]}"
		unset "allV[$index]"
		allV=("${allV[@]}")
		index=$((RANDOM % ${#allV[@]}))
		choice="${allV[$index]}"
		((count+=1))
	done
	wpctl set-volume @DEFAULT_AUDIO_SINK@ "${choice}%"
	echo "$choice - change $count "
	echo "${allV[@]}"
#	while [[ "$yesIKnowIDontNeedThis" != "$amount" ]] && [[ "$amount" -le 100 ]]
#	do
#		((count+=1))
#		yesIKnowIDontNeedThis=$((RANDOM % 101))
#	done
else
	echo "11 did not go off( set the volume )."
fi

if [[ "$R" == "12" ]]; then
	items=(
		"Gmail"
		"outlookMail"
		"webFluxer"
		"AppImageFluxer"
		"textnow"
		"discord"
		"youtubeSubscriptions"
		"steam"
		"chattanoogastateWebsite"
		"blueSky"
		"flathub"
		"messenger"
		"brave"
		"rumbleS"
		"Nothing..."
	)
	index=$((RANDOM % ${#items[@]}))
	choice="${items[$index]}"
	echo " '$choice' is this what you want to open?(y/n)"
	read -r pick
	while [[ "$pick" != "y" ]]
	do
		index=$((RANDOM % ${#items[@]}))
		choice="${items[$index]}"
		echo " '$choice' is this what you want to open?(y/n)"
		read -r pick
	done
	case "$choice" in
		"Gmail")
			xdg-open https://mail.google.com/mail/u/0/#inbox
        	;;
		"outlookMail")
			xdg-open https://outlook.cloud.microsoft/mail/
        	;;
		"webFluxer")
			xdg-open https://web.fluxer.app/channels/@me
        	;;
		"AppImageFluxer")
			/home/leecash/AppImages/fluxer-stable-0.0.8-x86_64.AppImage
        	;;
		"textnow")
			xdg-open https://www.textnow.com/messaging
        	;;
		"discord")
			discord
        	;;
		"youtubeSubscriptions")
			xdg-open https://www.youtube.com/feed/subscriptions
        	;;
		"steam")
			steam
        	;;
		"chattanoogastateWebsite")
			xdg-open https://www.chattanoogastate.edu/
        	;;
		"blueSky")
			xdg-open https://bsky.app/profile/lonelyleecash.bsky.social
        	;;
		"flathub")
			xdg-open https://flathub.org/en
        	;;
		"messenger")
			xdg-open https://www.messenger.com/new
        	;;
		"brave")
			brave
        	;;
		"rumbleS")
			xdg-open https://rumble.com/subscriptions
        	;;
	esac
else
	echo "12 did not go off( pick and run app/web/etc )."
fi

if [[ "$R" == "13" ]]; then 
	echo "time in minutes, seconds, hours? (m/s/h)"
	read -r timeT
	echo "how long until shutdown command starts?(number)"
	read -r timeL
	sleep "$timeL$timeT"; shutdown
else
	echo "13 did not go off( turn off pc timer )."
fi

if [[ "$R" == "14" ]] && [[ "$installNeovim" == true ]]; then
	echo "about to setup neovim config."
	sudo mkdir -p "/root/.config/nvim"
	sudo cp -rf "$HOME/$nameOfRootOfProjects/nvim/init.vim" "/root/.config/nvim/"
else 
	echo "14 did not go off( sets config for neovim root )."
fi

if [[ "$R" == "15" ]]; then
	echo "type a commend to run or k to end 15.( if you have tmux or something like it you can do more )"
	read -r c
	while [[ "$c" != "k" ]]
	do
		$c
		echo "type a commend to run or k to end 15."
		read -r c
	done
else 
	echo "15 did not go off( type/run commends )."
fi

echo "$R"
echo "script is done"
#read -r waitHere
sleep 1m
