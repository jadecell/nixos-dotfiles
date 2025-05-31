{ config, pkgs, lib, inputs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {

     "monitor" = [ "DP-3,2560x1440@180,auto,auto" "DP-2,3840x2160@60,auto,auto" ];
     #"monitor" = [ ",auto,auto,auto" ];

     "$mod" = "SUPER";
     "$terminal" = "foot";
     "$menu" = "wofi --show drun";
     "$browser" = "zen";
     "$music" = "rmpc";
     "debug:disable_logs" = "false";

     exec-once = [
	"hyprpanel"
        "waypaper --restore"
     ];
     
     general = {
	"layout" = "master";
	"gaps_in" = "5";
	"gaps_out" = "10";
	"border_size" = "2";
        "col.active_border" = "rgba(fded30ff) rgba(fded30ff)";
        "col.inactive_border" = "rgba(595959ff) rgba(595959ff)";
     };
     animations = { "enabled" = "false"; };

     master = {
	"new_status" = "master";
	"mfact" = "0.5";
     };
     decoration = {
        blur = { 
                "enabled" = "true";
                "size" = "5";
                "passes" = "2";
                "vibrancy" = "0.1696";
        };
     };

     misc = {
        "enable_swallow" = "true";
        "swallow_regex" = "^(Alacritty|kitty|footclient)$";
     };

     xwayland = { "force_zero_scaling" = "true"; };

     bind = [
    	"$mod, w, exec, $browser"
	"$mod, return, exec, $terminal"
        "$mod SHIFT, c, killactive"
        "$mod SHIFT, return, exec, $menu"

	"$mod SHIFT, q, exit"
        "$mod, v, togglefloating"
        "$mod, u, exec, $terminal -e update-system"
        "$mod, m, exec, $terminal -e $music"
        "$mod, F1, exec, waypaper"
        "$mod CONTROL SHIFT, escape, exec, $terminal -e sudo shutdown now" 
        "$mod, s, togglespecialworkspace, magic"
        "$mod SHIFT, s, movetoworkspace, special:magic"

        "$mod, h, movefocus, l"
        "$mod, l, movefocus, r"
        "$mod, k, movefocus, u"
        "$mod, j, movefocus, d"

        "$mod SHIFT, h, splitratio, -0.05"
        "$mod SHIFT, l, splitratio, 0.05"

        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"
        "$mod, 0, workspace, 10"

	"$mod SHIFT, 1, movetoworkspace, 1"
	"$mod SHIFT, 2, movetoworkspace, 2"
	"$mod SHIFT, 3, movetoworkspace, 3"
	"$mod SHIFT, 4, movetoworkspace, 4"
	"$mod SHIFT, 5, movetoworkspace, 5"
	"$mod SHIFT, 6, movetoworkspace, 6"
	"$mod SHIFT, 7, movetoworkspace, 7"
	"$mod SHIFT, 8, movetoworkspace, 8"
	"$mod SHIFT, 9, movetoworkspace, 9"
	"$mod SHIFT, 0, movetoworkspace, 10"

        "$mod, mouse:272, movewindow"
     ];

    };


  };
}
