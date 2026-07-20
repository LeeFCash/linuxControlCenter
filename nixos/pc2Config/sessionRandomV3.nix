{ pkgs, lib, ... }:

let
  randomSession = pkgs.stdenvNoCC.mkDerivation {
    pname = "random-session";
    version = "1.0";

    dontUnpack = true;

    installPhase = ''
      #
      # Create the executable
      #
      mkdir -p $out/bin

      cat > $out/bin/random-session <<EOF
#!/usr/bin/env bash

case \$((RANDOM % 2)) in
    0)
        exec ${lib.getExe pkgs.niri}
        ;;

    1)
        exec ${pkgs.kdePackages.plasma-workspace}/bin/startplasma-wayland
        ;;
esac
EOF

      chmod +x $out/bin/random-session

      #
      # Create the Wayland session
      #
      mkdir -p $out/share/wayland-sessions

      cat > $out/share/wayland-sessions/random.desktop <<EOF
[Desktop Entry]
Name=Random Session
Comment=Randomly launch Niri or Plasma
Exec=random-session
Type=Application
DesktopNames=Random
EOF
    '';
  };
in
{
#Exec=$out/bin/random-session
  environment.systemPackages = [
    randomSession
  ];
}
