# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, lib, pkgs, ... }:

{
  # Enable OpenTabletDriver
  hardware.opentabletdriver.enable = true;
#  hardware.opentabletdriver.daemon.enable = true;# not sure if wanted 

  # Required by OpenTabletDriver
#  hardware.uinput.enable = true;
#  boot.kernelModules = [ "uinput" ];
}
