{
  plugins.lsp-format.enable = true;
  plugins.lsp = {
    enable = true;

    onAttach = ''
      lsp.default_keymaps({buffer = bufnr})
    '';
    
    servers = {
      clangd.enable = true;
      lua-ls.enable = true;
      rust-analyzer.enable = true;
      nixd.enable = true;
      pylsp.enable = true;
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
      action = ''
        function() vim.cmd("ClandgSwitchSourceHeader") end
      '';
      lua = true;
      options.desc = "Switch between header and source";
    }
  ];
}
