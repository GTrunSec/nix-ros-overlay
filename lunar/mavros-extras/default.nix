
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, sensor-msgs, catkin, mavros, roscpp, urdf, visualization-msgs, tf2-eigen, std-msgs, tf, mavros-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-mavros-extras";
  version = "0.29.2";

  src = fetchurl {
    url = https://github.com/mavlink/mavros-release/archive/release/lunar/mavros_extras/0.29.2-0.tar.gz;
    sha256 = "761c8502c816c937ffb8e564b7725755403362d95a60b331a37e3c2ff113410f";
  };

  buildInputs = [ cmake-modules sensor-msgs mavros roscpp urdf tf2-eigen visualization-msgs std-msgs tf mavros-msgs geometry-msgs ];
  propagatedBuildInputs = [ tf sensor-msgs mavros roscpp urdf tf2-eigen std-msgs visualization-msgs mavros-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extra nodes and plugins for <a href="http://wiki.ros.org/mavros">MAVROS</a>.'';
    #license = lib.licenses.GPLv3;
  };
}