{ config, pkgs, lib, inputs, ... }:

{
    programs.hyprpanel = {
	enable = true;
	overlay.enable = true;

	overwrite.enable = true;
	settings = {

	  theme = {
	        name = "one_dark_split";
		font = {
		        name = "JetBrains Mono Nerd Font";
		        size = "1.2rem";
			weight = 400;	
		};

                bar.transparent = true;
	  }; 

          bar.launcher.autoDetectIcon = true;

          layout = {
                "bar.layouts" = {
                        "0" = {
                         left = [ "dashboard" "workspaces" ];
                         middle = [ "media" ];
                         right = [ "volume" "systray" "notifications" ];	
                        };	

                        "1" = {
                         left = [ "dashboard" "workspaces" ];
                         middle = [ "clock" ];
                         right = [ "ram" "cpu" "storage" "notifications" "systray" ];	
                        };	
                };

          };
	};

    };
}
