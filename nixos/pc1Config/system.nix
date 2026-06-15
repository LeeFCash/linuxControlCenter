# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
nix = {
	settings = {
		auto-optimise-store = true;
		experimental-features = [ "nix-command" ];
	};
	gc = {
		automatic = true;
		dates = "hourly";
		options = "--delete-older-than 7d";
	};
};

system = {
	autoUpgrade = {
		enable = false;
		allowReboot = false;
		channel = "https://nixos.org/channels/nixos-unstable";
	};
};

hardware.bluetooth = {
  enable = true;
  powerOnBoot = true; # Automatically starts the service on boot
};   
}
