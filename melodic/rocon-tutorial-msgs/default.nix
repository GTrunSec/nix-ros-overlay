
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, rocon-service-pair-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-rocon-tutorial-msgs";
  version = "0.9.0";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/melodic/rocon_tutorial_msgs/0.9.0-0.tar.gz;
    sha256 = "dd66eaad5af5cbccfcd60f6d2fe5152c3b560f2aa87e471da4a195c4f1ba1870";
  };

  buildInputs = [ message-generation rocon-service-pair-msgs ];
  propagatedBuildInputs = [ rocon-service-pair-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by rocon tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
