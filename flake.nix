{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };


  outputs = { self, nixpkgs }@inputs:
  {
    overlay = (final : prev: {
      curseforge-overlay = final.callPackage ./. {};
    });
  };
}