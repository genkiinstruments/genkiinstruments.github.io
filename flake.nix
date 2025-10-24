{
  description = "Flake for Genki Documentation";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";
    treefmt-nix.url = "github:numtide/treefmt-nix";
    treefmt-nix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    {
      self,
      nixpkgs,
      treefmt-nix,
    }:
    let
      supportedSystems = [
        "aarch64-darwin"
        "x86_64-linux"
      ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;

      treefmtEval = forAllSystems (
        system:
        treefmt-nix.lib.evalModule nixpkgs.legacyPackages.${system} {
          projectRootFile = "flake.nix";
          programs.prettier.enable = true;

          programs.deadnix.enable = true;
          programs.nixfmt.enable = true;

          programs.shfmt.enable = true;
          settings.formatter.shfmt.includes = [ "*.envrc" ];

          settings.global.excludes = [
            "*.png"
            "*.jpg"
            "*.zip"
            "*.touchosc"
            "*.pdf"
            "*.svg"
            "*.ico"
            "*.webp"
            "*.gif"
          ];
        }
      );
    in
    {
      packages = forAllSystems (
        system:
        let
          pname = "genki-docs";
          version = "0.1.0";
          src = ./.;
        in
        {
          default = nixpkgs.legacyPackages.${system}.stdenv.mkDerivation {
            inherit pname version src;

            nativeBuildInputs = with nixpkgs.legacyPackages.${system}; [
              nodejs
              pnpm.configHook
              typescript
            ];

            buildInputs = [ nixpkgs.legacyPackages.${system}.vips ];

            buildPhase = ''
              pnpm build
            '';

            installPhase = ''
              runHook preInstall
              cp -pr --reflink=auto dist $out/
              runHook postInstall
            '';

            pnpmDeps = nixpkgs.legacyPackages.${system}.pnpm.fetchDeps {
              inherit pname version src;
              hash = "sha256-2iefCqirTWGjjavmnjYByjDxXzXKaxJzIReKTy2CybM=";
            };
          };
        }
      );

      devShells = forAllSystems (system: {
        default = nixpkgs.legacyPackages.${system}.mkShell {
          inputsFrom = [ self.packages.${system}.default ];
        };
      });

      formatter = forAllSystems (system: treefmtEval.${system}.config.build.wrapper);

      checks = forAllSystems (system: {
        formatting = treefmtEval.${system}.config.build.check self;
      });
    };
}
