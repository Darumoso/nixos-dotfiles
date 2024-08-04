{ pkgs, ... }: {
  programs.starship = {
    enable = true;

    # Configuration written to ~/.config/starship.toml
    settings = pkgs.lib.importTOML ./.starship.toml;
      # add_newline = false;

      # character = {
      #   success_symbol = "[➜](bold green)";
      #   error_symbol = "[➜](bold red)";
      # };

      # package.disabled = true;
  };
}
