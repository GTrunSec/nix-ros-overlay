
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake-core, launch-testing, python-cmake-module, ament-cmake-test, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-launch-testing-ament-cmake";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/dashing/launch_testing_ament_cmake/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "13185a67ba347a5432b50fb213bd980a06311dc239aa7637a0db3cd3598f2ca7";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-copyright ament-cmake-pytest ];
  propagatedBuildInputs = [ python-cmake-module ament-cmake-test launch-testing ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''A package providing cmake functions for running launch tests from the build.'';
    license = with lib.licenses; [ asl20 ];
  };
}
