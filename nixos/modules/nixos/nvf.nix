{ config, pkgs, lib, inputs, ... }:

{
  programs.nvf = {
    enable = true;
    enableManpages = true;
    settings = {
        vim = {
            theme = { 
                enable = true; 
                name = "onedark";
                style = "darker";
            }; 

            languages = {
                enableTreesitter = true;
                nix.enable = true;
            }; 

            lsp.enable = true;
            statusline.lualine.enable = true;
            autocomplete.nvim-cmp.enable = true;
            clipboard = {
                enable = true ;
                providers.wl-copy.enable = true;
                registers = "unnamedplus";
            };

            ui.colorizer = {
                enable = true;
                setupOpts.filetypes = { "*" = { };};
            };

            autopairs.nvim-autopairs.enable = true;
        };
    };
  };
}
