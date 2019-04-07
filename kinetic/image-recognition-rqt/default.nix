
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, rqt-gui, image-recognition-msgs, image-recognition-util, rospy }:
buildRosPackage {
  pname = "ros-kinetic-image-recognition-rqt";
  version = "0.0.4";

  src = fetchurl {
    url = https://github.com/tue-robotics/image_recognition-release/archive/release/kinetic/image_recognition_rqt/0.0.4-0.tar.gz;
    sha256 = "a56d2d703300accb15861dccee05182931eec249d114560614c9a4d1ef95681c";
  };

  buildInputs = [ rqt-gui-py image-recognition-msgs image-recognition-util rospy rqt-gui ];
  propagatedBuildInputs = [ rqt-gui-py image-recognition-msgs image-recognition-util rospy rqt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The image_recognition_rqt package'';
    #license = lib.licenses.TODO;
  };
}