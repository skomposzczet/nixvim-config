{
  globals = {
    mapleader = " ";
  };

  keymaps = [
    # Move lines selected in visual mode
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
      options.desc = "Move lines selected in visual mode down";
    }
    {
      mode = "v";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
      options.desc = "Move lines selected in visual mode up";
    }

    # Keep cursor in middle
    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
    }
    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
    }
    {
      mode = "n";
      key = "n";
      action = "nzzzv";
    }
    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
    }

    {
      mode = "x";
      key = "<leader>p";
      action = "\"_dP";
      options.desc = "Paste without changing registers content";
    }

    {
      mode = "n";
      key = "<leader>s";
      action = "[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]";
      options.desc = "Shortcut to sed current word";
    }

    {
      mode = "n";
      key = "<leader>x";
      action = "<cmd>!chmod +x %<CR>";
      options.silent = true;
      options.desc = "Add execute permission to current file";
    }
  ];
}
