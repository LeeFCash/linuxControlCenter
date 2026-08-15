#!/usr/bin/env bash

# "&> /dev/null" redirects BOTH standard output (stdout) and error output (stderr)
# into /dev/null, which is a special file that discards everything (like a black hole).
# This makes the command run silently with no visible output.
# It is commonly used when we only care whether a command succeeds or fails
# (its exit status), not what it prints to the terminal.
set -e # stops the script when error

DIRECTORY="$HOME/tmp"
DIRECTORY2="$HOME/.cache"
DIRECTORY3="$HOME/tmp/tmp2"

if [ ! -d "$HOME/AppImages" ]; then
	mkdir $HOME/AppImages
fi
if [ ! -d "$HOME/ISO" ]; then
	mkdir $HOME/ISO
fi
if [ ! -d "$HOME/tmp" ]; then
	mkdir $HOME/tmp
fi
if [ ! -d "$HOME/tmp/tmp2" ]; then
	mkdir $HOME/tmp/tmp2
fi

# Delete files older than 30 days
find "$DIRECTORY" -type f -mtime +30 -delete
# Delete empty directories older than 30 days
find "$DIRECTORY" -type d -empty -mtime +30 -delete
# Delete files older than 30 days
find "$DIRECTORY2" -type f -mtime +30 -delete
# Delete empty directories older than 30 days
find "$DIRECTORY2" -type d -empty -mtime +30 -delete
# Delete files older than 1 days
find "$DIRECTORY3" -type f -mtime +0 -delete
# Delete empty directories older than 1 days
find "$DIRECTORY3" -type d -empty -mtime +0 -delete

# Delete files older than 1 minute
#find "$DIRECTORY" -type f -mmin +1 -delete

# Delete empty directories older than 1 minute
#find "$DIRECTORY" -type d -empty -mmin +1 -delete
