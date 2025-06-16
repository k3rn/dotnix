  # Define a user account. Don't forget to set a password with ‘passwd’.
{ config, pkgs, ... }:
{
  users.users.kern = {
    isNormalUser = true;
    description = "kern";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" "docker"];
    packages = with pkgs; [
	uv
	nix-search
	python3Full
	wget
	neofetch
	spotify
	coolreader
    rofi-power-menu
    discord
    mpv
    aria2
    brave
    firefox
    libreoffice
    rofi-wayland
    chromium
    thunderbird
    feh
    neofetch
    gh
    ];
  };
}
