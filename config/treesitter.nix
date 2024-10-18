{
  plugins.treesitter = {
    enable = true;
    settings = {
      ensureInstalled = [
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

      ignoreInstall = [ "javascript" ];
    };

    nixvimInjections = true;
  };
  plugins.treesitter-context.enable = true;
}
