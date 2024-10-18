{
  plugins = {
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        snippet.expand = /* lua */ ''
          function(args)
            require("luasnip").lsp_expand(args.body)
          end
        '';
        mapping.__raw = /* lua */ ''
          cmp.mapping.preset.insert({
            ["<C-y>"] = cmp.mapping.confirm({ select = true }),
            ["<CR>"] = cmp.mapping.confirm(),
            ["<C-Space>"] = cmp.mapping.complete(),
          })
        '';

        sources = [
          {
            name = "nvim_lsp";
          }
          {
            name = "luasnip";
          }
          {
            name = "path";
          }
          {
            name = "buffer";
          }
          {
            name = "treesitter";
          }
        ];
      };

    };
    cmp-nvim-lsp.enable = true;
    luasnip = {
      enable = true;
      settings = {
        enable_autosnippets = true;
      };
    };
  };
}
