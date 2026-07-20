R=$((RANDOM % 4))
if [[ "$R" -eq 0 ]]; then
	notify-send "starting dms also known as Dank Material Shell"
	alacritty -e bash -c 'dms run; echo; echo "Exit code: $?"; sleep 2h'
#	alacritty -e "dms run; sleep 2h"
fi
if [[ "$R" -eq 1 ]]; then
	notify-send "starting noctalia-shell"
	alacritty -e bash -c 'noctalia-shell; echo; echo "Exit code: $?"; sleep 2h'
#	alacritty -e "noctalia-shell; sleep 2h"
fi
if [[ "$R" -eq 2 ]]; then
	notify-send "starting nothing but setting up wallpaper"
	while true
	do
		wallpaperDir="$HOME/linuxControlCenter/Wallpapers"
		wallpapers=("$wallpaperDir"/*)
		image="${wallpapers[RANDOM % ${#wallpapers[@]}]}"
		pkill swaybg 2>>"$HOME/tmp/swaybgError.txt"
		swaybg -i "$image" -m fit &
		sleep 1m
	done
fi
