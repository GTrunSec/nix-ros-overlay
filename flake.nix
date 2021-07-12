{
  description = "ROS overlay for the Nix package manager";

  inputs = {
    nixpkgs.url = "github:lopsided98/nixpkgs/nix-ros";
    utils.url = "github:gytis-ivaskevicius/flake-utils-plus/staging";
  };

  outputs = inputs@{ self, nixpkgs, utils }:
    let
      inherit (utils.lib.exporters) internalOverlays fromOverlays modulesFromList;
    in
    utils.lib.systemFlake
      {
        inherit self inputs;

        channelsConfig = {
          allowUnsupportedSystem = true;
          allowBroken = true;
          allowUnfree = true;
        };
        channels = {
          nixpkgs = {
            input = nixpkgs;
            overlaysBuilder = channels:
              [
                (import ./pkgs)
                (import ./distros)
              ];
          };
        };
        overlays = internalOverlays {
          inherit (self) pkgs inputs;
        };
        outputsBuilder = channels: {
          # construct packagesBuilder to export all packages defined in overlays
          packages = fromOverlays self.overlays channels // {
            inherit (channels.nixpkgs.rosPackages.melodic)
              "zbar-ros"
              "yocs-rapps";
          };
        };
      } // {
      nixosModule = import ./modules;
    };
}
