{ pkgs, lib, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;

    package = pkgs.i3;

    config = rec {
      modifier = "Mod4";
      bars = [ ];

      window.border = 0;

      # font = "pango:FiraCode 20";

      gaps = {
        inner = 15;
        outer = 5;
      };

      keybindings = lib.mkOptionDefault {
        "XF86AudioMute" = "exec amixer set Master toggle";
        "XF86AudioLowerVolume" = "exec amixer set Master 5%-";
        "XF86AudioRaiseVolume" = "exec amixer set Master 5%+";
        "XF86MonBrightnessUp" = "exec --no-startup-id brightnessctl set 10%+";
        "XF86MonBrightnessDown" = "exec --no-startup-id brightnessctl set 10%-";
        "${modifier}+Return" = "exec ${pkgs.alacritty}/bin/alacritty";
        "${modifier}+d" = "exec ${pkgs.rofi}/bin/rofi -modi drun -show drun";
        "${modifier}+Shift+d" = "exec ${pkgs.rofi}/bin/rofi -show window";
        "${modifier}+b" = "exec ${pkgs.brave}/bin/brave";
        # "${modifier}+Shift+x" = "exec systemctl suspend";

        "${modifier}+a" = "focus left";
        "${modifier}+s" = "focus right";
        "${modifier}+w" = "focus up";
        "${modifier}+r" = "focus down";

        "${modifier}+Shift+a" = "move left";
        "${modifier}+Shift+s" = "move right";
        "${modifier}+Shift+w" = "move up";
        "${modifier}+Shift+r" = "move down";

        "${modifier}+Control+a" = "move workspace to output left";
        "${modifier}+Control+s" = "move workspace to output right";

        "${modifier}+x" = "fullscreen toggle";

      };

      startup = [
        {
          command = "exec i3-msg workspace 1";
          always = true;
          notification = false;
        }
        {
          command = "systemctl --user restart polybar.service";
          # command = "polybar -q -r momiji";
          always = true;
          notification = false;
        }
        # {
        #   command = "${pkgs.feh}/bin/feh --bg-scale ~/background.png";
        #   always = true;
        #   notification = false;
        # }
        {
          command = "picom -f &";
          always = true;
          notification = false;
        }
      ];

    };
  };
}
