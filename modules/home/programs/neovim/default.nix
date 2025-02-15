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
    golangci-lint
    clang-tools
    lua-language-server
    nixd
    deadnix
    nixfmt-rfc-style
    markdownlint-cli
    stylua
  ];
}
