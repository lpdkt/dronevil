{ pkgs, ... }:

{
  home.packages = with pkgs; [
    spotify
    deadbeef
    nicotine-plus
    puddletag
  ];
}
