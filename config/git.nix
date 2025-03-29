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
      action = /* lua */ ''
        vim.cmd.Git
      '';
      lua = true;
      options.desc = "Go to git mission control.";
    }

    {
      mode = "n";
      key = "<leader>gp";
      action = /* lua */ ''
        function() vim.cmd("Gitsigns preview_hunk") end
      '';
      lua = true;
      options.desc = "Preview hunk under cursor.";
    }

    {
      mode = "n";
      key = "<leader>gr";
      action = /* lua */ ''
        function() vim.cmd("Gitsigns reset_hunk") end
      '';
      lua = true;
      options.desc = "Reset hunk under cursor.";
    }

    {
      mode = "n";
      key = "<leader>gS";
      action = /* lua */ ''
        function() vim.cmd("Gitsigns stage_hunk") end
      '';
      lua = true;
      options.desc = "Stage hunk under cursor.";
    }

    {
      mode = "n";
      key = "<leader>g]";
      action = /* lua */ ''
        function() vim.cmd("Gitsigns next_hunk") end
      '';
      lua = true;
      options.desc = "Jump to next hunk.";
    }

    {
      mode = "n";
      key = "<leader>g[";
      action = /* lua */ ''
        function() vim.cmd("Gitsigns prev_hunk") end
      '';
      lua = true;
      options.desc = "Jump to previous hunk.";
    }
  ];
}
