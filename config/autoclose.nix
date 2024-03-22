{
  plugins.autoclose = {
    enable = true;
    options.pairSpaces = true;
    keys = {
      "<" = { escape = true; close = true; pair = "<>"; disabled_filetypes = ["cpp"]; };
    };
  };
}
