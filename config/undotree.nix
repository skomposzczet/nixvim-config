{
  plugins.undotree = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>u";
      action.__raw = /* lua */ ''
        vim.cmd.UndotreeToggle
      '';
    }
  ];
}
