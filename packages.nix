{ config, pkgs, ... }:

{
environment.systemPackages = with pkgs; [
    mako
    tmux
    gvfs
    soteria
    pamixer
    networkmanagerapplet
    minikube
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
    jellyfin-media-player
    intel-gpu-tools
];
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };
  programs.steam = {
   enable = true;
  };
  programs.thunar = {
    enable = true;
    plugins = with pkgs.xfce; [
      thunar-archive-plugin
      thunar-volman
    ];
  };
  fonts.packages = with pkgs; [
	nerd-fonts.blex-mono
  ];


}

