cmake_minimum_required(VERSION 2.8.3)
project(amrl_msgs)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
    std_msgs
    message_generation
)

add_message_files(
    FILES
    Point2D.msg
    ColoredArc2D.msg
    ColoredLine2D.msg
    ColoredPoint2D.msg
    Localization2DMsg.msg
    PathVisualization.msg
    Point2D.msg
    Pose2Df.msg
    RobofleetStatus.msg
    RobofleetSubscription.msg
    VisualizationMsg.msg
)

generate_messages(
    DEPENDENCIES
    std_msgs
)

catkin_package(
    CATKIN_DEPENDS std_msgs message_runtime
  )