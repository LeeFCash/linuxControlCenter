#!/usr/bin/env bash

# "&> /dev/null" redirects BOTH standard output (stdout) and error output (stderr)
# into /dev/null, which is a special file that discards everything (like a black hole).
# This makes the command run silently with no visible output.
# It is commonly used when we only care whether a command succeeds or fails
# (its exit status), not what it prints to the terminal.

set -e # stops the script when error
echo "time in minutes, seconds, hours? (m/s/h)"
read -r timeT
echo "how long until shutdown command starts?(number)"
read -r timeL
sleep "$timeL$timeT"; shutdown
