  # Define a user account. Don't forget to set a password with ‘passwd’.
{ config, lib, pkgs, ... }:
{
  users.users.kern = {
    isNormalUser = true;
    description = "kern";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" "dockerd"];
    packages = with pkgs; [
	    ];
      };
  systemd.user.services.docker = {
    enable = true;
  };
}
