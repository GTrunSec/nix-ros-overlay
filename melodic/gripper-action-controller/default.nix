
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, cmake-modules, control-msgs, trajectory-msgs, realtime-tools, control-toolbox, catkin, controller-interface, urdf, actionlib, angles, roscpp, xacro }:
buildRosPackage {
  pname = "ros-melodic-gripper-action-controller";
  version = "0.15.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/gripper_action_controller/0.15.0-0.tar.gz;
    sha256 = "7b15202e7175d3352a3855ee222ddbd4db8a5221425436f4637a80e600907ce2";
  };

  buildInputs = [ controller-manager hardware-interface cmake-modules control-msgs trajectory-msgs realtime-tools control-toolbox controller-interface urdf actionlib angles roscpp xacro ];
  propagatedBuildInputs = [ controller-manager hardware-interface cmake-modules control-msgs trajectory-msgs realtime-tools control-toolbox controller-interface urdf actionlib angles roscpp xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gripper_action_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
