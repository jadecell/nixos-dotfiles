{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  programs.nvf = {
    enable = true;
    enableManpages = true;
    settings = {
      vim = {
        # theme = {
        #   enable = true;
        #   name = "onedark";
        #   style = "dark";
        # };
        extraPlugins = {
          noctis-hc = {
            package = pkgs.vimPlugins.noctis-nvim;
            setup = "vim.cmd('colorscheme noctis')";
          };
        };
        binds = {
          whichKey = {
            enable = true;
          };
        };

        languages = {
          enableTreesitter = true;
          nix = {
            enable = true;
            format.enable = true;
            lsp.enable = true;
          };
          bash = {
            enable = true;
            format.enable = true;
            lsp.enable = true;
            extraDiagnostics.enable = true;
          };
        };

        lsp = {
          enable = true;
          trouble.enable = true;
          formatOnSave = true;
        };
        statusline.lualine.enable = true;
        autocomplete.nvim-cmp.enable = true;
        clipboard = {
          enable = true;
          # providers.wl-copy.enable = true;
          providers.xclip.enable = true;
          registers = "unnamedplus";
        };

        ui.colorizer = {
          enable = true;
          setupOpts.filetypes = {"*" = {};};
        };

        visuals.indent-blankline.enable = true;

        autopairs.nvim-autopairs.enable = true;

        luaConfigPost = " 
                vim.opt.tabstop = 4
                vim.opt.shiftwidth = 4
                vim.opt.expandtab = true
        ";
      };
    };
  };
}
