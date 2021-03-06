
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, rospy, rostopic }:
buildRosPackage {
  pname = "ros-kinetic-generic-throttle";
  version = "0.6.16-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/generic_throttle/0.6.16-1.tar.gz";
    name = "0.6.16-1.tar.gz";
    sha256 = "e8e054a68ac374aa7941857349bf4da6e50dc58f96522ff6676179783f2ba1f4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge rospy rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a throttle for ROS topics'';
    license = with lib.licenses; [ asl20 ];
  };
}
