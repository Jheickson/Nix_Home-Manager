{ pkgs, ... }:

with pkgs;

{

  home.packages = with pkgs; [
    # TERMINAL
    alacritty

    # WEB
    brave

    # CUSTOMIZATION
    awf
    feh
    python311Packages.colorthief
    colorz
    python311Packages.colorzero
    xcolor

      # FONTS
      nerdfonts
      rounded-mgenplus
      siji
      termsyn

    # MISC
    cowsay
    electron-mail
    neofetch
    googleearth-pro
    telegram-desktop
    whatsapp-for-linux

    # MEDIA
    flameshot
    stremio
    obs-studio
    youtube-music
    vlc

    # DEV
    git

    create-react-app

    jre
    jdk
    nodejs_21
    # python2
    python3
    python311Packages.pip
    vscode

    # USEFUL
    micro
    tldr
    scrcpy

    # PRODUCTIVITY
    libreoffice
    drawio
    
    # polybar
    rofi
    material-icons
    libmpdclient

    # SYSTEM
    brightnessctl
    playerctl
    libnotify
    htop
    zenith
    poweralertd
    upower
    # unrar
    # rar
    # unzip
    # zip
    peazip
    xfce.thunar
    zip

    # NETWORK

  # Examples

  # Example 1. Listing available Wi-Fi APs

  # $ nmcli device wifi list
  #   SSID               MODE    CHAN  RATE       SIGNAL  BARS  SECURITY
  #    netdatacomm_local  Infra   6     54 Mbit/s  37      ▂▄__  WEP
  #   F1                 Infra   11    54 Mbit/s  98      ▂▄▆█  WPA1
  #    LoremCorp          Infra   1     54 Mbit/s  62      ▂▄▆_  WPA2 802.1X
  #    Internet           Infra   6     54 Mbit/s  29      ▂___  WPA1
  #    HPB110a.F2672A     Ad-Hoc  6     54 Mbit/s  22      ▂___  --
  #    Jozinet            Infra   1     54 Mbit/s  19      ▂___  WEP
  #    VOIP               Infra   1     54 Mbit/s  20      ▂___  WEP
  #    MARTINA            Infra   4     54 Mbit/s  32      ▂▄__  WPA2
  #    N24PU1             Infra   7     11 Mbit/s  22      ▂___  --
  #    alfa               Infra   1     54 Mbit/s  67      ▂▄▆_  WPA2
  #    bertnet            Infra   5     54 Mbit/s  20      ▂___  WPA1 WPA2

  # This command shows how to list available Wi-Fi networks (APs). You can also use --fields option for displaying different columns. nmcli -f all dev wifi list will show all of them.

  # Example 2. Connect to a password-protected wifi network

  # $ nmcli device wifi connect "$SSID" password "$PASSWORD"

  # $ nmcli --ask device wifi connect "$SSID"

    networkmanager
    networkmanagerapplet
    networkmanager_dmenu

    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

}