{ pkgs, ... }:
{
  services.swww.enable = true;
  home.packages = [
    (pkgs.writeShellScriptBin "setbg" ''
      swww img "~/dronevil/modules/home/desktop/wallpaper/nixflake.png"
    '')
  ];
}
