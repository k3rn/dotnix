{ config, pkgs, ... }:

{
  home.username = "kern";
  home.homeDirectory = "/home/kern";
  home.stateVersion = "25.05";
  home.packages = with pkgs; [
    silver-searcher
    uv
	nix-search
	python315
	wget
	neofetch
	spotify
    rofi-power-menu
    mpv
    aria2
    firefox
    libreoffice
    rofi
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
    ghostty
    ansible
    kubernetes
    docker
    hugo
    gnumake
    hub
    gns3-gui
    delfin
  ];
  home.file = {
    ".gitconfig" = {
      source = config.lib.file.mkOutOfStoreSymlink "/home/kern/Code/dotFiles/gitconfig";
    };
    ".config/rofi/config.rasi" = {
      source = config.lib.file.mkOutOfStoreSymlink "/home/kern/Code/dotFiles/rofi";
    };
    ".config/sway" = {
      source = config.lib.file.mkOutOfStoreSymlink "/home/kern/Code/dotFiles/sway";
      recursive = true;
    };
    ".config/ghostty/config" = {
      source = config.lib.file.mkOutOfStoreSymlink "/home/kern/Code/dotFiles/ghostty";
      recursive = true;
    };
    ".config/hypr" = {
      source = config.lib.file.mkOutOfStoreSymlink "/home/kern/Code/dotFiles/hypr";
      recursive = true;
    };
  };
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
