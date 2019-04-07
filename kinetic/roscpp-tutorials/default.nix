
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, catkin, roscpp, message-generation, message-runtime, roscpp-serialization, std-msgs, rostime }:
buildRosPackage {
  pname = "ros-kinetic-roscpp-tutorials";
  version = "0.7.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_tutorials-release/archive/release/kinetic/roscpp_tutorials/0.7.1-0.tar.gz;
    sha256 = "f7650f9a85250adc854ef4d01bfd2376cbb4a5778f451fb8aa2ec63481756d95";
  };

  buildInputs = [ message-generation rosconsole roscpp-serialization std-msgs rostime roscpp ];
  propagatedBuildInputs = [ rosconsole message-runtime roscpp-serialization std-msgs rostime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package attempts to show the features of ROS step-by-step,
    including using messages, servers, parameters, etc.'';
    #license = lib.licenses.BSD;
  };
}