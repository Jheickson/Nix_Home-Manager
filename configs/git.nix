{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName  = "Jheickson Felipe";
    userEmail = "felipesantosatm@outlook.com";
  };
}