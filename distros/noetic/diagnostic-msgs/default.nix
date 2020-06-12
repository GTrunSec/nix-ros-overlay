
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-msgs";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/noetic/diagnostic_msgs/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "57bc7102905c53be67a2587d2ef745e09168cae2cfaafc7eee6ad4541238fbba";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds the diagnostic messages which provide the
    standardized interface for the diagnostic and runtime monitoring
    systems in ROS. These messages are currently used by
    the <a href="http://wiki.ros.org/diagnostics">diagnostics</a>
    Stack, which provides libraries for simple ways to set and access
    the messages, as well as automated ways to process the diagnostic
    data.

    These messages are used for long term logging and will not be
    changed unless there is a very important reason.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}