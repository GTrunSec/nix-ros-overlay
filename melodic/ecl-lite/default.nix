
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-time-lite, ecl-io, catkin, ecl-sigslots-lite, ecl-errors, ecl-converters-lite, ecl-config }:
buildRosPackage {
  pname = "ros-melodic-ecl-lite";
  version = "0.61.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/melodic/ecl_lite/0.61.6-0.tar.gz;
    sha256 = "fceacb01c4b94197a2e6f342c6a76f5a9af13273e9cda61c75c4b3702e3aea3f";
  };

  propagatedBuildInputs = [ ecl-time-lite ecl-io ecl-sigslots-lite ecl-errors ecl-converters-lite ecl-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Libraries and utilities for embedded and low-level linux development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
