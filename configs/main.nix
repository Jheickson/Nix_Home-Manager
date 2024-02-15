{ config, pkgs, lib, ... }:

{

  imports = [

    ./alacritty.nix
    ./git.nix
    ./i3.nix
    ./polybar/polybar.nix
    ./rofi.nix

  ];

  xsession.enable = true;

}