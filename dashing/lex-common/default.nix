
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, aws-common, cmake }:
buildRosPackage {
  pname = "ros-dashing-lex-common";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_common-release/archive/release/dashing/lex_common/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ad3f4ad8823285ce0998320ab75819bf5e41dbbdf44055246a99c21089f2f5f4";
  };

  buildType = "cmake";
  buildInputs = [ ros-environment aws-common ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-gmock ];
  propagatedBuildInputs = [ aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Lex Common utilities, intended for use by Lex clients'';
    license = with lib.licenses; [ asl20 ];
  };
}
