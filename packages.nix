{ config, pkgs, ... }:

{
environment.systemPackages = with pkgs; [
    mako
    tmux
    gvfs
    soteria
    pamixer
    networkmanagerapplet
    apple-cursor
    gnome-tweaks
    htop
    virt-manager
    hyprlock
    tail-tray
    powertop
    vim
    hunspellDicts.pt_BR
    xdg-desktop-portal-hyprland
    docker
    unzip
    nmap
    inetutils
    intel-gpu-tools
    passt
    usbutils
    thunar
    thunar-archive-plugin
    thunar-volman
    clinfo
];
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };
  fonts.packages = with pkgs; [
	nerd-fonts.blex-mono
  ];

}

