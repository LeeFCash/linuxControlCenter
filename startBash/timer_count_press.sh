#!/usr/bin/env bash
set -e # stops script if error 
if [[ -f $HOME/tmp/random.txt ]]; then
	f=$(cat $HOME/tmp/random.txt)
	echo "$f"
	if [[ "$f" =~ ^[+-]?[0-9]+$ ]]; then
		((f+=1))
		echo "$f"
		echo "$f" > $HOME/tmp/random.txt
	else
		echo "1" > $HOME/tmp/random.txt
	fi
else
	echo "1" > $HOME/tmp/random.txt
fi
sleep 1m
if [[ -f $HOME/tmp/random.txt ]]; then
	f=$(cat $HOME/tmp/random.txt)
	case $f in
		"1")
			notify-send "1 minute, 1 press is this, do it more and you get something else."
        	;;
		"2")
			alacritty -e "../$root/bashScripts/setupAll.sh"
        	;;
		"3")
			alacritty -e "../$root/bashScripts/timerOffReboot.sh"
        	;;
		"4")
			alacritty -e "../$root/startBash.sh"
        	;;
		"5")
			alacritty -e "../$root/bashScripts/startStuffV1.sh"
        	;;
		"6")
			alacritty -e "../$root/bashScripts/sound.sh"
        	;;
		"7")
			alacritty -e "../$root/bashScripts/soundV2.sh"
        	;;
	esac
fi
rm -r $HOME/tmp/random.txt
