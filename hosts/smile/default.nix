{
  imports = [
    ./hardware-configuration.nix
    ./mount.nix
    ./users.nix
  ];
  networking.hostName = "smile";
}
