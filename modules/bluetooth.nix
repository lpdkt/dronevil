{ pkgs, ... }:
{
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
    package = pkgs.bluez5;
    settings.General = {
      Experimental = true;
      FastConnectable = true;
    };
  };
}
