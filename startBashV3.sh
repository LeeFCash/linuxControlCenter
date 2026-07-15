#!/usr/bin/env bash

# "&> /dev/null" redirects BOTH standard output (stdout) and error output (stderr)
# into /dev/null, which is a special file that discards everything (like a black hole).
# This makes the command run silently with no visible output.
# It is commonly used when we only care whether a command succeeds or fails
# (its exit status), not what it prints to the terminal.

set -e # stops the script when error
root="linuxControlCenter"
$HOME/$root/bashScripts/tmp.sh
R=$((RANDOM % 2))
#ExitScript=$((RANDOM % 201))
if [[ -f $HOME/tmp/random.txt ]]; then
	f=$(cat $HOME/tmp/random.txt)
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
		"sound set to 0")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 0%
        	;;
		"sound set to 1")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%
        	;;
		"sound set to 2")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%
        	;;
		"sound set to 3")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 3%
        	;;
		"sound set to 4")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 4%
        	;;
		"sound set to 5")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%
        	;;
		"sound set to 6")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 6%
        	;;
		"sound set to 7")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 7%
        	;;
		"sound set to 8")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 8%
        	;;
		"sound set to 9")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 9%
        	;;
		"sound set to 10")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%
        	;;
		"sound set to 11")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 11%
        	;;
		"sound set to 12")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 12%
        	;;
		"sound set to 13")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 13%
        	;;
		"sound set to 14")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 14%
        	;;
		"sound set to 15")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 15%
        	;;
		"sound set to 16")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 16%
        	;;
		"sound set to 17")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 17%
        	;;
		"sound set to 18")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 18%
        	;;
		"sound set to 19")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 19%
        	;;
		"sound set to 20")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 20%
        	;;
		"sound set to 21")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 21%
        	;;
		"sound set to 22")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 22%
        	;;
		"sound set to 23")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 23%
        	;;
		"sound set to 24")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 24%
        	;;
		"sound set to 25")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 25%
        	;;
		"sound set to 26")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 26%
        	;;
		"sound set to 27")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 27%
        	;;
		"sound set to 28")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 28%
        	;;
		"sound set to 29")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 29%
        	;;
		"sound set to 30")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 30%
        	;;
		"sound set to 31")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 31%
        	;;
		"sound set to 32")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 32%
        	;;
		"sound set to 33")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 33%
        	;;
		"sound set to 34")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 34%
        	;;
		"sound set to 35")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 35%
        	;;
		"sound set to 36")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 36%
        	;;
		"sound set to 37")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 37%
        	;;
		"sound set to 38")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 38%
        	;;
		"sound set to 39")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 39%
        	;;
		"sound set to 40")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 40%
        	;;
		"sound set to 41")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 41%
        	;;
		"sound set to 42")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 42%
        	;;
		"sound set to 43")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 43%
        	;;
		"sound set to 44")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 44%
        	;;
		"sound set to 45")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 45%
        	;;
		"sound set to 46")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 46%
        	;;
		"sound set to 47")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 47%
        	;;
		"sound set to 48")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 48%
        	;;
		"sound set to 49")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 49%
        	;;
		"sound set to 50")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 50%
        	;;
		"sound set to 51")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 51%
        	;;
		"sound set to 52")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 52%
        	;;
		"sound set to 53")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 53%
        	;;
		"sound set to 54")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 54%
        	;;
		"sound set to 55")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 55%
        	;;
		"sound set to 56")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 56%
        	;;
		"sound set to 57")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 57%
        	;;
		"sound set to 58")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 58%
        	;;
		"sound set to 59")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 59%
        	;;
		"sound set to 60")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 60%
        	;;
		"sound set to 61")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 61%
        	;;
		"sound set to 62")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 62%
        	;;
		"sound set to 63")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 63%
        	;;
		"sound set to 64")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 64%
        	;;
		"sound set to 65")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 65%
        	;;
		"sound set to 66")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 66%
        	;;
		"sound set to 67")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 67%
        	;;
		"sound set to 68")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 68%
        	;;
		"sound set to 69")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 69%
        	;;
		"sound set to 70")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 70%
        	;;
		"sound set to 71")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 71%
        	;;
		"sound set to 72")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 72%
        	;;
		"sound set to 73")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 73%
        	;;
		"sound set to 74")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 74%
        	;;
		"sound set to 75")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 75%
        	;;
		"sound set to 76")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 76%
        	;;
		"sound set to 77")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 77%
        	;;
		"sound set to 78")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 78%
        	;;
		"sound set to 79")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 79%
        	;;
		"sound set to 80")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 80%
        	;;
		"sound set to 81")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 81%
        	;;
		"sound set to 82")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 82%
        	;;
		"sound set to 83")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 83%
        	;;
		"sound set to 84")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 84%
        	;;
		"sound set to 85")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 85%
        	;;
		"sound set to 86")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 86%
        	;;
		"sound set to 87")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 87%
        	;;
		"sound set to 88")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 88%
        	;;
		"sound set to 89")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 89%
        	;;
		"sound set to 90")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 90%
        	;;
		"sound set to 91")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 91%
        	;;
		"sound set to 92")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 92%
        	;;
		"sound set to 93")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 93%
        	;;
		"sound set to 94")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 94%
        	;;
		"sound set to 95")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 95%
        	;;
		"sound set to 96")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 96%
        	;;
		"sound set to 97")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 97%
        	;;
		"sound set to 98")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 98%
        	;;
		"sound set to 99")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 99%
        	;;
		"sound set to 100")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 100%
        	;;
	esac
	rm -r $HOME/tmp/random.txt
	exit
fi
notify-send "RANDOM R is $R for what list is picked."
sleep 3s
items=(
	"setupAll"
	"timerOffReboot"
	"oldStartBash"
	"startStuff"
	"soundC"
	"soundCV2"
	"how this works is run 1 time to select or run 2 times to pick it"
)
if [[ "$R" -eq 1 ]]; then
	for ((i=0; i <= 100; i++)); do
		items+=("sound set to $i")
	done
fi
index=$((RANDOM % ${#items[@]}))
choice="${items[$index]}"
ExitScript=$((RANDOM % (${#items[@]} + 1)))
timeOutNumber=0
while (( ${#items[@]} > 0 ));
do
	echo "$choice" > $HOME/tmp/random.txt
	notify-send "🎲 Random pick: $choice"
	sleep 2s
#	notify-send "🎲 Random pick: null"
	unset "items[$index]"
	items=("${items[@]}")
	if (( ${#items[@]} > 0 )); then
		index=$((RANDOM % ${#items[@]}))
		choice="${items[$index]}"
	fi
	((timeOutNumber+=1))
	if [[ "$ExitScript" -eq "$timeOutNumber" ]]; then
		notify-send "stopped script from running"
		if [[ -f $HOME/tmp/random.txt ]]; then
			rm -r $HOME/tmp/random.txt
		fi
		exit
	fi
done
if [[ -f $HOME/tmp/random.txt ]]; then
	rm -r $HOME/tmp/random.txt
fi
