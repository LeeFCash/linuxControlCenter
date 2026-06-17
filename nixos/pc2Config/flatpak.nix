# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
	services.flatpak.enable = true;
#	# commend - flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#	# commend up to add remote 
#	# to check if worked command - flatpak remotes (some info like name and options flathub system )
#	# use by command - flatpak install "name of what you want" - it will give you options
}
