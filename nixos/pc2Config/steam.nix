# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
	programs = {
		steam = {
			enable = true;
			remotePlay.openFirewall = true;
			dedicatedServer.openFirewall = true;
			localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
			gamescopeSession.enable = true; # Enables integration with Gamescope, a compositing manager developed by Valve (used in Steam Deck’s gaming mode).Gamescope provides features like resolution scaling, frame rate limiting, and a streamlined gaming environment. Enabling this creates a session script that launches Steam with Gamescope, mimicking the Steam Deck’s “Gaming Mode” experience, useful for big-picture mode or gaming-focused setups.
		};
	};
}
