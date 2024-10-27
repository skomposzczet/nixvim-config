{
  plugins.treesitter = {
    enable = true;
    settings = {
      ensure_installed = [
        "c"
        "cpp"
        "rust"
        "python"
        "lua"
        "vim"
        "vimdoc"
        "query"
        "nix"
      ];

      highlight.enable = true;
      indent.enable = true;
    };

    nixvimInjections = true;
  };
  plugins.treesitter-context.enable = true;
  plugins.treesitter-textobjects = {
    enable = true;
    select = {
      enable = true;
      lookahead = true;
      keymaps = {
        "aa" = "@parameter.outer";
        "ia" = "@parameter.inner";
        "af" = "@function.outer";
        "if" = "@function.inner";
        "ac" = "@class.outer";
        "ic" = "@class.inner";
        "ii" = "@conditional.inner";
        "ai" = "@conditional.outer";
        "il" = "@loop.inner";
        "al" = "@loop.outer";
        "at" = "@comment.outer";
      };
    };
    move = {
      enable = true;
      gotoNextStart = {
        "]]" = "@function.outer";
        "]m" = "@class.outer";
      };
      gotoNextEnd = {
        "][" = "@function.outer";
        "]M" = "@class.outer";
      };
      gotoPreviousStart = {
        "[[" = "@function.outer";
        "[m" = "@class.outer";
      };
      gotoPreviousEnd = {
        "[]" = "@function.outer";
        "[M" = "@class.outer";
      };
    };
    swap = {
      enable = true;
      swapNext = {
        "<leader>a" = "@parameters.inner";
      };
      swapPrevious = {
        "<leader>A" = "@parameter.outer";
      };
    };
    lspInterop = {
      enable = true;
      border = "single";
      peekDefinitionCode = {
        "<leader>df" = {
          query = "@function.outer";
          desc = "Peek definition outer function";
        };
        "<leader>dF" = {
          query = "@class.outer";
          desc = "Peek definition outer class";
        };
      };
    };
  };
}
