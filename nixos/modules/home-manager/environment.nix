{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  home.sessionVariables = {
    EDITOR = "nvim";
    MANPAGER = "sh -c 'col -bx | bat -l man -p'";
    MANROFFOPT = "-c";
  };

  home.shellAliases = {
    rb = "sudo nixos-rebuild switch --flake ~/mysystem/#";
    v = "nvim";
    z = "zathura";
    mn = "cd ~/mysystem/nixos";
    lg = "lazygit";
    D = "cd ~/Downloads";
  };
}
