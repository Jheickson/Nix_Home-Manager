{ config, pkgs, lib, ... }:

{
  programs.zsh = {
    enable = true;

    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
        enable = true;
        plugins = [ "git" "thefuck" ];
        theme = "frisk";
    };

    shellAliases = {
      ll = "ls -a";
      update = "home-manager switch";
    };
    # histSize = 10000;
    # histFile = "${config.xdg.dataHome}/zsh/history";

  };

  home.packages = with pkgs; [
      thefuck
      zsh-autocomplete
      zsh-autosuggestions
      zsh-powerlevel10k
  ];

}