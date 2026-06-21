# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	alacritty
	audacity
	unzip
	zip
#	netflix
#	vim
	tmux
	teams-for-linux
	video-downloader
	nodejs
	(neovim.override {
		extraPkgs = pkgs: [
			vimPlugins.jellybeans-nvim
			vimPlugins.jellybeans-vim
		];
	})
	(brave.override {
		commandLineArgs = "--password-store=basic";
	})
	(lutris.override {
		extraPkgs = pkgs: [
#			# evaluation warning: 'wineWowPackages' is deprecated as it is no longer preferred by upstream. Use wineWow64Packages instead
			pkgs.winetricks
			pkgs.wineWow64Packages.stagingFull
			pkgs.wineWow64Packages.waylandFull
			pkgs.wineWow64Packages.yabridge
		];
	})
	blueman
	blender
	pavucontrol
	wget
	git
	fastfetch
	obs-studio
	discord
	spotify
  ];
}
