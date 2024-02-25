{ config, pkgs, ... }:

{
  services.polybar = {
    enable = true;

    package = pkgs.polybar.override {
      i3Support = true;
      alsaSupport = true;
    };

    script = "polybar -q -r simurgh &";

    config = ./simurgh/polybar.ini;
  };
}