{
  imports = [
    ./hardware-configuration.nix
    ./mount.nix
    ./users.nix
  ];
  networking.hostName = "noise";
  boot.initrd.kernelModules = [ "amdgpu" ];
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}
