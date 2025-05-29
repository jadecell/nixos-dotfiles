{ config, pkgs, lib, inputs, ... }:

{
  services.syncthing = {
        enable = true;
        openDefaultPorts = true;
        user = "jackson";
        dataDir = "/home/jackson";
  };
}
