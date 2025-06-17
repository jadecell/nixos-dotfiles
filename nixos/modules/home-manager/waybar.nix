{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        output = [
          "DP-3"
          "DP-2"
        ];
        modules-left = ["niri/workspaces" "niri/window"];
        modules-center = ["clock"];
        modules-right = ["cpu" "disk" "memory" "temperature"];

        "clock" = {
          format = "  {:%H:%M:%S}";
          interval = 1;
        };

        "cpu" = {
          format = "  {usage}%";
        };

        "disk" = {
          format = "  {free}";
        };

        "memory" = {
          format = "  {used}/{total}";
        };
        "temperature" = {
          format = " {temperatureC}󰔄";
          hwmon-path = "/sys/devices/pci0000:00/0000:00:18.3/hwmon/hwmon1/temp1_input";
        };
      };
    };
  };

  home.file.".config/waybar/style.css" = {
    text = ''
      * {
        font-family: "JetBrainsMono Nerd Font", Roboto, Helvetica, Arial, sans-serif;
        font-size: 16px;
      }

      window#waybar {
        background-color: transparent;
      }

      button {
        /* Use box-shadow instead of border so the text isn't offset */
        box-shadow: inset 0 -3px transparent;
        /* Avoid rounded borders under each button name */
        border: none;
        border-radius: 0;
      }

      /* https://github.com/Alexays/Waybar/wiki/FAQ#the-workspace-buttons-have-a-strange-hover-effect */
      button:hover {
        background: inherit;
        box-shadow: inset 0 -3px #ffffff;
      }

      #workspaces button {
        padding: 0 5px;
        background-color: transparent;
        color: #ffffff;
      }

      #workspaces button:hover {
        background: rgba(0, 0, 0, 0.2);
      }

      #workspaces button.focused {
        background-color: #a000ff;
        box-shadow: inset 0 -3px #ffffff;
      }

      #workspaces button.urgent {
        background-color: #eb4d4b;
      }

      #mode {
        background-color: #5c6370;
        box-shadow: inset 0 -3px #ffffff;
      }

      #clock,
      #battery,
      #cpu,
      #memory,
      #temperature,
      #network,
      #pulseaudio {
        padding: 0 10px;
      }

      #temperature {
        color: #00b4cc;
      }

      #clock {
        color: #d19a66;
      }

      #window {
        color: #e6ac00;
      }

      .modules-right,
      .modules-left,
      .modules-center {
        background-color: @base;
        border-radius: 15px;
      }

      .modules-right {
        padding: 0 10px;
      }

      .modules-left {
        padding: 0 20px;
      }

      .modules-center {
        padding: 0 10px;
      }

      @keyframes blink {
        to {
          color: #000000;
        }
      }

      label:focus {
        background-color: #000000;
      }
    '';
  };
}
