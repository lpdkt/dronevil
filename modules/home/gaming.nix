{ pkgs, ... }:
{
  home.packages = with pkgs; [
    prismlauncher
    olympus
    protonplus
    lutris
    (retroarch.withCores ( cores: with cores; [
        mgba
        citra
        desmume
        pcsx2
    ]))
  ];
}
