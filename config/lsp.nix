{
  # plugins.lsp-format.enable = true;
  plugins.lint.enable = true;
  plugins.lsp = {
    enable = true;

    # onAttach = /* lua */ ''
    #   lsp.default_keymaps({buffer = bufnr})
    # '';

    inlayHints = true;
    
    servers = {
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
      clangd.enable = true;
      clangd.extraOptions.switchSourceHeader = 1;
      lua_ls.enable = true;
      nil_ls.enable = true;
      bashls.enable = true;
      marksman.enable = true;
      dockerls.enable = true;

      pylsp = {
        enable = true;
        settings.plugins = {
          flake8.enabled = true;
          jedi.enabled = true;
          pycodestyle.enabled = true;
          pyflakes.enabled = true;
          pylint.enabled = true;
          yapf.enabled = true;
        };
      };
      
      ts_ls.enable = true; # delete later
    };

    keymaps.lspBuf = {
      K = "hover";
      gd = "definition";
      "<leader>vws" = "workspace_symbol";
      "<leader>vca" = "code_action";
      "<leader>vrr" = "references";
      "<leader>vrn" = "rename";
      "<C-h>" = "signature_help";
    };

    keymaps.diagnostic = {
      "<leader>vd" = "open_float";
      "[d" = "goto_prev";
      "]d" = "goto_next";
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>h";
      action = /* lua */ ''
        function() vim.cmd("ClandgSwitchSourceHeader") end
      '';
      lua = true;
      options.desc = "Switch between header and source";
    }
  ];
}
