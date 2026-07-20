# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
#
environment.etc."wayland-sessions/random.desktop".text = ''
  [Desktop Entry]
  Name=Random Session
  Comment=Randomly starts a desktop environment
  Exec=random-session
  Type=Application
  DesktopNames=Random
'';
#  Exec=/home/leecash/.local/bin/random-session
environment.systemPackages = [
  (pkgs.writeShellScriptBin "random-session" ''
    #!/usr/bin/env bash

    R=$((RANDOM % 2))

    case "$R" in
      0) exec niri ;;
      1) exec startplasma-wayland ;;
    esac
  '')
];
}
