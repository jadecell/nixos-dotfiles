# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).
{
  config,
  lib,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    inputs.home-manager.nixosModules.home-manager
    # inputs.niri.nixosModules.niri

    ./modules/nixos/sound.nix
    ./modules/nixos/bootloader.nix
    ./modules/nixos/timezone.nix
    ./modules/nixos/networking.nix
    ./modules/nixos/users.nix
    ./modules/nixos/hostname.nix
    ./modules/nixos/packages.nix
    ./modules/nixos/nvf.nix
    ./modules/nixos/fonts.nix
    ./modules/nixos/syncthing.nix
    ./modules/nixos/cinnamon-desktop.nix
  ];

  home-manager = {
    extraSpecialArgs = {inherit inputs;};
    users = {
      jackson = import ./home.nix;
    };

    backupFileExtension = "hm-backup";
  };

  programs.sway.enable = true;

  # enable flakes
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # fix chromium apps on wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # programs.niri = {
  #   enable = true;
  # };

  boot.kernelPackages = pkgs.linuxPackages_latest;

  system.stateVersion = "25.05"; # Did you read the comment?
}
