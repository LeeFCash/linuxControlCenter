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
		enable = true;
		allowReboot = false;
#		dates = "minutely";
		dates = "hourly";
#		operation = "boot";
#		operation = "switch";
		channel = "https://nixos.org/channels/nixos-unstable";
	};
};

environment.shellAliases = {
  rebuild = "sudo nixos-rebuild switch";
  lsa = "ls -a";
  lsal = "ls -al";
  snv = "sudo nvim";
  nv = "nvim";
  srmr = "sudo rm -r";
  rmr = "rm -r";
  scpr = "sudo cp -r";
  cpr = "cp -r";
  syinfo = "cat /home/leecash/linuxControlCenter/nixos/allPC/system.nix";
  shortcuts = "cat /home/leecash/linuxControlCenter/nixos/allPC/system.nix";
  apr = "appimage-run";
  nixos = "cd /home/leecash/linuxControlCenter/nixos";
  pc1pkg = "snv /home/leecash/linuxControlCenter/nixos/pc1Config/pkg.nix";
  pc2pkg = "snv /home/leecash/linuxControlCenter/nixos/pc2Config/pkg.nix";
  lcc = "cd /home/leecash/linuxControlCenter";
};

hardware.bluetooth = {
  enable = true;
  powerOnBoot = true; # Automatically starts the service on boot
};   

boot.tmp.cleanOnBoot = true;
fonts.packages = with pkgs; [
  nerd-fonts.fira-code
  nerd-fonts.droid-sans-mono
  nerd-fonts.noto
  ];
}
