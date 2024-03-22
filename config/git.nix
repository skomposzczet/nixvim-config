{
  plugins = {
    fugitive.enable = true;
    gitblame.enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>gs";
      action = ''
        vim.cmd.Git
      '';
      lua = true;
    }

    {
      mode = "n";
      key = "<leader>gb";
      action = ''
        function()
          vim.cmd("GitBlameToggle")
          vim.cmd("GitBlameToggle")
        end
      '';
      lua = true;
    }
  ];
}
