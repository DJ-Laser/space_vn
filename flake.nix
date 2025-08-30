{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
      };
      overlays = [
        (self: super: {
          renpy = super.renpy.overrideAttrs (finalAttrs: previousAttrs: {
            buildInputs = previousAttrs.buildInputs ++ (with super.python312.pkgs; [rsa]);
          });
        })
      ];
    };
    lib = pkgs.lib;
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [alejandra renpy just aseprite];
    };
  };
}
