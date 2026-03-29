{
  plugins.trouble = {
    enable = true;
    settings = {
      auto_close = true;
      focus = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options.desc = "Trouble diagnostics";
    }
    {
      mode = "n";
      key = "<leader>ts";
      action = "<cmd>Trouble symbols toggle focus=false<cr>";
      options.desc = "Trouble symbols";
    }
    {
      mode = "n";
      key = "<leader>tw";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
      options.desc = "Troble buffer diagnostics";
    }
    {
      mode = "n";
      key = "<leader>tq";
      action = "<cmd>Trouble qflist toggle<cr>";
      options.desc = "Trouble quickfix list";
    }
    {
      mode = "n";
      key = "<leader>to";
      action = "<cmd>Trouble loclist toggle<cr>";
      options.desc = "Trouble location list";
    }
    {
      mode = "n";
      key = "<leader>tl";
      action = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>";
      options.desc = "Trouble LSP definitions / references / ...";
    }
  ];
}
