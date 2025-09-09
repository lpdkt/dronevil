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
      shell = pkgs.fish;
      packages = with pkgs; [ ];
    };
  };
  services.getty = {
    autologinUser = "leroy";
    helpLine = "";
  };
}
