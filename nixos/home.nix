{
  config,
  pkgs,
  system,
  inputs,
  ...
}: {
  imports = [
    inputs.hyprpanel.homeManagerModules.hyprpanel
    inputs.niri.homeModules.niri

    ./modules/home-manager/mpd.nix
    ./modules/home-manager/hyprland.nix
    ./modules/home-manager/hyprpanel.nix
    ./modules/home-manager/wofi.nix
    ./modules/home-manager/ncmpcpp.nix
    ./modules/home-manager/foot.nix
    ./modules/home-manager/zsh.nix
    ./modules/home-manager/starship.nix
    ./modules/home-manager/git.nix
    ./modules/home-manager/gtk.nix
    ./modules/home-manager/kitty.nix
  ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "jackson";
  home.homeDirectory = "/home/jackson";

  home.stateVersion = "24.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
  ];

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/jackson/etc/profile.d/hm-session-vars.sh
  #
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
        style = ''
          * {
            font-family: "JetBrainsMono Nerd Font", Roboto, Helvetica, Arial, sans-serif;
            font-size: 16px;
          }

          window#waybar {
            background-color: rgba(0, 0, 0, 0);
            border-radius: 13px;
            transition-property: background-color;
            transition-duration: .5s;
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

          /* Using steps() instead of linear as a timing function to limit cpu usage */
          #battery.critical:not(.charging) {
            background-color: #f53c3c;
            color: #ffffff;
            animation-name: blink;
            animation-duration: 0.5s;
            animation-timing-function: steps(12);
            animation-iteration-count: infinite;
            animation-direction: alternate;
          }

          label:focus {
            background-color: #000000;
          }
        '';
      };
    };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
