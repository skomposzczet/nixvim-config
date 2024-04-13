{
  # plugins.lsp-format.enable = true;
  plugins.lsp = {
    enable = true;

    onAttach = /* lua */ ''
      lsp.default_keymaps({buffer = bufnr})
    '';
    
    servers = {
      rust-analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
      clangd.enable = true;
      clangd.extraOptions.switchSourceHeader = 1;
      lua-ls.enable = true;
      nixd.enable = true;
      pylsp.enable = true;
      bashls.enable = true;
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
