{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gcc
    go
    python3
    rustup
    lua
    zig
    gh
    lazygit
    docker
    nodejs
    gnumake
  ];
}
