{
  description = "Flake for Genki Documentation";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";
    blueprint.url = "github:numtide/blueprint";
    blueprint.inputs.nixpkgs.follows = "nixpkgs";
    treefmt-nix.url = "github:numtide/treefmt-nix";
  };

  outputs =
    inputs:
    inputs.blueprint {
      inherit inputs;
      prefix = "nix/";
      systems = [
        "aarch64-darwin"
        "x86_64-linux"
      ];
    };
}
