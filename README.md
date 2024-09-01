# CurseForge-Nix
> [!WARNING]
> This package is not maintained by the CurseForge team or is affiliated with CurseForge in any way.
> This package only works on Darwin if you want linux support, please submit a pr and maintain it.

A Nix overlay/package of Curseforge app. (Works only on darwin). 


## Usage

1. Add Input: 

```nix
{
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
        curseforge-overlay.url = "github:eveeifyeve/curse-forge-nixoverlay";
    };
}
```

2. Add it to your overlays!
3. Use the package `pkgs.curseforge`




# Contributing

<!-- TODO: Guide -->

> [!WARNING]
> Coming soon@