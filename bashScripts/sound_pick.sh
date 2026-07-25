#!/usr/bin/env bash

# "&> /dev/null" redirects BOTH standard output (stdout) and error output (stderr)
# into /dev/null, which is a special file that discards everything (like a black hole).
# This makes the command run silently with no visible output.
# It is commonly used when we only care whether a command succeeds or fails
# (its exit status), not what it prints to the terminal.
set -e # stops the script when error
R=$((RANDOM % 101))
echo "$R" > $HOME/tmp/random.txt
notify-send "$R"
#wpctl set-volume @DEFAULT_AUDIO_SINK@ $R%-
