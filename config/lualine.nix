{
  plugins.lualine = {
    enable = true;
    settings = {
      theme = "palenight";
      sections.lualine_c = [
        {
          __unkeyed-1 = "filename";
          path = 1;
        }
      ];
    };
  };
}
