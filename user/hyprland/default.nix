{ ... }: {
  
  imports = [
    ./config/hyprpaper.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    settings = {

      # MONITOR
      monitor = "eDP-1, 1920x1080, auto, auto, bitdepth,10";

      # EXEC
      #exec-once = "hyprpaper & waybar";
      # exec-once = hyprctl setcursor Catppuccin-Mocha-Dark-Cursors 32

      # hyprpaper
      #preload = "~/Downloads/colin-horn-fR9U2S31Exs-unsplash.jpg";
      #wallpaper = "eDP-1, ~/Downloads/colin-horn-fR9U2S31Exs-unsplash.jpg";
      #ipc = "off";

      # SET ENV'S
      env = import ./config/env.nix;


      # env = XCURSOR_THEME = Catppuccin-Mocha-Dark-Cursors
      # env = XDG_DATA_HOME, $HOME/.local/share
      # env = HYPRCURSOR_THEME, Catppuccin-Mocha-Dark-Cursors
      # env = HYPRCURSOR_SIZE, 26
      bind = import ./config/bind.nix;
      binde = import ./config/binde.nix;

      # INPUT
      input = {
          kb_layout = "us";
          kb_variant = "intl";
          repeat_rate = 40;
          repeat_delay = 400;

          follow_mouse = 2;

          touchpad = {
        natural_scroll = true;
        drag_lock = true;
          };

          sensitivity = 0;
      };

      # GESTURES
      gestures = {
          workspace_swipe = "on";
      };

      # MISC
      misc = {
          # force_default_wallpaper = -1
          disable_hyprland_logo = true;
          disable_splash_rendering = true;
          # force_default_wallpaper = 0;
          vfr = true;
          # disable_autoreload = true;
          # enable_hyprcursor = false;
      };

      # DWINDLE
      dwindle = {
          pseudotile = "yes"; # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
          force_split = 2;
          preserve_split = "yes";
      };

      # master = {
      #    new_is_master = true;
      # };

      "$menu" = "rofi -show drun";
      "$mainMod" = "SUPER";

      bindm = [
      # Move/resize windows with mainMod + LMB/RMB and dragging
      "bindm = $mainMod, mouse:272, movewindow"
      "bindm = $mainMod, mouse:273, resizewindow"
      ];

      # Reload config
      # bind = $mainMod SHIFT, R, exec, hyprctl reload


      # Special keys
      bindel = [
        ", XF86AudioRaiseVolume, exec, pactl set-sink-volume 0 +5%" 
        ", XF86AudioLowerVolume, exec, pactl set-sink-volume 0 -5%"
        ", XF86MonBrightnessUp, exec, brightnessctl set 10%+" 
      ];

      bindl = [
      ", XF86AudioMute, exec, pactl set-sink-mute @DEFAULT_SINK@ toggle"
      ", XF86MonBrightnessDown, exec, brightnessctl set 10%-"
      ];
      # bind =, Print, exec, grim -g "$(slurp -d)" - | wl-copy

    };


  };
}
