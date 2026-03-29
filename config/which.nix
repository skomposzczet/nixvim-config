{
  plugins.which-key = {
    enable = true;
    settings = {
      preset = "modern";
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>?";
      action.__raw = /* lua */ ''
        function()
          require("which-key").show({ global = false })
        end 
      '';
      options.desc = "which-key help";
    }
  ];
}
