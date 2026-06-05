{
  description = "Firge - A programming font combining Fira Mono and Genshin Gothic";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
  };

  outputs =
    { self, nixpkgs }:
    let
      supportedSystems = [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-darwin"
        "x86_64-linux"
      ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    in
    {
      packages = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          firge-font = pkgs.callPackage ./pkgs/firge-font.nix { };
          firge-nerd-font = pkgs.callPackage ./pkgs/firge-nerd-font.nix { };
          default = self.packages.${system}.firge-font;
        }
      );

      overlays.default = final: prev: {
        firge-font = final.callPackage ./pkgs/firge-font.nix { };
        firge-nerd-font = final.callPackage ./pkgs/firge-nerd-font.nix { };
      };
    };
}
