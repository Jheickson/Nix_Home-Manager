{ pkgs, lib, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;

    package = pkgs.i3;

    config = rec {
      modifier = "Mod4";
      bars = [ ];

      window.border = 5;
      window.titlebar = false;

      # font = "pango:FiraCode 20";

      gaps = {
        inner = 5;
        outer = 5;
      };

      keybindings = lib.mkOptionDefault {
        "XF86AudioMute" = "exec --no-startup-id amixer set Master toggle";
        "XF86AudioLowerVolume" = "exec --no-startup-id amixer set Master 5%-";
        "XF86AudioRaiseVolume" = "exec --no-startup-id amixer set Master 5%+";

        "XF86AudioPlay" = "exec playerctl play-pause";
        "XF86AudioPause" = "exec playerctl play-pause";
        "XF86AudioNext" = "exec playerctl next";
        "XF86AudioPrev" = "exec playerctl previous";

        "XF86MonBrightnessUp" = "exec --no-startup-id brightnessctl set 10%+";
        "XF86MonBrightnessDown" = "exec --no-startup-id brightnessctl set 10%-";

        "${modifier}+Return" = "exec ${pkgs.alacritty}/bin/alacritty";
        "${modifier}+d" = "exec ${pkgs.rofi}/bin/rofi -modi drun -show drun";
        "${modifier}+Shift+d" = "exec ${pkgs.rofi}/bin/rofi -show window";
        "${modifier}+b" = "exec ${pkgs.brave}/bin/brave";
        "${modifier}+c" = "exec ${pkgs.vscode}/bin/vscode";
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
        "${modifier}+Shift+0" = "restart";
        "${modifier}+Alt+r" = "mode resize";

        "a" = "resize shrink width 10 px or 10 ppt";
        "r" = "resize grow height 10 px or 10 ppt";
        "w" = "resize shrink height 10 px or 10 ppt";
        "s" = "resize grow width 10 px or 10 ppt";
        "Escape" = "mode default";
        "Return" = "mode default";
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
        {
          command = "${pkgs.feh}/bin/feh --bg-scale ~/.config/home-manager/wallpapers/1350453.png";
          always = true;
          notification = false;
        }
        {
          command = "picom -f &";
          always = true;
          notification = false;
        }
      ];
    };
  };
}