{
  config,
  pkgs,
  system,
  inputs,
  ...
}: {
  imports = [
    inputs.hyprpanel.homeManagerModules.hyprpanel

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
    # EDITOR = "emacs";
  };

  home.shellAliases = {
    rb = "sudo nixos-rebuild switch --flake ~/mysystem/#";
    v = "nvim";
    mn = "cd ~/mysystem/nixos";
    lg = "lazygit";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
