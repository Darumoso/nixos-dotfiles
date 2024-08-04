{ pkgs, ... }: {

  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "off";
      splash = false;

      preload = [
        "~/.dotfiles/user/wallpapers/aerial-view.jpg"
      ];

      wallpaper = [
        "eDP-1,~/.dotfiles/user/wallpapers/aerial-view.jpg"
      ];
    };
  };
}
