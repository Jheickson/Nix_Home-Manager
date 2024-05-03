{ config, pkgs, ... }:

{
  programs.eww = {
    enable = true;
    configDir = ./configs/saimoomedits/eww/bar;
  };
}