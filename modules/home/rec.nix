{ pkgs, ... }:
{
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [ obs-vaapi ];
  };

  home.packages = with pkgs; [
    audacity
    kdePackages.kdenlive
  ];
}
