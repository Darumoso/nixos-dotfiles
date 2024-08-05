{ config, pkgs, ... }:

{
  home.username = "daruma";
  home.homeDirectory = "/home/daruma";

  imports = [
    ./user/app
    ./user/hyprland
    ./user/lang
  ];

  home.stateVersion = "24.05"; # Please read the comment before changing.

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  xdg = {
    enable = true;
    cacheHome = "${config.home.homeDirectory}/.local/.cache";

  };
}
