
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, nodelet, pluginlib, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-cam3d-throttle";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_cam3d_throttle/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "08af2b912acded2453559c02f310fb112dd15550d3a73d757ee948b1e4481819";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-filters nodelet pluginlib roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_cam3d_throttle: only for Trottel'';
    license = with lib.licenses; [ asl20 ];
  };
}
