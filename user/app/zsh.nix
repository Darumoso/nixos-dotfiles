{ pkgs, config, ... }: {
  
  home.packages = with pkgs; [ zsh ];

  programs.zsh = {
    enable = true;
  };

  home.sessionPath = [
    "${config.home.homeDirectory}/.dotfiles/bin"
  ];

}
