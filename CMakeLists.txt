cmake_minimum_required(VERSION 3.8)
project(amrl_msgs)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)

set(msg_files
	"msg/AckermannCurvatureDriveMsg.msg"
	"msg/BBox2DArrayMsg.msg"
	"msg/BBox2DMsg.msg"
	"msg/ColoredArc2D.msg"
	"msg/ColoredLine2D.msg"
	"msg/ColoredPoint2D.msg"
	"msg/ElevatorCommand.msg"
	"msg/ElevatorStatus.msg"
	"msg/ErrorReport.msg"
	"msg/Float32Array2D.msg"
	"msg/HumanStateArrayMsg.msg"
	"msg/HumanStateMsg.msg"
	"msg/Localization2DMsg.msg"
	"msg/PathVisualization.msg"
	"msg/PlanarObjDetection.msg"
	"msg/Point2D.msg"
	"msg/Pose2Df.msg"
	"msg/RobofleetStatus.msg"
	"msg/RobofleetSubscription.msg"
	"msg/VisualizationMsg.msg"
)

set(srv_files
	"srv/ChangeVirtualHomeGraphSrv.srv"
	"srv/DetectVirtualHomeObjectSrv.srv"
	"srv/FindObjectSrv.srv"
	"srv/GetImageAtPoseSrv.srv"
	"srv/GetImageSrv.srv"
	"srv/GetVisibleObjectsSrv.srv"
	"srv/ObjectDetectionSrv.srv"
	"srv/OpenVirtualHomeObjectSrv.srv"
	"srv/PickObjectSrv.srv"
	"srv/RememberSrv.srv"
	"srv/SemanticObjectDetectionSrv.srv"
	"srv/SocialPipsSrv.srv"
	"srv/TaskSrv.srv"
	"srv/VideoCaptionSrv.srv"
)

rosidl_generate_interfaces(${PROJECT_NAME}
	${msg_files}
	${srv_files}
	DEPENDENCIES std_msgs geometry_msgs sensor_msgs
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()