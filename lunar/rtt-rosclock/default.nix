
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, cmake-modules, rtt, libxml2, catkin, rostime, rtt-rosgraph-msgs, ocl, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rtt-rosclock";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_rosclock/2.9.2-1.tar.gz;
    sha256 = "472c4a276d10e78da7d14e16d92c26362b4ef27e202e8878075e73d2d539e841";
  };

  buildInputs = [ rospack cmake-modules rtt libxml2 roscpp rtt-rosgraph-msgs ocl rostime ];
  propagatedBuildInputs = [ rospack cmake-modules rtt libxml2 roscpp rtt-rosgraph-msgs ocl rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an RTT plugin to access different time measurements on a realtime host.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}