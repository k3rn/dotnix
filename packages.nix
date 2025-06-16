{ config, pkgs, ... }:

{
environment.systemPackages = with pkgs; [
    grim
    slurp
    wl-clipboard
    mako
    tmux
    gvfs
    soteria
    git
    fzf
    pamixer
    networkmanagerapplet
    minikube
    docker
    apple-cursor
    gnome-tweaks
    htop
    virt-manager
    hyprlock
    tail-tray
    powertop
    vim
    hunspellDicts.pt_BR
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

