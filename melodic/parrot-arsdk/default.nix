
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoconf, catkin, libtool, ffmpeg, automake, unzip, yasm, nasm, curl, zlib, ncurses, avahi }:
buildRosPackage {
  pname = "ros-melodic-parrot-arsdk";
  version = "3.14.1";

  src = fetchurl {
    url = https://github.com/AutonomyLab/parrot_arsdk-release/archive/release/melodic/parrot_arsdk/3.14.1-0.tar.gz;
    sha256 = "7c12a877881ee154fb0899c3b8d365276cb5c7afc319859078e610ec06f66ec1";
  };

  buildInputs = [ autoconf libtool ffmpeg automake unzip yasm nasm curl zlib ncurses avahi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin wrapper for the official ARSDK from Parrot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
