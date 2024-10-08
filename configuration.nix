{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./system/hardware-configuration.nix
      ./system/WMs/wayland/wayland.nix
      ./system/WMs/wayland/hyprland
      #./system/WMs/X11/qtile.nix
      #./system/WMs/X11/wayland.nix
      ./system/apps
      ./system/extras
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true; # Use the systemd-boot EFI boot loader
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "thinkpad"; # Define your hostname.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };

  users.defaultUserShell = pkgs.zsh;
  programs.zsh.enable = true;

  programs.noisetorch.enable = true; # Mute background noise

  hardware.logitech.wireless.enable = true; # Enabling wireles logitech support

  environment.sessionVariables = { NIXOS_OZONE_WL = "1"; };

  # Set your time zone.
  time.timeZone = "America/Mexico_City";

  i18n.defaultLocale = "en_US.UTF-8";

  services.libinput.enable = true; # Enable touchpad support
  services.ratbagd.enable = true; # For logitech controls

  users.users.daruma = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ]; # Enable ‘sudo’ for the user.
  };

  environment.systemPackages = with pkgs; [
    vesktop
    obsidian
    neovim
    tailscale
  ];
	
  services.tailscale.enable = true;

  system.stateVersion = "24.05";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  services.syncthing = {
    enable = true;
    user = "daruma";
    dataDir = "/home/daruma/Personal/notas/";
    configDir = "/home/daruma/.config/syncthing";
  };

  services.xserver = {
    #exportConfiguration = true;
    xkb.layout = "us";
    xkb.variant = "dvorak,";
    xkb.options = "grp:win_space_toggle";
  };
    
    console.useXkbConfig = true; 
}

