
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, geometry-msgs, launch, launch-testing-ament-cmake, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, std-srvs, test-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-nav2-util";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/nav2_util/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "e111d2bfd0ddf1940b50d7bec15434a5a560270d7f8e7da52a67570343c1b08c";
  };

  buildType = "ament_cmake";
  checkInputs = [ action-msgs ament-cmake-gtest ament-lint-auto ament-lint-common launch launch-testing-ament-cmake std-srvs ];
  propagatedBuildInputs = [ action-msgs boost geometry-msgs launch launch-testing-ament-cmake lifecycle-msgs nav-msgs nav2-common nav2-msgs rclcpp rclcpp-action rclcpp-lifecycle test-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
