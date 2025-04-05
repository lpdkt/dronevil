{
  imports = [
    ./hardware-configuration.nix
    ./users.nix
  ];
  networking.hostName = "fade";
}
