# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, ... }:

{
	environment.systemPackages = with pkgs; [
		noctalia-shell
		dms-shell
	];
	programs.dms-shell.enable = true;
	programs.dms-shell.enableAudioWavelength = true;
	programs.dms-shell.enableCalendarEvents = true;
	programs.dms-shell.enableClipboardPaste = true;
	programs.dms-shell.enableDynamicTheming = true;
	programs.dms-shell.enableSystemMonitoring = true;
#	programs.dms-shell.enableVPN = true;
#	programs.dms-shell.plugins
#	programs.dms-shell.systemd.target
	programs.dms-shell.systemd.enable = false;
	programs.dms-shell.systemd.restartIfChanged = false;
}
