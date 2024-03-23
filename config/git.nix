{
  plugins = {
    fugitive.enable = true;
    gitsigns = {
      enable = true;
      currentLineBlame = true;
      currentLineBlameOpts.delay = 100;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>gs";
      action = /* lua */ ''
        vim.cmd.Git
      '';
      lua = true;
    }

    {
      mode = "n";
      key = "<leader>gp";
      action = /* lua */ ''
        function() vim.cmd("Gitsigns preview_hunk") end
      '';
      lua = true;
    }
  ];
}
