{ config, pkgs, ... }: {
  
  imports = [ ./pipewire.nix
              ./fonts.nix
            ];

  environment.systemPackages = with pkgs; [
    pavucontrol
    tigervnc

    wayland
    (catppuccin-sddm.override {
      flavor = "mocha";
      #font = "FiraCode Mono Nerd Font";
      fontSize = "12";
      #clockEnabled = true;
    })
    brightnessctl
  ];

  #services.xserver = {
  #  enable = true;
  #  xkb = {
  #    layout = "us";
  #    variant = "intl";
  #  };
  #};

  services.displayManager.sddm = {
    enable = true;
    theme = "catppuccin-mocha";
    package = pkgs.kdePackages.sddm;
    wayland.enable = true;
  };



}
