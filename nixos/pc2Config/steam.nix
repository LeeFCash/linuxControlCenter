# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
environment.systemPackages = with pkgs; [
	gamemode
	mangohud
	gamescope
#	goverlay
	vulkan-tools
	vulkan-volk
	vulkan-loader
	vulkan-headers
	protonup-qt
	protonup-ng
	protontricks
	bottles
	heroic
#	wineWowPackages.stable# no longer used
#	wineWow64Packages
];
programs.steam.enable = true;
programs.steam.remotePlay.openFirewall = true;
programs.steam.dedicatedServer.openFirewall = true;
programs.steam.localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
#programs.gamescope.enable = true;#test
#programs.gamemode.enable = true;
#hardware.steam-hardware.enable = true;
}
