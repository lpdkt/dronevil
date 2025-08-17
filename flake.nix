{
  description = "I don't know what I'm doing";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{ nixpkgs, home-manager, ... }:
    {
      nixosConfigurations = {
        noise = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          system = "x86_64-linux";
          modules = [
            ./hosts/noise
            ./modules
            home-manager.nixosModules.home-manager
            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                users.leroy = import ./modules/home;
                extraSpecialArgs = { inherit inputs; };
              };
            }
          ];
        };
        fade = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          system = "x86_64-linux";
          modules = [
            ./hosts/fade
            ./modules/bluetooth.nix
            ./modules/boot.nix
            ./modules/common.nix
            ./modules/dev.nix
            ./modules/fonts.nix
            ./modules/locale.nix
            ./modules/networking.nix
            ./modules/programs.nix
            ./modules/services.nix
            ./modules/ssh.nix
            home-manager.nixosModules.home-manager
            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                users.leroy = {
                  imports = [
                    ./modules/home/desktop
                    ./modules/home/neovim
                    ./modules/home/shell
                    ./modules/home/browser.nix
                    ./modules/home/common.nix
                    ./modules/home/direnv.nix
                    ./modules/home/email.nix
                    ./modules/home/git.nix
                    ./modules/home/gpg.nix
                    ./modules/home/imv.nix
                    ./modules/home/mpv.nix
                    ./modules/home/xdg.nix
                    ./modules/home/yazi.nix
                    ./modules/home/zathura.nix
                  ];
                };
                extraSpecialArgs = { inherit inputs; };
              };
            }
          ];
        };
      };
    };
}
