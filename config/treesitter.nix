{
  plugins.treesitter = {
    enable = true;
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
    indent = true;
    nixvimInjections = true;
  };
  plugins.treesitter-context.enable = true;
}
