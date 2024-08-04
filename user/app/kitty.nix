{ pkgs, lib, ... }: {
  
  home.packages = with pkgs; [ kitty ];
  programs.kitty = {
    enable = true;
    settings = {
      font_size = 12;
      background_opacity = "0.90";
      confirm_os_window_close = 0;
      allow_remote_control = "yes";
      detect_urls = "yes";
      enable_audio_bell = "no";
    };
  };
}
