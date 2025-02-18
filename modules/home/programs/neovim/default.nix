{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
  };

  xdg.configFile = {
    "nvim/init.lua".source = ./config/init.lua;
    "nvim/lua".source = ./config/lua;
  };

  # ls, fmt, linters only for config
  home.packages = with pkgs; [
    nixd
    deadnix
    nixfmt-rfc-style
    lua-language-server
    stylua
  ];
}
