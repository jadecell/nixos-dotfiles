{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  services.xserver = {
    enable = true;
    displayManager.lightdm.enable = true;
    desktopManager.cinnamon.enable = true;
  };

  services = {
    libinput.enable = true;
    displayManager.defaultSession = "cinnamon";
  };
}
