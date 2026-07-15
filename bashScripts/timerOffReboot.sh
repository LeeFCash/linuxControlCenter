#!/usr/bin/env bash

# "&> /dev/null" redirects BOTH standard output (stdout) and error output (stderr)
# into /dev/null, which is a special file that discards everything (like a black hole).
# This makes the command run silently with no visible output.
# It is commonly used when we only care whether a command succeeds or fails
# (its exit status), not what it prints to the terminal.

set -e # stops the script when error
echo "time in minutes, seconds, hours? (m/s/h)"
read -r timeT
echo "how long until shutdown or reboot command starts?(number)"
read -r timeL
echo "do you want reboot?(y/n)"
read -r rebootYN
if [[ "$rebootYN" == "y" ]]; then
	sleep "$timeL$timeT"; reboot
fi
sleep "$timeL$timeT"; shutdown
