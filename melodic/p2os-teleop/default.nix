
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-runtime, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-p2os-teleop";
  version = "2.1.1-r3";

  src = fetchurl {
    url = https://github.com/allenh1/p2os-release/archive/release/melodic/p2os_teleop/2.1.1-3.tar.gz;
    sha256 = "f263fffb042a86ffea63279e319c18b59efe102b6ad0f0d2f868ddd86e754fc2";
  };

  buildInputs = [ std-msgs sensor-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs message-runtime std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A teleoperation node for the p2os_driver package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
