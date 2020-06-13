
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, python-qt-binding, python3Packages, qt-gui, qt-gui-py-common, rospy, rqt-bag, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-noetic-rqt-robot-monitor";
  version = "0.5.12-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_robot_monitor-release/archive/release/noetic/rqt_robot_monitor/0.5.12-2.tar.gz";
    name = "0.5.12-2.tar.gz";
    sha256 = "696d3422af123fc63c9e9f0b85e30d11c9560617cec7c75bcfd3105012c2ed8d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs python-qt-binding python3Packages.rospkg qt-gui qt-gui-py-common rospy rqt-bag rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''rqt_robot_monitor displays diagnostics_agg topics messages that
   are published by <a href="http://www.ros.org/wiki/diagnostic_aggregator">diagnostic_aggregator</a>.
   rqt_robot_monitor is a direct port to rqt of
   <a href="http://www.ros.org/wiki/robot_monitor">robot_monitor</a>. All
   diagnostics are fall into one of three tree panes depending on the status of
   diagnostics (normal, warning, error/stale). Status are shown in trees to
   represent their hierarchy. Worse status dominates the higher level status.<br/>
   <ul>
    Ex. 'Computer' category has 3 sub devices. 2 are green but 1 is error. Then
        'Computer' becomes error.
   </ul>
  You can look at the detail of each status by double-clicking the tree nodes.<br/>

  Currently re-usable API to other pkgs are not explicitly provided.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
