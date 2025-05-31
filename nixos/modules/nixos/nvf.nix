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
                bash = {
                        enable = true;
                        lsp.enable = true;
                        extraDiagnostics.enable = true;
                };
            }; 

            lsp = {
                enable = true;
                trouble.enable = true;
            }; 
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
            

            visuals.indent-blankline.enable = true;

            autopairs.nvim-autopairs.enable = true;
        };
    };
  };
}
