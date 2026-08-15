#!/usr/bin/env bash

# "&> /dev/null" redirects BOTH standard output (stdout) and error output (stderr)
# into /dev/null, which is a special file that discards everything (like a black hole).
# This makes the command run silently with no visible output.
# It is commonly used when we only care whether a command succeeds or fails
# (its exit status), not what it prints to the terminal.
set -e # stops the script when error
if [[ -f $HOME/tmp/random.txt ]]; then
#echo "$R" > $HOME/tmp/random.txt
	R=$(cat $HOME/tmp/random.txt)
	wpctl set-volume @DEFAULT_AUDIO_SINK@ $R%
	rm -r $HOME/tmp/random.txt
else
	R=$((RANDOM % 100))
	wpctl set-volume @DEFAULT_AUDIO_SINK@ $R%
fi

