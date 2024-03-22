{
  plugins.undotree = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>u";
      action = ''
        vim.cmd.UndotreeToggle
      '';
      lua = true;
    }
  ];
}
