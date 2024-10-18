{
  config = {
    highlight = {
      RainbowRed.fg = "#E06C75";
      RainbowYellow.fg = "#E5C07B";
      RainbowBlue.fg = "#61AFEF";
      RainbowOrange.fg = "#D19A66";
      RainbowGreen.fg = "#98C379";
      RainbowViolet.fg = "#C678DD";
      RainbowCyan.fg = "#56B6C2";
    };

    colorschemes.catppuccin = {
      enable = true;
      settings = {
        flavour = "mocha";
        transparent_background = true;
        show_end_of_buffer = true;

        integrations = {
          cmp = true;
          gitsigns = true;
          neotree = true;
          # which_key = true;
          illuminate = {
            enabled = true;
            lsp = true;
          };
          treesitter = true;
          telescope.enabled = true;
          indent_blankline.enabled = true;
          native_lsp = {
            enabled = true;
            inlay_hints = {
              background = true;
            };
            virtual_text = {
              errors = ["italic"];
              hints = ["italic"];
              information = ["italic"];
              warnings = ["italic"];
              ok = ["italic"];
            };
            underlines = {
              errors = ["underline"];
              hints = ["underline"];
              information = ["underline"];
              warnings = ["underline"];
            };
          };
        };
      };
    };

    plugins = {
      indent-blankline = {
        enable = true;
        settings.indent.highlight = [
          "RainbowRed"
          "RainbowYellow"
          "RainbowBlue"
          "RainbowOrange"
          "RainbowGreen"
          "RainbowViolet"
          "RainbowCyan"
        ];
      };
    };
  };
}
