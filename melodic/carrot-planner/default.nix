
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, tf2-geometry-msgs, nav-core, catkin, tf2-ros, tf2, eigen, roscpp }:
buildRosPackage {
  pname = "ros-melodic-carrot-planner";
  version = "1.16.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/melodic/carrot_planner/1.16.2-0.tar.gz;
    sha256 = "a5d041ba34682f24432fac22801b54a438dc58d3e13e1a4dde1e81e09d2c3ab4";
  };

  buildInputs = [ costmap-2d pluginlib base-local-planner tf2-geometry-msgs nav-core tf2-ros tf2 eigen roscpp ];
  propagatedBuildInputs = [ costmap-2d pluginlib base-local-planner nav-core tf2-ros tf2 eigen roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This planner attempts to find a legal place to put a carrot for the robot to follow. It does this by moving back along the vector between the robot and the goal point.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
