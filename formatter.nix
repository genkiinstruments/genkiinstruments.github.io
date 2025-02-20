{
  pkgs,
  inputs,
  ...
}:
inputs.treefmt-nix.lib.mkWrapper pkgs {
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
