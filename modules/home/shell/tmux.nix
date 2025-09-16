{ pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    shell = "${pkgs.fish}/bin/fish";
    terminal = "foot";
    mouse = true;
    prefix = "C-a";
    baseIndex = 1;
    keyMode = "vi";
    escapeTime = 0;
    plugins = with pkgs.tmuxPlugins; [ vim-tmux-navigator ];

    extraConfig = ''
      set -g status on
      set -g renumber-windows on
      set -g status-justify absolute-centre
      set -g status-position top
      set -g status-style "bg=default"
      set -g window-status-current-style "fg=blue bold"
      set -g status-left "#S"
      set -g status-right ""
      set -g status-interval 5
      set -g destroy-unattached off
      bind-key -r f run-shell "tmux neww ~/bin/tmux-sessionizer"
      bind-key b set-option status
      bind -r k select-pane -U
      bind -r j select-pane -D
      bind -r h select-pane -L
      bind -r l select-pane -R
      bind '"' split-window -v -c "#{pane_current_path}"
      bind % split-window -h -c "#{pane_current_path}"
    '';
  };
}
