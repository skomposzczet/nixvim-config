# nixvim-config
Nvim config done in glorious Nix declarative way. It is (almost exact) copy of [this regular config](https://github.com/skomposzczet/nvim-config).

## Try out
To run config run command:
```bash
nix run github:skomposzczet/nixvim-config
```
## Install as package
Add repo to inputs:
```nix
inputs.nixvim.url = "github:skomposzczet/nixvim-config"
```
Then add to packages:
```nix
{ inputs, system }
home.packages = with pkgs; [
  inputs.nixvim.packages.${system}.default
]
```
