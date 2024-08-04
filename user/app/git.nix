{ config, pkgs, ... }: {
  home.packages = [ pkgs.git ];
  programs.git = {
    enable = true;
    userName = "Daruma";
    userEmail = "hectoryoramquiroz@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      safe.directory = "~/.dotfiles";
    };
  };

}
