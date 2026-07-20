#!/usr/bin/env bash

set -e # stops the script when error
# for nixos - don't know if it works on normal Linux 
###########################################
# Create directories if they don't exist. #
###########################################

mkdir -p "$HOME/.local/bin"
mkdir -p "$HOME/.local/share/wayland-sessions"

####################################################
# Create the script that randomly starts a session #
####################################################

cat > "$HOME/.local/bin/random-session" << 'EOF'
#!/usr/bin/env bash

# Pick either 0 or 1.
R=$((RANDOM % 2))

case "$R" in

    # Launch Niri.
    0)
        notify-send "Random Session" "Launching Niri"
        exec niri
        ;;

    # Launch KDE Plasma.
    1)
        notify-send "Random Session" "Launching Plasma"
        exec startplasma-wayland
        ;;

esac
EOF

########################################
# Make the script executable.          #
########################################

chmod +x "$HOME/.local/bin/random-session"

####################################################
# Create the session file that SDDM will see.      #
####################################################

cat > "$HOME/.local/share/wayland-sessions/random.desktop" << EOF
[Desktop Entry]
Name=Random Session
Comment=Randomly starts a desktop
Exec=$HOME/.local/bin/random-session
Type=Application
DesktopNames=Random
EOF

echo
echo "Done!"
echo
echo "Log out and choose:"
echo
echo "    Random Session"
