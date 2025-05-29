{ config, pkgs, lib, inputs, ... }:

{
  # List packages installed in system profile.
  # You can use https://search.nixos.org/ to find more packages (and options).
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
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
  ];
}
