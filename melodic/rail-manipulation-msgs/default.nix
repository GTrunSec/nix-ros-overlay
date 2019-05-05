
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, sensor-msgs, catkin, message-generation, message-runtime, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rail-manipulation-msgs";
  version = "0.0.12";

  src = fetchurl {
    url = https://github.com/gt-rail-release/rail_manipulation_msgs-release/archive/release/melodic/rail_manipulation_msgs/0.0.12-0.tar.gz;
    sha256 = "2d8effa0a61ce81ef4a037ce360defc578616e2b6e5c1981144ba08e89dbd473";
  };

  buildInputs = [ actionlib-msgs sensor-msgs message-generation visualization-msgs geometry-msgs ];
  propagatedBuildInputs = [ actionlib-msgs sensor-msgs message-runtime visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common Manipulation Messages and Services Used in RAIL Manipulation Packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
