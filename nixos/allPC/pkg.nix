# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	mission-center
	libnotify
	xdg-utils#xdg-open
#	wlrctl#input output
#	wtype#input output
	tree
	pavucontrol
  ];
}
