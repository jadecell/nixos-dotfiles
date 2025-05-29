{ config, pkgs, lib, inputs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.jackson = {
    isNormalUser = true;
    extraGroups = ["wheel" "input" "networkmanager"]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
  };
  programs.zsh.enable = true;
}
