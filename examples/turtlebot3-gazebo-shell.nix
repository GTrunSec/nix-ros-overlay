# Run:
# roslaunch turtlebot3_gazebo turtlebot3_world.launch
# roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch
{ pkgs,
  rosPackages
}:

with rosPackages.melodic;
with pythonPackages;

pkgs.mkShell {
  buildInputs = [
    pkgs.glibcLocales
    (buildEnv { paths = [
      turtlebot3-description
      turtlebot3-teleop
      turtlebot3-gazebo
      gazebo-plugins
      xacro
    ]; })
  ];

  ROS_HOSTNAME = "localhost";
  ROS_MASTER_URI = "http://localhost:11311";
  TURTLEBOT3_MODEL = "burger";
}
