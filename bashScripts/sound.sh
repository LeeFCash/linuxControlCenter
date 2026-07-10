#!/usr/bin/env bash

# "&> /dev/null" redirects BOTH standard output (stdout) and error output (stderr)
# into /dev/null, which is a special file that discards everything (like a black hole).
# This makes the command run silently with no visible output.
# It is commonly used when we only care whether a command succeeds or fails
# (its exit status), not what it prints to the terminal.
set -e # stops the script when error
allV=()
for ((i=0; i<= 200; i++)); do
	allV+=("$i")
done
index=$((RANDOM % ${#allV[@]}))
#index=0
choice="${allV[$index]}"
echo "${allV[@]}"
echo "what volume % do you want?"
read -r amount
count=0
while [[ "$amount" -ne "$choice" ]] && [[ ${#allV[@]} -gt 0 ]]
do
	wpctl set-volume @DEFAULT_AUDIO_SINK@ "${choice}%"
#	sleep 1s
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
