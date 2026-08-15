# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./pkg.nix
      ./niri.nix
#      ./steam.nix
      ./shellStuff.nix
      ./tablet.nix
#      ./sessionRandomV3.nix# trying to make random session but I seem to be doing something wrong I don't know
#      ./virtualbox.nix
#      ./hyprland.nix
#      ./nvidiaD.nix
#      ./appImages.nix
#      ./wine.nix
	./../allPC/imports.nix
	./test.nix
    ];
}
