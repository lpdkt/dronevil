{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
  };

  xdg.configFile = {
    "nvim/init.lua".source = ./init.lua;
    "nvim/lua".source = ./lua;
  };

  home.packages = with pkgs; [
    nixd
    deadnix
    nixfmt-rfc-style
    lua-language-server
    stylua
  ];
}
