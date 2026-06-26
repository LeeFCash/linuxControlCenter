# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, lib, pkgs, ... }:

{
#environment.systemPackages = with pkgs; [
#	nvidia-settings
#	mesa-demos
#	cudatoolkit
#];
#hardware.nvidia = {
#	modesetting.enable = true;
#	package = config.boot.kernelPackages.nvidiaPackages.beta; # .stable or .beta for newer drivers
#	open = true;# Enable open-source kernel modules
#	nvidiaSettings = true;
#};
#services.xserver.videoDrivers = [ "nvidia" ];
#---------
#services.xserver.videoDrivers = ["nvidia"];
#hardware.graphics.enable = true;
#hardware.nvidia.modesetting.enable = true;
#hardware.nvidia.nvidiaSettings = true;# Enable the Nvidia settings menu, # accessible via `nvidia-settings`.
#hardware.nvidia.open = true;
#hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;
}
