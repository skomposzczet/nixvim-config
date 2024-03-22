{
  plugins.telescope = {
    enable = true;

    keymaps = {
      "<leader>pf" = "find_files";
      "<C-p>" = "git_files";
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ps";
      action = ''
        function() builtin.grep_string({ search = vim.fn.input("Grep > ") }); end
      '';
      lua = true;
    }
  ];
}
