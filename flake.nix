{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs"; # Switch to nixos-unstable when renpy gets fixed
  };

  outputs = {
    self,
    nixpkgs,
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system; config = {
        allowUnfree = true;
      };
    };
    lib = pkgs.lib;
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [alejandra renpy just aseprite];
    };
  };
}
