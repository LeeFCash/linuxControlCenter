#!/usr/bin/env bash

# "&> /dev/null" redirects BOTH standard output (stdout) and error output (stderr)
# into /dev/null, which is a special file that discards everything (like a black hole).
# This makes the command run silently with no visible output.
# It is commonly used when we only care whether a command succeeds or fails
# (its exit status), not what it prints to the terminal.
set -e # stops the script when error

DIRECTORY="/home/leecash/tmp"
DIRECTORY2="/home/leecash/.cache"

# Delete files older than 30 days
find "$DIRECTORY" -type f -mtime +30 -delete
# Delete empty directories older than 30 days
find "$DIRECTORY" -type d -empty -mtime +30 -delete
# Delete files older than 30 days
find "$DIRECTORY2" -type f -mtime +30 -delete
# Delete empty directories older than 30 days
find "$DIRECTORY2" -type d -empty -mtime +30 -delete

# Delete files older than 1 minute
#find "$DIRECTORY" -type f -mmin +1 -delete

# Delete empty directories older than 1 minute
#find "$DIRECTORY" -type d -empty -mmin +1 -delete
