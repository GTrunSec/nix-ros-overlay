
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, cmake, fastcdr, openssl, tinyxml-2 }:
buildRosPackage {
  pname = "ros-dashing-fastrtps";
  version = "1.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastrtps-release/archive/release/dashing/fastrtps/1.8.2-1.tar.gz";
    name = "1.8.2-1.tar.gz";
    sha256 = "59077766b9b801862280e898f06dad701d4b54f0fbf88ac387b725e08acc63df";
  };

  buildType = "cmake";
  buildInputs = [ asio ];
  propagatedBuildInputs = [ fastcdr openssl tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Implementation of RTPS standard.'';
    license = with lib.licenses; [ asl20 ];
  };
}
