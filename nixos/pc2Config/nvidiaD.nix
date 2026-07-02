# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, lib, pkgs, ... }:

{
environment.systemPackages = with pkgs; [
#	nvidia-settings
	mesa-demos
	vulkan-tools
	gpu-viewer#Front-end to glxinfo, vulkaninfo, clinfo and es2_info
#	cudatoolkit
];
services.xserver.videoDrivers = ["nvidia"];
hardware.graphics.enable = true;
hardware.nvidia.modesetting.enable = true;
hardware.nvidia.nvidiaSettings = true;# Enable the Nvidia settings menu, # accessible via `nvidia-settings`.
hardware.nvidia.open = true;
hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.beta;
environment.sessionVariables = {
  GBM_BACKEND = "nvidia-drm";
  __GLX_VENDOR_LIBRARY_NAME = "nvidia";
  LIBVA_DRIVER_NAME = "nvidia";
  _JAVA_AWT_WM_NONREPARENTING = "1";  # Java Swing
  NIXOS_OZONE_WL = "1";
};
}
