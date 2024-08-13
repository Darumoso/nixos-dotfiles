{
  description = "My nixos config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";

    };
  };

  outputs = { self, nixpkgs, home-manager, ... }: 
  let
    lib = nixpkgs.lib;
    systemSettings = {
      system = "x86_64-linux";
      hostname = "thinkpad";
    };

    userSettings = {
      username = "daruma";
    };

  in {
    nixosConfigurations = {
      ${systemSettings.hostname} = lib.nixosSystem {
        # inherit (systemSettings) system;
        specialArgs = { pkgs = import nixpkgs { system = "x86_64-linux"; config.allowUnfree = true; };};
        modules = [
          ./configuration.nix
        ];

      };
    };

    homeConfigurations = {
      ${userSettings.username} = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${systemSettings.system};
        modules = [
          ./home.nix
        ];

      };
    };
  };
}
