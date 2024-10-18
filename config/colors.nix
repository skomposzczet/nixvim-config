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
          neotree = true;
          indent_blankline.enabled = true;
          treesitter = true;
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
