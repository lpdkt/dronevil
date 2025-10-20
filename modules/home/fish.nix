{
  programs.fish = {
    enable = true;

    functions = {
      fish_user_key_bindings = "fish_vi_key_bindings";
      fish_greeting = "";
    };

    shellAliases =
      let
        hostName = builtins.getEnv "HOSTNAME";
      in
      {
        vim = "nvim";
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
