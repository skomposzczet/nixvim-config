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
      action = ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>";
      options.desc = "Shortcut to sed current word";
    }
    {
      mode = "n";
      key = "<leader>S";
      action = ":%s/\\<<C-r><C-w>\\>//gI<Left><Left><Left>";
      options.desc = "Shortcut to sed current word";
    }
    {
      mode = "v";
      key = "<leader>f";
      action = "\"9y:%s/<C-r>9/<C-r>9/gI<Left><Left><Left>";
      options.desc = "Shortcut to sed selected";
    }
    {
      mode = "v";
      key = "<leader>F";
      action = "\"9y:%s/<C-r>9//gI<Left><Left><Left>";
      options.desc = "Shortcut to sed selected";
    }

    {
      mode = "n";
      key = "<leader>x";
      action = "<cmd>!chmod +x %<CR>";
      options.silent = true;
      options.desc = "Add execute permission to current file";
    }

    {
      mode = "n";
      key = "@";
      action = "<cmd>execute \"noautocmd norm! \" . v:count1 . \"@\" . getcharstr()<cr>";
      options.silent = true;
      options.desc = "Fast macros";
    }

    {
      mode = "x";
      key = "@";
      action = "<C-u>execute \"noautocmd '<,'>norm! \" . v:count1 . \"@\" . getcharstr()<cr>";
      options.silent = true;
      options.desc = "Fast macros";
    }
  ];

  userCommands = {
    W = {
      command = "w";
      bang = true;
      desc = "Write";
    };
    Q = {
      command = "q";
      bang = true;
      desc = "Quit";
    };
    Wq = {
      command = "wq";
      bang = true;
      desc = "Write and quit";
    };
    WQ = {
      command = "wq";
      bang = true;
      desc = "Write and quit";
    };
  };

  autoCmd = [
    # open help window in vertical new split
    {
      event = "FileType";
      pattern = "help";
      command = "wincmd L";
    }
  ];
}
