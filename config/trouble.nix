{
  plugins.trouble = {
    enable = true;
    settings.auto_close = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>xx";
      action.__raw = /* lua */ ''
        function() require("trouble").toggle() end
      '';
    }
    {
      mode = "n";
      key = "<leader>xw";
      action.__raw = /* lua */ ''
        function() require("trouble").toggle("workspace_diagnostics") end
      '';
    }
    {
      mode = "n";
      key = "<leader>xd";
      action.__raw = /* lua */ ''
        function() require("trouble").toggle("document_diagnostics") end
      '';
    }
    {
      mode = "n";
      key = "<leader>xq";
      action.__raw = /* lua */ ''
        function() require("trouble").toggle("quickfix") end
      '';
    }
    {
      mode = "n";
      key = "<leader>xl";
      action.__raw = /* lua */ ''
        function() require("trouble").toggle("loclist") end
      '';
    }
    {
      mode = "n";
      key = "<leader>xr";
      action.__raw = /* lua */ ''
        function() require("trouble").toggle("lsp_references") end
      '';
    }
  ];
}
