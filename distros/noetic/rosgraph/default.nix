
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosgraph";
  version = "1.15.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosgraph/1.15.7-1.tar.gz";
    name = "1.15.7-1.tar.gz";
    sha256 = "4ad4a471be1afacc01c4507e394a4ea23ff61dc10a2f3ef9afd2f9b14180124a";
  };

  buildType = "catkin";
  checkInputs = [ python3Packages.mock ];
  propagatedBuildInputs = [ python3Packages.netifaces python3Packages.pyyaml python3Packages.rospkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosgraph contains the rosgraph command-line tool, which prints
    information about the ROS Computation Graph. It also provides an
    internal library that can be used by graphical tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
