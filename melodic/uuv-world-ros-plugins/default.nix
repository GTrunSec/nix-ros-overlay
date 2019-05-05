
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-world-plugins, geometry-msgs, uuv-world-ros-plugins-msgs, catkin, gazebo-dev, roscpp, gazebo-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-world-ros-plugins";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_world_ros_plugins/0.6.10-0.tar.gz;
    sha256 = "0bb8f7fb759854a6cbea931882f28f926a74eded1d59addbb24ffa388ca95ef5";
  };

  buildInputs = [ uuv-world-plugins geometry-msgs uuv-world-ros-plugins-msgs gazebo-dev roscpp gazebo-msgs ];
  propagatedBuildInputs = [ uuv-world-plugins geometry-msgs uuv-world-ros-plugins-msgs gazebo-dev roscpp gazebo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_world_ros_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
