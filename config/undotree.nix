{
  plugins.undotree = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>u";
      action = /* lua */ ''
        vim.cmd.UndotreeToggle
      '';
      lua = true;
    }
  ];
}
