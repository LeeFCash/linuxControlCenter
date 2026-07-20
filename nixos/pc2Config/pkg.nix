# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	alacritty
	audacity
#	appimage-run
	unzip
	zip
#	netflix
#	vim
	tmux
	teams-for-linux
	video-downloader
	nodejs
	dmidecode
	(brave.override {
		commandLineArgs = "--password-store=basic";
	})
	(lutris.override {
		extraPkgs = pkgs: [
			pkgs.winetricks
			pkgs.wineWow64Packages.stagingFull
			pkgs.wineWow64Packages.waylandFull
			pkgs.wineWow64Packages.yabridge
		];
	})
	blueman
	blender
	browsh
	pavucontrol
	wget
	git
	godot
	fastfetch
	ffmpeg-full
	obs-studio
#	ollama
	discord
	spotify
	krita
	w3m
  ];
}
