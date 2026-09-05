{ config, pkgs, ... }:

let
  random-session = pkgs.writeShellScript "random-session" ''
    # The first XDG_DATA_DIRS entry is NixOS's generated
    # desktop/session directory.
    desktops_dir="''${XDG_DATA_DIRS%%:*}"
    sessions_dir="$desktops_dir/wayland-sessions"

    if [ ! -d "$sessions_dir" ]; then
      echo "ERROR: Could not find Wayland session directory:"
      echo "       $sessions_dir"
      exit 1
    fi

    sessions=()

    for session in "$sessions_dir"/*.desktop; do
      [ -f "$session" ] || continue

      name="$(basename "$session")"

      # Don't allow this session to randomly select itself.
      if [ "$name" != "random-session.desktop" ] || [ "$name" != "hyprland-uwsm.desktop" ]; then
        sessions+=("$session")
      fi
    done

    if [ "''${#sessions[@]}" -eq 0 ]; then
      echo "ERROR: No other Wayland sessions were found."
      exit 1
    fi

    # Pick a random session.
    index=$(( RANDOM % ''${#sessions[@]} ))
    chosen="''${sessions[$index]}"

    echo "Random Desktop:"
    echo "  Session directory: $sessions_dir"
    echo "  Selected: $(basename "$chosen")"

    # Get the Exec= line from the selected desktop entry.
    exec_command="$(
      sed -n 's/^Exec=//p' "$chosen" | head -n 1
    )"

    if [ -z "$exec_command" ]; then
      echo "ERROR: No Exec= entry found in:"
      echo "       $chosen"
      exit 1
    fi

    echo "  Exec: $exec_command"

    # SDDM's Wayland session wrapper uses the user's login shell
    # to execute the session command. Do the same thing here.
    case "$SHELL" in
      */bash|*/zsh)
        exec "$SHELL" --login -c 'exec "$@"' - $exec_command
        ;;

      */fish)
        exec "$SHELL" --login -c 'exec $argv' $exec_command
        ;;

      *)
        exec $exec_command
        ;;
    esac
  '';

  random-session-package = pkgs.writeTextFile {
    name = "random-session";

    destination = "/share/wayland-sessions/random-session.desktop";

    text = ''
      [Desktop Entry]
      Type=Application
      Name=Random Desktop
      Comment=Randomly select an installed Wayland desktop session
      Exec=${random-session}
    '';

    passthru.providedSessions = [ "random-session" ];
  };
in
{
  services.displayManager.sddm.enable = true;

  services.displayManager.sessionPackages = [
    random-session-package
  ];
}
