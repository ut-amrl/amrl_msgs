[![Build Status](https://travis-ci.com/ut-amrl/amrl_msgs.svg?branch=master)](https://travis-ci.com/ut-amrl/amrl_msgs)

# AMRL Messages

ROS 2 message and service definitions used by UT-AMRL projects.

## Dependencies

[ROS 2](https://docs.ros.org/en/rolling/Installation.html)

## Usage

1. Create or use an existing ROS 2 workspace.
1. Place this repository under `src/` in that workspace.
1. Build:
    ```bash
    colcon build --packages-select amrl_msgs
    ```
1. Source the workspace:
    ```bash
    source install/setup.bash
    ```
1. In downstream ROS 2 packages, add `amrl_msgs` as a dependency in `package.xml`
    and use `find_package(amrl_msgs REQUIRED)` in CMake.