{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
  };

  xdg.configFile = {
    "nvim/init.lua".source = ./config/init.lua;
    "nvim/lua".source = ./config/lua;
  };

  # ls, fmt, linters
  home.packages = with pkgs; [
    gopls
    clang-tools
    lua-language-server
    nil
    markdownlint-cli
    deadnix
    stylua
    nixfmt-rfc-style
  ];
}
