{ lib, ... }:
{
  plugins.wilder = {
    enable = true;
    # TODO winborder - goofy double border makes it unusable if not palette
    options = {
      renderer = lib.nixvim.mkRaw ''
        wilder.popupmenu_renderer(
          wilder.popupmenu_palette_theme({
            highlighter = wilder.basic_highlighter(),
            border = 'rounded',
            max_height = '75%',
            min_height = 0,
            prompt_position = 'top',
            reverse = 0,
          })
        )
      '';
    };
    settings.modes = [ ":" "/" "?" ];
  };
}
