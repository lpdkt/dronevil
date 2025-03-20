{ pkgs, ... }:
{
  users = {
    users.leroy = {
      isNormalUser = true;
      description = "leroy";
      home = "/home/leroy";
      extraGroups = [
        "networkmanager"
        "wheel"
        "docker"
      ];
      shell = pkgs.zsh;
      packages = with pkgs; [ ];
    };
  };
}
