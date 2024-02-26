{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    font = "Hack Nerd Font 12";
    # theme = "~/.cache/wal/colors-rofi-dark.rasi";
    extraConfig = {
      modi = "drun,emoji,ssh";
    };
  };
}