{ config, pkgs, lib, ... }:

{
  programs.zsh = {
    enable = true;

    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
        enable = true;
        plugins = [ "git" "thefuck" ];
        theme = "jonathan";
    };

    shellAliases = {
      ll = "ls -a";
      update = "home-manager switch";
      z = "__zoxide_z";
    };
    # histSize = 10000;
    # histFile = "${config.xdg.dataHome}/zsh/history";

  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };


  home.packages = with pkgs; [
      thefuck
      zsh-autocomplete
      zsh-autosuggestions
      zsh-powerlevel10k
      zoxide
  ];

}