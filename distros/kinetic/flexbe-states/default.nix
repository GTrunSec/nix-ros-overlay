
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-msgs, flexbe-testing, geometry-msgs, rosbag, rospy, rostest, smach-ros }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-states";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_states/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "078d89131588b4d0e576a32ce54a4de6eca6dd86bd9189eaecfa641987e8f616";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ geometry-msgs ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-testing rosbag rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_states provides a collection of predefined states.
     Feel free to add new states.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
