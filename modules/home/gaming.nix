{ pkgs, ... }:
{
  home.packages = with pkgs; [
    prismlauncher
    olympus
    protonplus
    lutris
    mgba
  ];
}
