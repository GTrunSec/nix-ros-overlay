
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rexrov2-description, rexrov2-control }:
buildRosPackage {
  pname = "ros-melodic-rexrov2-gazebo";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/uuvsimulator/rexrov2-release/archive/release/melodic/rexrov2_gazebo/0.1.3-0.tar.gz;
    sha256 = "ae244517e996486264c129ef22354f23c9e84f3e32be10a5fd7fa193bd0b15d9";
  };

  propagatedBuildInputs = [ rexrov2-description rexrov2-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with launch files for demonstrations with the RexROV 2 vehicle'';
    license = with lib.licenses; [ asl20 ];
  };
}
