{
  description = "ROS overlay for the Nix package manager";

  inputs = {
    nixpkgs.url = "github:lopsided98/nixpkgs/nix-ros";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    with flake-utils.lib;
    eachSystem allSystems (system: let
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ self.overlay ];
      };
    in {
      packages = pkgs.rosPackages;
      devShell = import ./examples/turtlebot3-gazebo-shell.nix { inherit pkgs; rosPackages = pkgs.rosPackages;};
    }) // {
      overlay = import ./overlay.nix;
      nixosModule = import ./modules;
    };
}
