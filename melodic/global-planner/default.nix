
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, tf2-geometry-msgs, navfn, nav-core, catkin, tf2-ros, nav-msgs, angles, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-global-planner";
  version = "1.16.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/melodic/global_planner/1.16.2-0.tar.gz;
    sha256 = "78802bdb91c6f0e8f194cbe2cfd7b68dca7a4c394c219aa8aba1b17d31e48c1a";
  };

  buildInputs = [ costmap-2d pluginlib tf2-geometry-msgs navfn nav-core tf2-ros nav-msgs dynamic-reconfigure angles roscpp geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib navfn nav-core tf2-ros nav-msgs dynamic-reconfigure roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A path planner library and node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
