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
notify-send "RANDOM R is $R"
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
		"sound set to 101")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 101%
        	;;
		"sound set to 102")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 102%
        	;;
		"sound set to 103")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 103%
        	;;
		"sound set to 104")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 104%
        	;;
		"sound set to 105")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 105%
        	;;
		"sound set to 106")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 106%
        	;;
		"sound set to 107")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 107%
        	;;
		"sound set to 108")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 108%
        	;;
		"sound set to 109")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 109%
        	;;
		"sound set to 110")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 110%
        	;;
		"sound set to 111")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 111%
        	;;
		"sound set to 112")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 112%
        	;;
		"sound set to 113")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 113%
        	;;
		"sound set to 114")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 114%
        	;;
		"sound set to 115")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 115%
        	;;
		"sound set to 116")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 116%
        	;;
		"sound set to 117")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 117%
        	;;
		"sound set to 118")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 118%
        	;;
		"sound set to 119")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 119%
        	;;
		"sound set to 120")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 120%
        	;;
		"sound set to 121")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 121%
        	;;
		"sound set to 122")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 122%
        	;;
		"sound set to 123")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 123%
        	;;
		"sound set to 124")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 124%
        	;;
		"sound set to 125")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 125%
        	;;
		"sound set to 126")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 126%
        	;;
		"sound set to 127")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 127%
        	;;
		"sound set to 128")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 128%
        	;;
		"sound set to 129")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 129%
        	;;
		"sound set to 130")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 130%
        	;;
		"sound set to 131")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 131%
        	;;
		"sound set to 132")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 132%
        	;;
		"sound set to 133")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 133%
        	;;
		"sound set to 134")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 134%
        	;;
		"sound set to 135")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 135%
        	;;
		"sound set to 136")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 136%
        	;;
		"sound set to 137")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 137%
        	;;
		"sound set to 138")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 138%
        	;;
		"sound set to 139")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 139%
        	;;
		"sound set to 140")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 140%
        	;;
		"sound set to 141")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 141%
        	;;
		"sound set to 142")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 142%
        	;;
		"sound set to 143")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 143%
        	;;
		"sound set to 144")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 144%
        	;;
		"sound set to 145")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 145%
        	;;
		"sound set to 146")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 146%
        	;;
		"sound set to 147")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 147%
        	;;
		"sound set to 148")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 148%
        	;;
		"sound set to 149")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 149%
        	;;
		"sound set to 150")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 150%
        	;;
		"sound set to 151")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 151%
        	;;
		"sound set to 152")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 152%
        	;;
		"sound set to 153")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 153%
        	;;
		"sound set to 154")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 154%
        	;;
		"sound set to 155")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 155%
        	;;
		"sound set to 156")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 156%
        	;;
		"sound set to 157")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 157%
        	;;
		"sound set to 158")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 158%
        	;;
		"sound set to 159")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 159%
        	;;
		"sound set to 160")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 160%
        	;;
		"sound set to 161")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 161%
        	;;
		"sound set to 162")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 162%
        	;;
		"sound set to 163")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 163%
        	;;
		"sound set to 164")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 164%
        	;;
		"sound set to 165")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 165%
        	;;
		"sound set to 166")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 166%
        	;;
		"sound set to 167")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 167%
        	;;
		"sound set to 168")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 168%
        	;;
		"sound set to 169")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 169%
        	;;
		"sound set to 170")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 170%
        	;;
		"sound set to 171")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 171%
        	;;
		"sound set to 172")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 172%
        	;;
		"sound set to 173")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 173%
        	;;
		"sound set to 174")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 174%
        	;;
		"sound set to 175")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 175%
        	;;
		"sound set to 176")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 176%
        	;;
		"sound set to 177")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 177%
        	;;
		"sound set to 178")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 178%
        	;;
		"sound set to 179")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 179%
        	;;
		"sound set to 180")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 180%
        	;;
		"sound set to 181")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 181%
        	;;
		"sound set to 182")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 182%
        	;;
		"sound set to 183")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 183%
        	;;
		"sound set to 184")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 184%
        	;;
		"sound set to 185")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 185%
        	;;
		"sound set to 186")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 186%
        	;;
		"sound set to 187")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 187%
        	;;
		"sound set to 188")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 188%
        	;;
		"sound set to 189")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 189%
        	;;
		"sound set to 190")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 190%
        	;;
		"sound set to 191")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 191%
        	;;
		"sound set to 192")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 192%
        	;;
		"sound set to 193")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 193%
        	;;
		"sound set to 194")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 194%
        	;;
		"sound set to 195")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 195%
        	;;
		"sound set to 196")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 196%
        	;;
		"sound set to 197")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 197%
        	;;
		"sound set to 198")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 198%
        	;;
		"sound set to 199")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 199%
        	;;
		"sound set to 200")
			wpctl set-volume @DEFAULT_AUDIO_SINK@ 200%
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
#	"soundCV2"
	"how this works is run 1 time to select or run 2 times to pick it"
)
if [[ "$R" -eq 1 ]]; then
	for ((i=0; i<= 200; i++)); do
		items+=("sound set to $i")
	done
fi
index=$((RANDOM % ${#items[@]}))
choice="${items[$index]}"
while (( ${#items[@]} > 0 ));
do
	echo "$choice" > /tmp/random.txt
	notify-send "🎲 Random pick: $choice"
	sleep 1s
#	notify-send "🎲 Random pick: null"
	unset "items[$index]"
	items=("${items[@]}")
	if (( ${#items[@]} > 0 )); then
		index=$((RANDOM % ${#items[@]}))
		choice="${items[$index]}"
	fi
done
rm -r /tmp/random.txt
