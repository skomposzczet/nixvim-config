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
      flavour = "mocha";
      transparentBackground = true;
      showBufferEnd = true;
      integrations = {
        neotree = true;
        indent_blankline.enabled = true;
      };
    };

    plugins = {
      indent-blankline = {
        enable = true;
        indent.highlight = [
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
