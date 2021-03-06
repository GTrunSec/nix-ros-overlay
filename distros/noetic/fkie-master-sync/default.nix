
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fkie-master-discovery, fkie-multimaster-msgs, rosgraph, roslib, rospy }:
buildRosPackage {
  pname = "ros-noetic-fkie-master-sync";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_master_sync/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "bb1af9df36d1f266e91428c0007ddb840a71a7d72a89cf8230a20883b88edef9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ fkie-master-discovery fkie-multimaster-msgs rosgraph roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Synchronize the local ROS master to the remote masters 
     discovered by fkie_master_discovery node. The registration
     of topics and services is only perform by local ROS master.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
