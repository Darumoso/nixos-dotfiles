{ pkgs, config, ... }: {
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    extraConfig = {
      show-icons = true;
      display-drun = "󱄅";
      drun-display-format = "{name}";
      font = "FiraCode Nerd Font 10";
      #icon-theme = Papirus-Dark";
    };

    theme = let
      inherit (config.lib.formats.rasi) mkLiteral;
    in {
      "*" = {
        main-bg = mkLiteral "#11111be6";
        main-fg = mkLiteral "#cdd6f4ff";
        main-br = mkLiteral "#cba6f7ff";
        main-ex = mkLiteral "#f5e0dcff";
        select-bg = mkLiteral "#b4befeff";
        select-fg = mkLiteral "#11111bff";
        separatorcolor = mkLiteral "transparent";
        border-color = mkLiteral "transparent";
      };

      "window" = {
        height = mkLiteral "590px";
        width = mkLiteral "1140px";
        transparency = "real";
        fullscreen = mkLiteral "false";
        enabled = mkLiteral "true";
        cursor = "default";
        spacing = mkLiteral "0px";
        padding = mkLiteral "0px";
        border = mkLiteral "2px";
        border-radius = mkLiteral "40px";
        border-color = mkLiteral "@main-br";
        background-color = mkLiteral "transparent";
      };

      "mainbox" = {
        enabled = true;
        spacing = mkLiteral "0px";
        orientation = mkLiteral "horizontal";
        children = mkLiteral "[inputbar,listbox]";
        background-color = mkLiteral "transparent";
        background-image = mkLiteral "url(\"~/.dotfiles/user/wallpapers/aerial-view.jpg\", height)";
      };

      "inputbar" = {
        enabled = true;
        width = mkLiteral "640px";
        children = mkLiteral "[mode-switcher,entry]";
        background-color = mkLiteral "transparent";
# background-image:            url("~/.config/swww/wall.rofi", height);
      };

      "entry" = {
        enabled = false;
      };

      "mode-switcher" = {
        orientation = mkLiteral "vertical";
        enabled = true;
        width = mkLiteral "68px";
        padding = mkLiteral "160px 10px 160px 10px";
        spacing = mkLiteral "25px";
        background-color = mkLiteral "transparent";
      };

      "button" = {
        cursor = mkLiteral "pointer";
        vertical-align = mkLiteral "0.50";
        horizontal-align = mkLiteral "0.45";
        border-radius = mkLiteral "50px";
        background-color = mkLiteral "@main-bg";
        text-color = mkLiteral "@main-fg";
      };

      "button selected" = {
        background-color = mkLiteral "@main-fg";
        text-color = mkLiteral "@main-bg";
      };

      "listbox" = {
        spacing = mkLiteral "10px";
        padding = mkLiteral "30px";
        children = mkLiteral "[listview]";
        background-color = mkLiteral "@main-bg";
      };

      "listview" = {
        enabled = true;
        columns = mkLiteral "1";
        cycle = mkLiteral "true";
        dynamic = mkLiteral "true";
        scrollbar = mkLiteral "false";
        layout = mkLiteral "vertical";
        reverse = mkLiteral "false";
        fixed-height = mkLiteral "true";
        fixed-columns = mkLiteral "true";
        cursor = "default";
        background-color = mkLiteral "transparent";
        text-color = mkLiteral "@main-fg";
      };

      "element" = {
        enabled = true;
        spacing = mkLiteral "30px";
        padding = mkLiteral "8px";
        border-radius = mkLiteral "20px";
        cursor = mkLiteral "pointer";
        background-color = mkLiteral "transparent";
        text-color = mkLiteral "@main-fg";
      };

#	@media(max-aspect-ratio: 1.8) {
#	    element {
#		orientation:             vertical;
#	    }
#	}

      "element selected.normal" = {
        background-color = mkLiteral "@select-bg";
        text-color = mkLiteral "@select-fg";
      };

      "element-icon" = {
        size = mkLiteral "48px";
        cursor = mkLiteral "inherit";
        background-color = mkLiteral "transparent";
        text-color = mkLiteral "inherit";
      };
      "element-text" = {
        vertical-align = mkLiteral "0.5";
        horizontal-align = mkLiteral "0.0";
        cursor = mkLiteral "inherit";
        background-color = mkLiteral "transparent";
        text-color = mkLiteral "inherit";
      };
    };
  };
}
