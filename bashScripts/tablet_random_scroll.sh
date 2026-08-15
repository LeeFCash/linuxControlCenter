#!/usr/bin/env bash

R=$((RANDOM % 2))

if [[ "$R" -eq 0 ]]; then
#    dotool key Page_Up
	wtype -P Page_Up && sleep 0.05 && wtype -p Page_Up
else
#    dotool key Page_Down
	wtype -P Page_Down && sleep 0.05 && wtype -p Page_Down
fi
