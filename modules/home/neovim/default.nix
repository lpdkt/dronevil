{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
  };

  xdg.configFile = {
    "nvim/init.lua".source = ./config/init.lua;
    "nvim/lua".source = ./config/lua;
  };

  home.packages = with pkgs; [
    nixd
    deadnix
    nixfmt
    lua-language-server
    stylua
  ];
}
