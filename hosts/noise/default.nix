{ pkgs, lib, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./mount.nix
  ];

  networking.hostName = "noise";

  boot.initrd.kernelModules = [ "amdgpu" ];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  users.users.leroy = {
    isNormalUser = true;
    description = "leroy";
    home = "/home/leroy";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.fish;
    packages = with pkgs; [ ];
  };

  home-manager.users.leroy = {
    programs.hyprlock.enable = lib.mkForce false;
    services.hypridle.enable = lib.mkForce false;
  };
}
