{ config, pkgs, ... }:

{
  programs.eww = {
    enable = true;
    configDir = ./eww_configs;
  };
}