{ config, pkgs, ... }:

{
  home.username = "kern";
  home.homeDirectory = "/home/kern";
  home.stateVersion = "25.05";
  home.packages = with pkgs; [
    silver-searcher
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
    hypridle
    vagrant
    _1password-gui
    _1password-cli
    file
    silver-searcher
    p7zip-rar
    fzf
    grim
    slurp
    wl-clipboard
    git
    hyprlock
 ];
  programs.home-manager.enable = true;
  programs.bash = {
    enable = true;
    enableCompletion = true;
    initExtra = "source ~/Code/dotFiles/bashrc";
    shellOptions = [
      "nocaseglob"
      "autocd"
      "cdspell"
    ];
    historyControl = ["ignoredups"];
    historyIgnore = ["exit"];
  };
}
