{ pkgs, ... }:
{
  programs = {
    steam = {
      enable = true;
      extraCompatPackages = with pkgs; [ proton-ge-bin ];
    };
    java.enable = true;
  };
}
