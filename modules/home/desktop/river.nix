{ pkgs, lib, ... }:
let
  screenshot = pkgs.writeShellApplication {
    name = "screenshot";
    runtimeInputs = with pkgs; [
      grim
      slurp
      wl-clipboard
    ];
    text = ''
      dir="$HOME/pictures/sc"
      filename="screenshot-$(date +'%Y-%m-%d_%H-%M-%S').png"

      if [ "$1" = "select" ]; then 
        grim -g "$(slurp)" - | tee "$dir/$filename" | wl-copy
      else 
        grim - | tee "$dir/$filename" | wl-copy
      fi
    '';
  };
in
{
  wayland.systemd.target = "river-session.target";

  home.packages = [ screenshot ];

  wayland.windowManager.river = {
    enable = true;

    systemd.variables = [ "--all" ];
    extraSessionVariables = {
      XDG_CURRENT_DESKTOP = "river";
      XDG_SESSION_DESKTOP = "river";
      QT_WAYLAND_DISABLE_WINDOWDECORATION = 1;
    };

    settings =
      with lib;
      let
        terminal = "foot";
        browser = "librewolf";
        numTags = 9;
        listToAttrSet = list: listToAttrs (imap (i: nameValuePair (toString i)) list);
        tagMap = foldl' (x: _: x ++ [ (last x * 2) ]) [ 1 ] (genList (_: [ 1 ]) (numTags - 1));
        tagMapStrSet = listToAttrSet (map toString tagMap);
      in
      {
        default-layout = "bsp-layout";
        spawn = [
          "setbg"
          "'${lib.getExe pkgs.river-bsp-layout} --inner-gap 2 --outer-gap 5 --split-perc 0.5'"
        ];

        keyboard-layout = "-options caps:escape eu";

        border-width = 2;
        border-color-focused = "0x7AA2f7";
        border-color-unfocused = "0x414868";
        background-color = "0x24283B";

        focus-follows-cursor = "always";
        set-repeat = "30 250";

        map = {
          normal =
            (concatMapAttrs (index: tag: {
              "Super ${index}" = "set-focused-tags ${tag}";
              "Super+Shift ${index}" = "set-view-tags ${tag}";
              "Super+Control ${index}" = "toggle-focused-tags ${tag}";
            }) tagMapStrSet)
            // {
              "Super Return" = "spawn ${terminal}";
              "Super Q" = "close";
              "Super F" = "spawn ${browser}";
              "Super D" = "spawn fuzzel";
              "Super E" = "spawn thunar";
              "Super+Shift E" = "spawn '${terminal} -e yazi'";
              "Super P" = "spawn pavucontrol";
              "Super Period" = "spawn 'pamixer --default-source -t'"; # mute mic
              "Super+Shift Period" = "spawn 'pamixer -t'"; # mute sound
              "Super F7" = "spawn 'playerctl previous'";
              "Super F8" = "spawn 'playerctl next'";
              "Super F9" = "spawn 'playerctl play-pause'";
              "Super F10" = "spawn 'playerctl volume 0.05-'";
              "Super F11" = "spawn 'playerctl volume 0.05+'";
              "Super F12" = "spawn 'playerctl stop'";
              "Super M" = "spawn '${terminal} -e rmpc'";
              "Super Y" = "spawn ytmpv";
              "Super+Shift Y" = "spawn ytdl";
              "Super+Alt Y" = "spawn ytmpvsearch";
              "Super+Shift Comma" = "spawn 'mullvad connect'";
              "Super+Alt Comma" = "spawn 'mullvad disconnect'";
              "Super+Alt S" = "spawn screenshot";
              "Super+Shift S" = "spawn 'screenshot select'";

              "Super V" = "toggle-float";
              "Super H" = "focus-view left";
              "Super J" = "focus-view down";
              "Super K" = "focus-view up";
              "Super L" = "focus-view right";
              "Super+Shift H" = "swap left";
              "Super+Shift J" = "swap down";
              "Super+Shift K" = "swap up";
              "Super+Shift L" = "swap right";
            };

          "-repeat normal" = {
            "Super+Alt H" = "send-layout-cmd bsp-layout '--dec-vsplit .05'";
            "Super+Alt L" = "send-layout-cmd bsp-layout '--inc-vsplit .05'";
            "Super+Alt K" = "send-layout-cmd bsp-layout '--dec-hsplit .05'";
            "Super+Alt J" = "send-layout-cmd bsp-layout '--inc-hsplit .05'";
          };
        };

        map-pointer.normal = {
          "Super BTN_LEFT" = "move-view";
          "Super BTN_RIGHT" = "resize-view";
        };

        input = {
          "pointer-1133-16534-Logitech_ERGO_M575" = {
            scroll-factor = 1.5;
            pointer-accel = 0.5;
          };
          "touchpad-*" = {
            natural-scroll = true;
            accel-profile = "flat";
            tap = "enabled";
          };
        };

        rule-add = {
          "ssd" = "";
        };

      };
  };
}
