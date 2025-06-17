{
  config,
  pkgs,
  system,
  inputs,
  ...
}: {
  imports = [
    inputs.hyprpanel.homeManagerModules.hyprpanel
    inputs.niri.homeModules.niri

    ./modules/home-manager/mpd.nix
    ./modules/home-manager/hyprland.nix
    ./modules/home-manager/hyprpanel.nix
    ./modules/home-manager/wofi.nix
    ./modules/home-manager/ncmpcpp.nix
    ./modules/home-manager/foot.nix
    ./modules/home-manager/zsh.nix
    ./modules/home-manager/starship.nix
    ./modules/home-manager/git.nix
    ./modules/home-manager/gtk.nix
    ./modules/home-manager/kitty.nix
    ./modules/home-manager/waybar.nix
    ./modules/home-manager/environment.nix

    # ./modules/home-manager/niri.nix
  ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "jackson";
  home.homeDirectory = "/home/jackson";

  home.stateVersion = "24.11"; # Please read the comment before changing.

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
