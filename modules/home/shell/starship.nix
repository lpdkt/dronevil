{
  programs.starship = {
    enable = true;
    settings = {
      format =
        "$os"
        + "$username"
        + "$hostname"
        + "$singularity"
        + "$kubernetes"
        + "$directory"
        + "$git_branch"
        + "$git_commit"
        + "$git_state"
        + "$git_metrics"
        + "$git_status"
        + "$nix_shell"
        + "$docker_context"
        + "$line_break"
        + "$jobs"
        + "$container"
        + "$character";

      add_newline = true;

      os = {
        format = "[$symbol]($style) ";
        disabled = false;
        symbols = {
          NixOS = "󱄅 ";
        };
      };

      battery = {
        disabled = true;
      };

      nix_shell = {
        format = "[󱄅 $name]($style) ";
      };

      directory = {
        format = "($style)[$path]($style) [$read_only]($read_only_style)";
      };

      git_branch = {
        format = "[$symbol$branch]($style) ";
      };

      git_metrics = {
        disabled = false;
      };
    };
  };
}
