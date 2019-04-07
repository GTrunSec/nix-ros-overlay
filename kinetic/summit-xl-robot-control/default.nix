
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, robotnik-msgs, diagnostic-updater, nav-msgs, diagnostic-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-summit-xl-robot-control";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/summit_xl_sim-release/archive/release/kinetic/summit_xl_robot_control/1.1.1-0.tar.gz;
    sha256 = "354a23827855fe935dbb3b13519f996428613d30555ee2e9ba9fece730701f1b";
  };

  buildInputs = [ diagnostic-updater nav-msgs geometry-msgs diagnostic-msgs sensor-msgs tf robotnik-msgs roscpp ];
  propagatedBuildInputs = [ diagnostic-updater nav-msgs geometry-msgs diagnostic-msgs sensor-msgs tf robotnik-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control the robot joints in all kinematic configurations, publishes odom topic and, 
	  if configured, also tf odom to base_link. Usually takes as input joystick commands 
	  and generates as outputs references for the gazebo controllers defined in summit_xl_control.'';
    #license = lib.licenses.BSD;
  };
}