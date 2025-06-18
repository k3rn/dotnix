  # Define a user account. Don't forget to set a password with ‘passwd’.
{ config, pkgs, ... }:
{
  users.users.kern = {
    isNormalUser = true;
    description = "kern";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" "docker"];
    packages = with pkgs; [
	    ];
  };
}
