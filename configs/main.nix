{ config, pkgs, lib, ... }:

{

  imports = [

    ./alacritty.nix
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
# TODO Pywal
# TODO Polybar (Improve: Colors, Current Audio Module, AutoHide(?))
# TODO Picom animations

  ];

  xsession.enable = true;

}