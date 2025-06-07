{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  nixpkgs.config.allowUnfree = true;
  # List packages installed in system profile.
  # You can use https://search.nixos.org/ to find more packages (and options).
  environment.systemPackages = with pkgs; [
    vim
    alacritty
    kitty
    pcmanfm
    foot
    firefox
    fastfetch
    wget
    kitty
    home-manager
    hyprpanel
    git
    wl-clipboard
    fzf
    inputs.zen-browser.packages."${system}".twilight
    wofi
    swaybg
    waypaper
    libreoffice-fresh
    rmpc
    lazygit
    stremio
    brave

    # Bash scripts
    inputs.bin.packages.${system}.extract
    inputs.bin.packages.${system}.musicimport
    inputs.bin.packages.${system}.wallsort
    inputs.bin.packages.${system}.update-system
  ];
}
