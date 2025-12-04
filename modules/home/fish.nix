{
  programs.fish = {
    enable = true;

    shellAliases =
      let
        hostName = builtins.getEnv "HOSTNAME";
      in
      {
        media = "cd /mnt/media/";
        music = "cd /mnt/media/music";
        conf = "cd ~/dronevil";
        ".." = "cd ..";
        "..." = "cd ../..";
        "...." = "cd ../../..";
        dev = "nix develop --impure -c \"$SHELL\"";
        rebuild = "sudo nixos-rebuild switch --flake ~/dronevil#${hostName}";
      };
  };
}
