{
  plugins.neo-tree = {
    enable = true;

    window = {
      position = "current";
      mappings = {
          "=" = "open";
          l = "open";
          h = "close_node";
      };
    };

    filesystem.hijackNetrwBehavior = "open_default";
    filesystem.filteredItems = {
      visible = true;
      hideGitignored = false;
    };

    popupBorderStyle = "rounded";

    defaultComponentConfigs.name.trailingSlash = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader><leader>";
      action = /* lua */ ''
        function() vim.cmd("Neotree position=float toggle reveal") end
      '';
      lua = true;
      options.desc = "Open NeoTree in float mode";
    }
  ];
}
