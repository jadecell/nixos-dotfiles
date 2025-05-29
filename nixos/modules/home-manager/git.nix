{ config, pkgs, lib, inputs, ... }:

{

programs.git = {
    enable = true;
    userName  = "Jackson McCrory";
    userEmail = "jackson@mccrory.xyz";
  };
}
