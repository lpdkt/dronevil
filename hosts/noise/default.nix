{
  imports = [
    ./hardware-configuration.nix
    ./mount.nix
    ./users.nix
  ];
  networking.hostName = "noise";
  boot.initrd.kernelModules = [ "amdgpu" ];
}
