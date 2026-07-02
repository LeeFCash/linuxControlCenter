# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
environment.systemPackages = with pkgs; [
	docker
	boxbuddy
	distrobox
	podman
  ];
#
virtualisation.docker.enable = false;
#virtualisation.docker.rootless.enable = true;
#virtualisation.docker.rootless.setSocketVariable = true;
virtualisation.podman.enable = true;
virtualisation.podman.dockerCompat = true;
virtualisation.podman.defaultNetwork.settings.dns_enabled = true;
# Optional: Add your user to the "docker" group to run docker without sudo
users.users.leecash.extraGroups = [ "docker" "podman" ];
users.extraGroups.docker.members = [ "leecash" ];
}
