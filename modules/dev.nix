{ pkgs, ... }:
{
  environment.variables = {
    GOPATH = "/home/leroy/.local/share/go";
  };

  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
  };

  programs.adb.enable = true;
  users.users.leroy.extraGroups = [ "adbusers" ];
  services.udev.packages = [ pkgs.android-udev-rules ];
}
