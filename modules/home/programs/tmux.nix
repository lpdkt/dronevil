{ pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    mouse = true;
    prefix = "C-a";
    baseIndex = 1;
    keyMode = "vi";
    plugins = with pkgs.tmuxPlugins; [
      sensible
      vim-tmux-navigator
      {
        plugin = resurrect;
        extraConfig = "set -g @resurrect-strategy-nvim 'session'";
      }
      {
        plugin = tokyo-night-tmux;
        extraConfig = ''
          set -g @tokyo-night-tmux "on"
          set -g @tokyo-night-tmux_theme night
          set -g @tokyo-night-tmux_transparent 1
        '';
      }
    ];

    extraConfig = ''
      set-option -sa terminal-overrides ",foot*:Tc"
      set -g status on
      unbind C-b
      bind-key C-a send-prefix

      bind-key -r f run-shell "tmux neww ~/bin/tmux-sessionizer"
      bind r source-file ~/.config/tmux/tmux.conf
      bind p attach-session -c '#{pane_current_path}'
      bind -r ^ last-window

      bind -r k select-pane -U
      bind -r j select-pane -D
      bind -r h select-pane -L
      bind -r l select-pane -R

      bind '"' split-window -v -c '#{pane_current_path}'
      bind % split-window -h -c '#{pane_current_path}'

      bind-key b set-option status
    '';
  };
}
