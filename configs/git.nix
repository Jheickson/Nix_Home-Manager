{ config, pkgs, ... }:

{
  home.file."~/.gitconfig".text = ''
    [user]
        name = "Jheickson Felipe"
        email = "felipesantosatm@outlook.com"
    [credential]
        helper = store
  '';
}