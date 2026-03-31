{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        theme = "palenight";
        component_separators = "";
        section_separators = {
          left = "";
          right = "";
        };
      };
      sections.lualine_c = [
        {
          __unkeyed-1 = "filename";
          path = 1;
        }
      ];
    };
  };
}
