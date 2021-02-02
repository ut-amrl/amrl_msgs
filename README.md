[![Build Status](https://travis-ci.com/ut-amrl/amrl_msgs.svg?branch=master)](https://travis-ci.com/ut-amrl/amrl_msgs)

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
1. Run `make`. No need to run `catkin_*`, `rosbuild`, `rosbuild`, etc.
1. To use the messages in your own project, in your `CMakeLists.txt` add the following lines:
    ```
    SET(CMAKE_PREFIX_PATH "/ABSOLUTE/GLOBAL/PATH/amrl_msgs/build/devel/share/amrl_msgs/cmake")
    FIND_PACKAGE(amrl_msgs REQUIRED)
    ```