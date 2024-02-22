{ config, pkgs, lib, ... }:

{

  imports = [

    ./alacritty.nix
    ./dunst.nix
    ./git.nix
    ./gtk.nix
    ./i3.nix
    ./picom.nix
    ./polybar/polybar.nix
    ./pywal.nix
    ./rofi.nix
    ./wpgtk.nix
    ./zsh.nix

# TODO Dunst
# TODO Picom More Animations
# TODO Polybar (Improve: Current Audio Module, AutoHide(?))
# TODO Install jre and jdk
# TODO P10K zsh config

  ];

  xsession.enable = true;

}