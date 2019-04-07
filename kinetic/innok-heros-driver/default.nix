
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-innok-heros-driver";
  version = "1.0.4";

  src = fetchurl {
    url = https://github.com/innokrobotics/innok_heros_driver-release/archive/release/kinetic/innok_heros_driver/1.0.4-0.tar.gz;
    sha256 = "a4ad8975345794f5376ef3c794e45298278deb030a1cb039b361132dcdfc3da7";
  };

  buildInputs = [ std-msgs tf geometry-msgs rospy ];
  propagatedBuildInputs = [ std-msgs tf geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Innok Heros robot plattform'';
    #license = lib.licenses.BSD;
  };
}