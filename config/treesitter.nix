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
}
