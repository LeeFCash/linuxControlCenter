# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
#
/*
programs.nix-ld = {
	enable = true;
	libraries = with pkgs; [
	# G
		glib
		gtk3
		gdk-pixbuf
	# L
		libpulseaudio
		libdrm
		libxkbcommon
		libx11
		libxext
		libxcursor
		libxcomposite
		libxrandr
		libxdamage
		libxtst
		libxfixes
		libxscrnsaver
	# X
	# M
		mesa
	# N
		nss
		nspr
	# A
		alsa-lib
		at-spi2-core
	# C
		cups
		cairo
	# D
		dbus
	# E
		expat
	# P
		pango
    ];
  };
  programs.gamemode.enable = true;
  hardware.graphics.enable = true;
  hardware.graphics.enable32Bit = true;
  hardware.graphics.extraPackages32 = with pkgs; [
#      mesa
#      alsa-plugins
#      vulkan-loader
#      vulkan-tools
      vulkan-validation-layers
      libva
      libvdpau-va-gl
];
  */

}
