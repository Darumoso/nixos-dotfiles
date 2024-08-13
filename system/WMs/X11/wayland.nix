{ config, pkgs, ... }: {
  
  environment.systemPackages = with pkgs; [
    pavucontrol
    tigervnc
    #wayland
    (catppuccin-sddm.override {
      flavor = "mocha";
      fontSize = "12";
    })
    brightnessctl
  ];

  services.xserver = {
    enable = true;
    xkb = {
      layout = "us";
      variant = "intl";
    };
  };

  services.displayManager.sddm = {
    enable = true;
    theme = "catppuccin-mocha";
    package = pkgs.kdePackages.sddm;
    wayland.enable = false;
  };
}
