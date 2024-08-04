{ pkgs, ... }: {

  imports = [ ./wayland.nix ];
  environment.systemPackages = with pkgs; [ xdg-desktop-portal-hyprland ];
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    portalPackage = pkgs.xdg-desktop-portal-hyprland;
  };
}
