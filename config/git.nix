{
  plugins = {
    fugitive.enable = true;
    gitsigns = {
      enable = true;
      settings.current_line_blame = true;
      settings.current_line_blame_opts.delay = 100;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>gs";
      action.__raw = /* lua */ ''
        vim.cmd.Git
      '';
      options.desc = "Go to git mission control.";
    }

    {
      mode = "n";
      key = "<leader>gp";
      action.__raw = /* lua */ ''
        function() vim.cmd("Gitsigns preview_hunk") end
      '';
      options.desc = "Preview hunk under cursor.";
    }

    {
      mode = "n";
      key = "<leader>gr";
      action.__raw = /* lua */ ''
        function() vim.cmd("Gitsigns reset_hunk") end
      '';
      options.desc = "Reset hunk under cursor.";
    }

    {
      mode = "n";
      key = "<leader>gt";
      action.__raw = /* lua */ ''
        function() vim.cmd("Gitsigns stage_hunk") end
      '';
      options.desc = "Stage hunk under cursor.";
    }

    {
      mode = "n";
      key = "<leader>g]";
      action.__raw = /* lua */ ''
        function() vim.cmd("Gitsigns next_hunk") end
      '';
      options.desc = "Jump to next hunk.";
    }

    {
      mode = "n";
      key = "<leader>g[";
      action.__raw = /* lua */ ''
        function() vim.cmd("Gitsigns prev_hunk") end
      '';
      options.desc = "Jump to previous hunk.";
    }
  ];
}
