{
  config,
  pkgs,
  lib,
  inputs,
  nix-colors,
  ...
}: {
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "JetBrains Mono Nerd Font:size=12";
      };

      key-bindings = {
        clipboard-copy = "Alt+c";
        clipboard-paste = "Alt+v";
      };
      colors = {
        alpha = 0.9;

        # gruvbox

        # foreground = "ebdbb2";
        # background = "282828";
        #
        # # base16
        # regular0 = "282828";
        # regular1 = "cc241d";
        # regular2 = "98971a";
        # regular3 = "d79921";
        # regular4 = "458588";
        # regular5 = "b16286";
        # regular6 = "689d6a";
        # regular7 = "a89984";
        #
        # bright0 = "928374";
        # bright1 = "fb4934";
        # bright2 = "b8bb26";
        # bright3 = "fabd2f";
        # bright4 = "83a598";
        # bright5 = "d3869b";
        # bright6 = "8ec07c";
        # bright7 = "ebdbb2";

        foreground = "ebdbb2";
        background = "282828";

        # base16
        regular0 = "000000";
        regular1 = "fe0100";
        regular2 = "33ff00";
        regular3 = "feff00";
        regular4 = "0066ff";
        regular5 = "cc00ff";
        regular6 = "00ffff";
        regular7 = "d0d0d0";

        bright0 = "808080";
        bright1 = "fe0100";
        bright2 = "33ff00";
        bright3 = "feff00";
        bright4 = "0066ff";
        bright5 = "cc00ff";
        bright6 = "00ffff";
        bright7 = "ffffff";

        # regular0 = "011627";
        # regular1 = "ef5350";
        # regular2 = "22da6e";
        # regular3 = "addb67";
        # regular4 = "82aaff";
        # regular5 = "c792ea";
        # regular6 = "21c7a8";
        # regular7 = "ffffff";
        #
        #
        # bright0 = "575656";
        # bright1 = "ef5350";
        # bright2 = "22da6e";
        # bright3 = "ffeb95";
        # bright4 = "82aaff";
        # bright5 = "c792ea";
        # bright6 = "7fdbca";
        # bright7 = "ffffff";

        selection-background = "5f7e97";
        selection-foreground = "dfe5ee";
      };
    };
  };
}
