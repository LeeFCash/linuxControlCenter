#!/usr/bin/env bash

# "&> /dev/null" redirects BOTH standard output (stdout) and error output (stderr)
# into /dev/null, which is a special file that discards everything (like a black hole).
# This makes the command run silently with no visible output.
# It is commonly used when we only care whether a command succeeds or fails
# (its exit status), not what it prints to the terminal.

set -e # stops the script when error
	items=(
		"Gmail"
		"outlookMail"
		"webFluxer"
		"textnow"
		"discord"
		"youtubeSubscriptions"
		"steam"
		"chattanoogastateWebsite"
		"blueSky"
		"flathub"
		"messenger"
		"brave"
		"rumbleS"
		"Nothing..."
	)
#	index=$((RANDOM % ${#items[@]}))
#	choice="${items[$index]}"
	while [[ "$pick" != "y" ]]
	do
		index=$((RANDOM % ${#items[@]}))
		choice="${items[$index]}"
		echo " '$choice' is this what you want to open?(y/n)"
		read -r pick
		if [[ "$choice" != "Nothing..." ]]; then
			unset "items[$index]"
			items=("${items[@]}")
		fi
	done
	case "$choice" in
		"Gmail")
			xdg-open https://mail.google.com/mail/u/0/#inbox
        	;;
		"outlookMail")
			xdg-open https://outlook.cloud.microsoft/mail/
        	;;
		"webFluxer")
			xdg-open https://web.fluxer.app/channels/@me
        	;;
		"textnow")
			xdg-open https://www.textnow.com/messaging
        	;;
		"discord")
			discord
        	;;
		"youtubeSubscriptions")
			xdg-open https://www.youtube.com/feed/subscriptions
        	;;
		"steam")
			steam
        	;;
		"chattanoogastateWebsite")
			xdg-open https://www.chattanoogastate.edu/
        	;;
		"blueSky")
			xdg-open https://bsky.app/profile/lonelyleecash.bsky.social
        	;;
		"flathub")
			xdg-open https://flathub.org/en
        	;;
		"messenger")
			xdg-open https://www.messenger.com/new
        	;;
		"brave")
			brave --password-store=basic
        	;;
		"rumbleS")
			xdg-open https://rumble.com/subscriptions
        	;;
	esac
