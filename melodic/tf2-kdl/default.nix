
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, cmake-modules, catkin, tf2-ros, tf2, rostest, eigen }:
buildRosPackage {
  pname = "ros-melodic-tf2-kdl";
  version = "0.6.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_kdl/0.6.5-0.tar.gz;
    sha256 = "af0a21267f7ff0d435f5b54a3b55575e399daaf75ed8e01f09906e1b9af018cf";
  };

  buildInputs = [ cmake-modules orocos-kdl tf2-ros tf2 eigen ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ tf2 orocos-kdl tf2-ros eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''KDL binding for tf2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
