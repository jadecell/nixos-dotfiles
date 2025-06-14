{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  programs.niri = {
    enable = true;
    settings = {
      prefer-no-csd = true;
      outputs = {
        "PNP(XEC) ES-G27F2Q Unknown" = {
          enable = true;
          mode.height = 1440;
          mode.width = 2560;
          mode.refresh = 180.002;
        };
      };

      layout = {
        focus-ring = {
          enable = true;
          active.color = "rgb(102,255,191)";
        };
        insert-hint.enable = false;
      };

      binds = {
        "Mod+Return".action.spawn = "kitty";
        "Mod+Shift+Return".action.spawn = ["wofi" "--show" "drun"];
        "Mod+W".action.spawn = "zen";
        "Mod+Shift+Q".action = config.lib.niri.actions.quit;
        "Mod+F".action = config.lib.niri.actions.fullscreen-window;
        "Mod+Shift+C".action = config.lib.niri.actions.close-window;
        "Mod+Left".action = config.lib.niri.actions.focus-column-left;
        "Mod+Down".action = config.lib.niri.actions.focus-window-down;
        "Mod+Up".action = config.lib.niri.actions.focus-window-up;
        "Mod+Right".action = config.lib.niri.actions.focus-column-right;
        "Mod+H".action = config.lib.niri.actions.focus-column-left;
        "Mod+J".action = config.lib.niri.actions.focus-window-down;
        "Mod+K".action = config.lib.niri.actions.focus-window-up;
        "Mod+L".action = config.lib.niri.actions.focus-column-right;
        "Mod+Shift+Left".action = config.lib.niri.actions.move-column-left;
        "Mod+Shift+Down".action = config.lib.niri.actions.move-window-down;
        "Mod+Shift+Up".action = config.lib.niri.actions.move-window-up;
        "Mod+Shift+Right".action = config.lib.niri.actions.move-column-right;
        "Mod+Shift+H".action = config.lib.niri.actions.move-column-left;
        "Mod+Shift+J".action = config.lib.niri.actions.move-window-down;
        "Mod+Shift+K".action = config.lib.niri.actions.move-window-up;
        "Mod+Shift+L".action = config.lib.niri.actions.move-column-right;
        "Mod+1".action.focus-workspace = 1;
        "Mod+2".action.focus-workspace = 2;
        "Mod+3".action.focus-workspace = 3;
        "Mod+4".action.focus-workspace = 4;
        "Mod+5".action.focus-workspace = 5;
        "Mod+6".action.focus-workspace = 6;
        "Mod+7".action.focus-workspace = 7;
        "Mod+8".action.focus-workspace = 8;
        "Mod+9".action.focus-workspace = 9;
        "Mod+Ctrl+1".action.move-column-to-workspace = 1;
        "Mod+Ctrl+2".action.move-column-to-workspace = 2;
        "Mod+Ctrl+3".action.move-column-to-workspace = 3;
        "Mod+Ctrl+4".action.move-column-to-workspace = 4;
        "Mod+Ctrl+5".action.move-column-to-workspace = 5;
        "Mod+Ctrl+6".action.move-column-to-workspace = 6;
        "Mod+Ctrl+7".action.move-column-to-workspace = 7;
        "Mod+Ctrl+8".action.move-column-to-workspace = 8;
        "Mod+Ctrl+9".action.move-column-to-workspace = 9;
      };
    };
  };
}
