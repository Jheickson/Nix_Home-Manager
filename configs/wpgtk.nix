{ config, pkgs, ... }:

{
  home.packages = with pkgs; [

    dconf
    wpgtk

  ];
}