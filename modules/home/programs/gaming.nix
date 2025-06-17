{ pkgs, ... }:
{
  home.packages = with pkgs; [
    prismlauncher
    (pkgs.callPackage ./extra/olympus/package.nix { })
    protonplus
    lutris
  ];
}
