{ pkgs, lib, ... }:
{
  plugins.wilder = {
    enable = true;
    # TODO make it cleaner maybe
    package = pkgs.vimPlugins.wilder-nvim.overrideAttrs (old: {
      patches = (old.patches or []) ++ [
        ./patches/border.patch
      ];
    });
    settings.modes = [ ":" "/" "?" ];
    options = {
      renderer = lib.nixvim.mkRaw ''
        wilder.popupmenu_renderer({
          highlighter = wilder.basic_highlighter(),
        })
      '';
    };
  };
}
