{ config, pkgs, lib, inputs, ... }:

{
  services.mpd = {
        enable = true;
        musicDirectory = "/home/jackson/Music";
        playlistDirectory = "/home/jackson/Music/playlists";
        dataDir = "/home/jackson/.config/mpd";
        dbFile = "/home/jackson/.config/mpd/mpd.db";
        extraConfig = ''
                audio_output {
                        type "pulse"
                        name "pulse audio"
                        #type  "alsa"
                        #name  "ALSA"
                }

                audio_output {
                       type	"fifo"
                       name	"Visualizer feed"
                       path	"/tmp/mpd.fifo"
                       format	"44100:16:2"
                }
        '';

  };
}
