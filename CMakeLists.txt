cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(amrl_msgs)

#######################################
## Find dependencies
#######################################
find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  geometry_msgs
  message_generation
)


#######################################
## Declare Catkin package and installation
#######################################

  ## Generate messages in the 'msg' folder
 add_message_files(
    FILES
    AckermannCurvatureDriveMsg.msg
    ColoredArc2D.msg
    ColoredLine2D.msg
    ColoredPoint2D.msg
    ElevatorCommand.msg
    ElevatorStatus.msg
    ErrorReport.msg
    HumanStateArrayMsg.msg
    HumanStateMsg.msg
    Localization2DMsg.msg
    PathVisualization.msg
    PlanarObjDetection.msg
    Point2D.msg
    Pose2Df.msg
    RobofleetStatus.msg
    RobofleetSubscription.msg
    VisualizationMsg.msg
  )

  ## Generate added messages and services with any dependencies listed here
 generate_messages(
    DEPENDENCIES
    std_msgs
    geometry_msgs
  )

catkin_package(
    CATKIN_DEPENDS ${RUN_DEPENDS}
    DEPENDS
    std_msgs
    geometry_msgs
    message_runtime
    )