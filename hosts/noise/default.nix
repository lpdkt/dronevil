{
  inputs,
  pkgs,
  lib,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
    ./mount.nix
    ./../../modules

    inputs.home-manager.nixosModules.home-manager
  ];

  networking.hostName = "noise";

  boot.initrd.kernelModules = [ "amdgpu" ];

  hardware.graphics.enable = true;

  users.users.leroy = {
    isNormalUser = true;
    description = "leroy";
    home = "/home/leroy";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.fish;
  };

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.leroy = {
      imports = [ ./../../modules/home ];
      programs.hyprlock.enable = lib.mkForce false;
      services.hypridle.enable = lib.mkForce false;
    };
    extraSpecialArgs = { inherit inputs; };
  };
}
