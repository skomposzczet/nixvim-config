{
  plugins.lualine = {
    enable = true;
    settings = {
      options.theme = "palenight";
      sections.lualine_c = [
        {
          __unkeyed-1 = "filename";
          path = 1;
        }
      ];
    };
  };
}
