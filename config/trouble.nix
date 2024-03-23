{
  plugins.trouble = {
    enable = true;
    settings.auto_close = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>xx";
      action = /* lua */ ''
        function() require("trouble").toggle() end
      '';
      lua = true;
    }
    {
      mode = "n";
      key = "<leader>xw";
      action = /* lua */ ''
        function() require("trouble").toggle("workspace_diagnostics") end
      '';
      lua = true;
    }
    {
      mode = "n";
      key = "<leader>xd";
      action = /* lua */ ''
        function() require("trouble").toggle("document_diagnostics") end
      '';
      lua = true;
    }
    {
      mode = "n";
      key = "<leader>xq";
      action = /* lua */ ''
        function() require("trouble").toggle("quickfix") end
      '';
      lua = true;
    }
    {
      mode = "n";
      key = "<leader>xl";
      action = /* lua */ ''
        function() require("trouble").toggle("loclist") end
      '';
      lua = true;
    }
    {
      mode = "n";
      key = "<leader>xr";
      action = /* lua */ ''
        function() require("trouble").toggle("lsp_references") end
      '';
      lua = true;
    }
  ];
}
