{
  imports = [
    ./set.nix
    ./remap.nix
    ./colors.nix
    ./lsp.nix
    ./treesitter.nix
    ./cmp.nix
    ./telescope.nix
    ./harpoon.nix
    ./lualine.nix
    ./autoclose.nix
    ./neo-tree.nix
    ./trouble.nix
    ./undotree.nix
    ./git.nix
  ];

  plugins = {
    surround.enable = true;
    comment-nvim.enable = true;
  };
}
