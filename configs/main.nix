{ config, pkgs, lib, ... }:

{

  imports = [

    ./alacritty.nix
    ./dunst/dunst.nix
    ./git.nix
    ./gtk.nix
    ./i3.nix
    ./picom.nix
    ./polybar/polybar.nix
    ./pywal.nix
    ./rofi.nix
    ./wpgtk.nix
    ./zsh.nix

# TODO Dunst: Battery warnings
# TODO Picom More Animations
# TODO P10K zsh config

  ];

  xsession.enable = true;

}