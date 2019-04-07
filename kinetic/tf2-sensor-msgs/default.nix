
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, python-orocos-kdl, sensor-msgs, catkin, tf2-ros, tf2, rostest, eigen, rospy, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tf2-sensor-msgs";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/kinetic/tf2_sensor_msgs/0.5.20-0.tar.gz;
    sha256 = "16255689e629bea3e5f454d144867f1455fd8bb204df1c271cfdfe3aea0b3eb9";
  };

  buildInputs = [ tf2 cmake-modules eigen sensor-msgs tf2-ros ];
  checkInputs = [ rostest geometry-msgs ];
  propagatedBuildInputs = [ tf2 rospy python-orocos-kdl sensor-msgs tf2-ros eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Small lib to transform sensor_msgs with tf. Most notably, PointCloud2'';
    #license = lib.licenses.BSD;
  };
}