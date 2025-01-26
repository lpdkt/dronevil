{ pkgs, ... }:
{
  home.packages = with pkgs; [
    mullvad-vpn
    bitwarden
    keepassxc
  ];
}
