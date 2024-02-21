{ config, pkgs, lib, ... }:

{

  imports = [

    ./alacritty.nix
    ./git.nix
    ./gtk.nix
    ./i3.nix
    ./polybar/polybar.nix
    ./rofi.nix
    ./zsh.nix

  ];

  xsession.enable = true;

}