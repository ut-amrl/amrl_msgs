SHELL = /bin/bash

# Detect old ROS1 (rosbuild) by checking for $ROS_ROOT and the rosbuild.cmake file:
CHECK_ROS1 = $(shell if [ -n "$$ROS_ROOT" ] && [ -f "$$ROS_ROOT/core/rosbuild/rosbuild.cmake" ]; then echo 1; else echo 0; fi)

#acceptable build_types: Release/Debug/Profile
build_type=Release
# build_type=Debug

.SILENT:

all: build build/CMakeLists.txt.copy
	$(info Build_type is [${build_type}])
	$(MAKE) --no-print-directory -C build

install: build/CMakeLists.txt.copy
	if [ "$(CHECK_ROS1)" = "1" ]; then \
	  echo "Detected ROS1 (rosbuild). 'make install' not needed. Just use ROS_PACKAGE_PATH for static data."; \
	else \
	  echo "Detected ROS2 (ament). Installing to ./install ..."; \
	  $(MAKE) --no-print-directory -C build install; \
	fi

clean:
	rm -rf build lib msg_gen src/amrl_msgs

build/CMakeLists.txt.copy: build CMakeLists.txt Makefile msg
	cd build && cmake -DCMAKE_BUILD_TYPE=$(build_type) ..
	cp CMakeLists.txt build/CMakeLists.txt.copy

build:
	mkdir -p build