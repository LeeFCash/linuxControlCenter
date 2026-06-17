# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, ... }:

{
#	nix.settings.experimental-features = [ "nix-command" "flakes" ];
	programs.niri.enable = true;
	environment.systemPackages = with pkgs; [
		niri
		xwayland-satellite
		noctalia-shell
#		inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
		fuzzel
		mako
		foot
		grim
		slurp
		swaybg
		wayland
		waybar
	];
}
