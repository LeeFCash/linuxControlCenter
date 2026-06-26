# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
#  environment.systemPackages = with pkgs; [
#	appimage-run
#  ];
programs.appimage = {
  enable = true;
  binfmt = true;
};
#programs.appimage.package = pkgs.appimage-run.override 
#{
#  extraPkgs = pkgs: 
#  [
#    pkgs.icu
#    pkgs.libxcrypt-legacy
#    pkgs.python312
#    pkgs.python312Packages.torch
#  ]; 
#};
}
