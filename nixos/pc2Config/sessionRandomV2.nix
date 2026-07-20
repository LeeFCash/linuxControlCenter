{ pkgs, ... }:

let
  # Script that chooses a session
  random-session = pkgs.writeShellScriptBin "random-session" ''
    #!${pkgs.bash}/bin/bash

    case $((RANDOM % 2)) in
      0)
        exec ${pkgs.niri}/bin/niri
        ;;
      1)
        exec ${pkgs.kdePackages.plasma-workspace}/bin/startplasma-wayland
        ;;
    esac
  '';

  # Package containing a Wayland session
  random-session-desktop = pkgs.runCommand "random-session-desktop" {} ''
    mkdir -p $out/share/wayland-sessions

    cat > $out/share/wayland-sessions/random.desktop <<EOF
[Desktop Entry]
Name=Random Session
Comment=Randomly starts Niri or KDE Plasma
Exec=${random-session}/bin/random-session
Type=Application
DesktopNames=Random
EOF
  '';

in
{
#services.displayManager.sddm.enable = true;
#services.displayManager.sddm.wayland.enable = true;
  environment.systemPackages = [
    random-session
#    random-session-desktop
  ];
  services.displayManager.sessionPackages = [
    random-session-desktop
  ];
}
