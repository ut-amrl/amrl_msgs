[![ROS1 Noetic](https://github.com/ut-amrl/amrl_msgs/actions/workflows/ros1-noetic.yml/badge.svg)](https://github.com/ut-amrl/amrl_msgs/actions/workflows/ros1-noetic.yml)
[![ROS2 Humble](https://github.com/ut-amrl/amrl_msgs/actions/workflows/ros2-humble.yml/badge.svg)](https://github.com/ut-amrl/amrl_msgs/actions/workflows/ros2-humble.yml)

# AMRL Messages

ROS Message definitions used by UT-AMRL projects.

## Dependencies

[ROS](http://wiki.ros.org/ROS/Installation)

## Usage

1. Clone this repository.
1. Add it to your `ROS_PACKAGE_PATH` environment variable:
    ```
    export ROS_PACKAGE_PATH=`pwd`:$ROS_PACKAGE_PATH
    ```
    (Optional, reccomended) Add this to your `.bashrc`
   If you are using ROS2, you can add the following to your `.bashrc`:
    ```
    export AMENT_PREFIX_PATH=`pwd`:$AMENT_PREFIX_PATH
    ```
1. Run `make` and then run `make install`. No need to run `catkin_*`, `rosbuild`, `rosbuild`, etc.
1. To use the messages from your own project, add `amrl_msgs` as a ros
   dependency to your project's `manifest.xml` or `package.xml`.
