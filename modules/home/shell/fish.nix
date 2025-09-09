{
  programs.fish = {
    enable = true;
    functions = {
      fish_user_key_bindings = "fish_vi_key_bindings";
      fish_greeting = "";
    };
    loginShellInit = ''
      fish_add_path $HOME/bin
      fish_add_path $HOME/.local/share/go/bin
    '';
    shellAliases = {
      vim = "nvim";
      v = "nvim";
      nv = "nvim";
      q = "exit";
      media = "cd /mnt/media/";
      music = "cd /mnt/media/music";
      conf = "cd ~/.config/dronevil";
      ".." = "cd ..";
      "..." = "cd ../..";
      "...." = "cd ../../..";
    };
  };
}
