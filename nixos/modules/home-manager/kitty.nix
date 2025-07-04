{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  programs.kitty = {
    enable = true;
    settings = {
      confirm_os_window_close = 0;
      background_opacity = "0.9";
      enable_audio_bell = false;
      font_family = "JetBrains Mono Nerd Font";
      font_size = "12";
      window_padding_width = "8";
      foreground = "#ebdbb2";
      background = "#111111";

      color0 = "#000000";
      color1 = "#fe0100";
      color2 = "#33ff00";
      color3 = "#feff00";
      color4 = "#0066ff";
      color5 = "#cc00ff";
      color6 = "#00ffff";
      color7 = "#d0d0d0";

      color8 = "#808080";
      color9 = "#fe0100";
      color10 = "#33ff00";
      color11 = "#feff00";
      color12 = "#0066ff";
      color13 = "#cc00ff";
      color14 = "#00ffff";
      color15 = "#ffffff";
    };
    keybindings = {
      "alt+c" = "copy_to_clipboard";
      "alt+v" = "paste_from_clipboard";
    };
  };
}
