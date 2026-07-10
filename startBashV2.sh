#!/usr/bin/env bash

# "&> /dev/null" redirects BOTH standard output (stdout) and error output (stderr)
# into /dev/null, which is a special file that discards everything (like a black hole).
# This makes the command run silently with no visible output.
# It is commonly used when we only care whether a command succeeds or fails
# (its exit status), not what it prints to the terminal.

set -e # stops the script when error
root="linuxControlCenter"
R=$((RANDOM % 201))
if [[ -f /tmp/random.txt ]]; then
	f=$(cat /tmp/random.txt)
	case $f in
		"setupAll")
			alacritty -e "./$root/bashScripts/setupAll.sh"
        	;;
		"timerOffReboot")
			alacritty -e "./$root/bashScripts/timerOffReboot.sh"
        	;;
		"oldStartBash")
			alacritty -e "./$root/startBash.sh"
        	;;
		"startStuff")
			alacritty -e "./$root/bashScripts/startStuffV1.sh"
        	;;
		"soundC")
			alacritty -e "./$root/bashScripts/sound.sh"
        	;;
		"soundCV2")
			alacritty -e "./$root/bashScripts/soundV2.sh"
        	;;
	esac
	rm -r /tmp/random.txt
	exit
fi
	items=(
		"setupAll"
		"timerOffReboot"
		"oldStartBash"
		"startStuff"
		"soundC"
#		"soundCV2"
		"how this works is run 1 time to select or run 2 times to pick it"
	)
index=$((RANDOM % ${#items[@]}))
choice="${items[$index]}"
echo "$choice" > /tmp/random.txt
notify-send "🎲 Random pick: $choice"
sleep 1s
rm -r /tmp/random.txt
$HOME/$root/bashScripts/tmp.sh
notify-send "🎲 Random pick: null"
