{
  plugins = {
    lspkind.enable = true;
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        snippet.expand = /* lua */ ''
          function(args)
            require("luasnip").lsp_expand(args.body)
          end
        '';

        mapping = {
            "<Up>" = /* lua */ "cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select})";
            "<Down>" = /* lua */ "cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select})";

            "<C-p>" = /* lua */ "cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select})";
            "<C-n>" = /* lua */ "cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select})";

            "<C-u>" = /* lua */ "cmp.mapping.scroll_docs(-4)";
            "<C-d>" = /* lua */ "cmp.mapping.scroll_docs(4)";

            "<C-e>" = /* lua */ "cmp.mapping.abort()";
            "<C-y>" = /* lua */ "cmp.mapping.confirm({select = true})";
            "<Right>" = /* lua */ "cmp.mapping.confirm({select = true})";
            "<CR>" = /* lua */ "cmp.mapping.confirm({select = false})";

            "<C-f>" = /* lua */ ''
              cmp.mapping(
                function(fallback)
                  local luasnip = require 'luasnip'
                  if luasnip.jumpable(1) then
                    luasnip.jump(1)
                  else
                    fallback()
                  end
                end,
                { "i", "s" }
              )
            '';

            "<C-b>" = /* lua */ ''
              cmp.mapping(
                function(fallback)
                  local luasnip = require 'luasnip'
                  if luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                  else
                    fallback()
                  end
                end,
                { "i", "s" }
              )
            '';

            "<Tab>" = /* lua */ ''
              cmp.mapping(
                function(fallback)
                  local col = vim.fn.col('.') - 1

                  if cmp.visible() then
                    cmp.select_next_item(select_opts)
                  elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
                    fallback()
                  else
                    cmp.complete()
                  end
                end,
                { "i", "s" }
              )
            '';

            "<S-Tab>" = /* lua */ ''
              cmp.mapping(
                function(fallback)
                  if cmp.visible() then
                    cmp.select_prev_item(select_opts)
                  else
                    fallback()
                  end
                end,
                { "i", "s" }
              )
            '';
        };

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
