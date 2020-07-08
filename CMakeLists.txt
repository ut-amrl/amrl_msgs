PROJECT(amrl_msgs)
CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

option(CATKIN_TOOLS_BUILD "Build using catkin tools. Otherwise, rosbuild is uesd" ON)

if(CATKIN_TOOLS_BUILD)
  find_package(catkin REQUIRED
  COMPONENTS
    geometry_msgs
    message_generation
    sensor_msgs
    std_msgs
  )
  add_message_files(
  DIRECTORY msg
  FILES
  AckermannCurvatureDriveMsg.msg
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
    DEPENDENCIES geometry_msgs sensor_msgs std_msgs
  )   
  catkin_package(
    CATKIN_DEPENDS
      geometry_msgs
      message_runtime
      sensor_msgs
      std_msgs
  )

else()

  INCLUDE($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)
  ROSBUILD_INIT()
  SET(ROS_BUILD_STATIC_LIBS true)
  SET(ROS_BUILD_SHARED_LIBS false)

  ROSBUILD_GENMSG()
  ROSBUILD_GENSRV()

endif()
