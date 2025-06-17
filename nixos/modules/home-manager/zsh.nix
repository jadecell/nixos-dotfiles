{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    autocd = true;
    profileExtra = "[ \"$(tty)\" = \"/dev/tty1\" ] && ! pidof -s Hyprland >/dev/null 2>&1 && exec Hyprland";
  };
}
