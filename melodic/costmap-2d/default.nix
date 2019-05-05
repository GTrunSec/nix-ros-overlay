
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, geometry-msgs, map-server, message-filters, tf2-sensor-msgs, voxel-grid, message-generation, message-runtime, tf2-geometry-msgs, rosbag, catkin, tf2-ros, nav-msgs, std-msgs, laser-geometry, visualization-msgs, roscpp, cmake-modules, pluginlib, sensor-msgs, rostest, tf2, dynamic-reconfigure, rosunit, map-msgs }:
buildRosPackage {
  pname = "ros-melodic-costmap-2d";
  version = "1.16.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/melodic/costmap_2d/1.16.2-0.tar.gz;
    sha256 = "187901c824e86f552a2412c712120acad3e06efa0a9c8a44bb8c7d6c0832a1a1";
  };

  buildInputs = [ geometry-msgs message-filters tf2-sensor-msgs voxel-grid message-generation tf2-geometry-msgs tf2-ros nav-msgs std-msgs roscpp visualization-msgs laser-geometry cmake-modules pluginlib sensor-msgs rostest tf2 dynamic-reconfigure map-msgs ];
  checkInputs = [ rostest rosbag rosunit map-server ];
  propagatedBuildInputs = [ pluginlib rosconsole sensor-msgs message-filters tf2-ros rostest tf2 nav-msgs voxel-grid laser-geometry visualization-msgs dynamic-reconfigure std-msgs message-runtime roscpp geometry-msgs map-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an implementation of a 2D costmap that takes in sensor
        data from the world, builds a 2D or 3D occupancy grid of the data (depending
        on whether a voxel based implementation is used), and inflates costs in a
        2D costmap based on the occupancy grid and a user specified inflation radius.
        This package also provides support for map_server based initialization of a
        costmap, rolling window based costmaps, and parameter based subscription to
        and configuration of sensor topics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
