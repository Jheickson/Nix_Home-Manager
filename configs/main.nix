{ config, pkgs, lib, ... }:

{

  imports = [

    ./alacritty.nix
    ./git.nix
    ./gtk.nix
    ./i3.nix
    ./polybar/polybar.nix
    ./pywal.nix
    ./rofi.nix
    ./zsh.nix

# TODO Dunst
# TODO Pywal
# TODO Polybar (Improve: Colors, Current Audio Module, AutoHide(?))
# TODO Picom animations

  ];

  xsession.enable = true;

}