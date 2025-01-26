{ inputs, pkgs, ... }:

{
  imports = [
    inputs.spicetify-nix.homeManagerModules.default
  ];

  programs = {
    spicetify = {
      enable = true;
      theme = {
        name = "text";
        src = ./extra/spicetify-themes/text;
      };
      colorScheme = "TokyoNight";
    };
  };

  home.packages = with pkgs; [
    deadbeef
    nicotine-plus
    puddletag
  ];
}
