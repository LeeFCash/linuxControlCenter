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
#notify-send "RANDOM R is $R for what list is picked."
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
echo "$choice" > $HOME/tmp/random.txt
notify-send "🎲 Random pick: $choice"
#sleep 3s
#ExitScript=$((RANDOM % 201))
#notify-send "RANDOM R is $R for what list is picked."
#ExitScript=$((RANDOM % (${#items[@]} + 1)))
#timeOutNumber=0
#while (( ${#items[@]} > 0 ));
#do
#	sleep 2s
#	notify-send "🎲 Random pick: null"
#	unset "items[$index]"
#	items=("${items[@]}")
#	if (( ${#items[@]} > 0 )); then
#		index=$((RANDOM % ${#items[@]}))
#		choice="${items[$index]}"
#	fi
#	((timeOutNumber+=1))
#	if [[ "$ExitScript" -eq "$timeOutNumber" ]]; then
#		notify-send "stopped script from running"
#		if [[ -f $HOME/tmp/random.txt ]]; then
#			rm -r $HOME/tmp/random.txt
#		fi
#		exit
#	fi
#done
#if [[ -f $HOME/tmp/random.txt ]]; then
#	rm -r $HOME/tmp/random.txt
#fi
