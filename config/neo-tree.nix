{
  plugins.neo-tree = {
    enable = true;

    settings = {
      window = {
        position = "current";
        mappings = {
            "=" = "open";
            l = "open";
            h = "close_node";
        };
      };

      filesystem.hijack_netrw_behavior = "open_default";
      filesystem.filtered_items = {
        visible = true;
        hide_gitignored = true;
      };

      popup_border_style = "rounded";

      default_component_configs.name.trailing_slash = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader><leader>";
      action.__raw = /* lua */ ''
        function() vim.cmd("Neotree position=float toggle reveal") end
      '';
      options.desc = "Open NeoTree in float mode";
    }
  ];
}
