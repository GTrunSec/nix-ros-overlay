
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rostest, roslib, nav-msgs, visualization-msgs, rospy, std-msgs, tf, uuv-control-msgs, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-trajectory-control";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_trajectory_control/0.6.10-0.tar.gz;
    sha256 = "392957a1863c5095f5fcb8b61ecac3520e2a8fa4e8e21175ac691288882bbf63";
  };

  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ pythonPackages.numpy pythonPackages.scipy pythonPackages.pyyaml roslib nav-msgs visualization-msgs rospy std-msgs tf uuv-control-msgs pythonPackages.matplotlib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_trajectory_control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
