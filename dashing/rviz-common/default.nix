
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rviz-rendering, ament-cmake, geometry-msgs, ament-cmake-cpplint, yaml-cpp-vendor, ament-cmake-gtest, rclcpp, tinyxml-vendor, tf2-geometry-msgs, ament-cmake-gmock, tf2-ros, urdf, resource-retriever, std-msgs, pluginlib, ament-cmake-uncrustify, sensor-msgs, rviz-assimp-vendor, ament-cmake-cppcheck, rviz-ogre-vendor, tf2, qt5, ament-cmake-lint-cmake }:
buildRosPackage {
  pname = "ros-dashing-rviz-common";
  version = "6.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_common/6.1.4-1.tar.gz";
    name = "6.1.4-1.tar.gz";
    sha256 = "e814715a70af5c9d2122d5782512446c24437ea9debdfa33ec81a1f52d9e9e08";
  };

  buildType = "ament_cmake";
  buildInputs = [ yaml-cpp-vendor rviz-rendering pluginlib tf2-geometry-msgs sensor-msgs rviz-assimp-vendor qt5.qtbase tf2-ros rviz-ogre-vendor tf2 urdf rclcpp tinyxml-vendor resource-retriever std-msgs geometry-msgs ];
  checkInputs = [ ament-cmake-uncrustify ament-cmake-gmock ament-cmake-gtest ament-cmake-cppcheck ament-cmake-lint-cmake ament-cmake-cpplint ];
  propagatedBuildInputs = [ yaml-cpp-vendor rviz-rendering pluginlib tf2-geometry-msgs sensor-msgs rviz-assimp-vendor qt5.qtbase tf2-ros rviz-ogre-vendor tf2 urdf resource-retriever tinyxml-vendor rclcpp std-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common rviz API, used by rviz plugins and applications.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
